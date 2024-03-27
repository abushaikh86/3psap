<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\backend\BinManagement;
use App\Models\backend\Bintype;
use App\Models\backend\Company;
use App\Models\backend\Inventory;
use App\Models\backend\Pricings;
use App\Models\backend\StorageLocations;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Carbon\Carbon;



class InventoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index(Request $request)
    {
        $company_data = Company::first();
        $storage_locations = StorageLocations::pluck('storage_location_name', 'storage_location_id')->all();
        $bin_data = BinManagement::pluck('bin_type', 'bin_id');
        $bin_type = Bintype::whereIn('bin_type_id', $bin_data)->pluck('name', 'bin_type_id');

        // dd(session('fy_year'));
        if ($request->ajax()) {
            $data = Inventory::with('get_warehouse', 'get_bin.get_bin', 'get_unit_price.brand', 'get_unit_price.category', 'get_unit_price.sub_category', 'get_unit_price.variants')
                ->when(session('company_id') != 0 && session('fy_year') != 0, function ($query) {
                    return $query->where(['fy_year' => session('fy_year'), 'company_id' => session('company_id')]);
                })
                ->orderBy('updated_at', 'desc')
                ->get();

            if ($request->filled('date')) {
                $selectedDate = Carbon::parse($request->date)->startOfDay();
                // $selectedDate = Carbon::createFromFormat('d-m-Y', $request->daterange)->startOfDay();

                $data = Inventory::with('get_warehouse', 'get_bin.get_bin', 'get_unit_price.brand', 'get_unit_price.category', 'get_unit_price.sub_category', 'get_unit_price.variants')
                    ->when(session('company_id') != 0 && session('fy_year') != 0, function ($query) {
                        return $query->where(['fy_year' => session('fy_year'), 'company_id' => session('company_id')]);
                    })
                    ->where('qty', '!=', 0)
                    ->whereDate('created_at', $selectedDate)->orderBy('id', 'desc')->get();
            }

            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('warehouse_name', fn ($row) => $row->get_warehouse->storage_location_name)
                ->addColumn('bin_name', fn ($row) => $row->get_bin->get_bin->name)
                ->addColumn('brand_name', fn ($row) => $row->get_unit_price->brand->brand_name ?? '')
                ->addColumn('category_name', fn ($row) => $row->get_unit_price->category->category_name ?? '')
                ->addColumn('sub_category_name', fn ($row) => $row->get_unit_price->sub_category->subcategory_name ?? '')
                ->addColumn('variant_name', fn ($row) => $row->get_unit_price->variants->name ?? '')
                ->addColumn('formatted_created_at', fn ($row) => $row->created_at->format('M Y'))
                ->addColumn('ean_barcode', fn ($row) => $row->get_unit_price->ean_barcode ?? '')
                ->addColumn('product_desc', fn ($row) => $row->get_unit_price->product_desc ?? '')
                ->addColumn('consumer_desc', fn ($row) => $row->get_unit_price->consumer_desc ?? '')
                ->addColumn('unit_case', fn ($row) => $row->get_product->unit_case ?? '')
                ->addColumn('days_remaining', function ($row) {
                    return $this->calculateFreshness($row, 'days');
                })
                ->addColumn('freshness_percentage', function ($row) {
                    return $this->calculateFreshness($row, 'percentage');
                })
                ->make(true);
        }

        return view('backend.inventory.index', compact('company_data', 'storage_locations', 'bin_type'));
    }

    private function calculateFreshness($row, $type)
    {
        $mfgDate = $row->manufacturing_date ? \Carbon\Carbon::parse($row->manufacturing_date) : null;
        $expiryDate = $row->expiry_date ? \Carbon\Carbon::parse($row->expiry_date) : null;

        if ($expiryDate) {
            $expiryDate = \Carbon\Carbon::parse($expiryDate);
            $daysRemaining = now()->diffInDays($expiryDate);
            $total_days = $expiryDate->diffInDays($mfgDate);
            if ($total_days > 0) {
                return $type === 'days' ? $daysRemaining : round(($daysRemaining / $total_days) * 100);
            } else {
                return $type === 'days' ? $daysRemaining : 0; // Return a default value for percentage if total_days is zero
            }
        }

        return $type === 'days' ? 0 : 0; // Return default value if no expiry date
    }
} //end of class

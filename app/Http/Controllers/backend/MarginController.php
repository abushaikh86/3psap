<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\backend\Products;
use App\Models\backend\Brands;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

;


class MarginController extends Controller
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

        // $pricings = Pricings::where('pricing_master_id', $id)->first();
        $brands = Brands::all();
        if ($request->ajax()) {
            return DataTables::of($brands)
                ->addIndexColumn()
                ->addColumn('brand_name', fn ($row) => $row->brand_name)
                // ->addColumn('sub_category.subcategory_name', fn ($row) => $row->sub_category->subcategory_name??'')
                ->addColumn('margin', function ($row) {
                    return  0;
                })
                ->rawColumns(['margin'])
                ->make(true);
        }
        // $pricing_items = PricingItem::where('pricing_master_id', $id)->get();

        return view('backend.margin.index');
    }

   
} //end of class

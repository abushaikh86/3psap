<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\BinManagement;
use App\Models\backend\Bintype;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\Company;
use App\Models\backend\GoodsServiceReceiptsItems;
use App\Models\backend\Gst;
use App\Models\backend\Inventory;
use App\Models\backend\Products;
use App\Models\backend\StorageLocations;
use App\Models\backend\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ReportsController extends Controller
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
    public function reports(Request $request)
    {
        $data = [];

        if ($request->filled('from_date') && $request->filled('to_date')) {
            $fromDate = Carbon::parse($request->from_date)->startOfDay();
            $toDate = Carbon::parse($request->to_date)->endOfDay();

            $data = Transaction::where(['fy_year' => session('fy_year'), 'company_id' => session('company_id')])->whereBetween('created_at', [$fromDate, $toDate])->orderBy('created_at', 'desc')->get();
        }

        $company_data = Company::first();
        return view('backend.reports.inventory', compact('data', 'company_data'));
    }


    public function purchase(Request $request)
    {
        // $data = GoodsServiceReceiptsItems::with('get_goodservice_receipt')->orderby('created_at', 'desc')->get();

        $companyId = session('company_id');
        $currentYear = session('fy_year');

        $data = GoodsServiceReceiptsItems::with('get_goodservice_receipt')
            ->whereHas('get_goodservice_receipt', function ($query) use ($companyId, $currentYear) {
                $query->where('company_id', $companyId)
                    ->where('fy_year', $currentYear);
            })
            ->orderBy('created_at', 'desc')
            ->get();
        // dd($companyId,$currentYear);

        if ($request->filled('from_date') && $request->filled('to_date')) {
            $fromDate = Carbon::parse($request->from_date)->startOfDay();
            $toDate = Carbon::parse($request->to_date)->endOfDay();

            $data = GoodsServiceReceiptsItems::with('get_goodservice_receipt')
                ->whereHas('get_goodservice_receipt', function ($query) use ($companyId, $currentYear) {
                    $query->where('company_id', $companyId)
                        ->where('fy_year', $currentYear);
                })
                ->whereBetween('created_at', [$fromDate, $toDate])
                ->orderBy('created_at', 'desc')
                ->get();
        }

        $company_data = Company::first();
        return view('backend.reports.purchase', compact('data', 'company_data'));
    }

    public function sales()
    {
        $data = Inventory::orderby('updated_at', 'desc')->get();

        return view('backend.reports.sales', compact('data'));
    }
}

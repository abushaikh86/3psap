<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\AdminUsers;
use App\Models\backend\Apinvoice;
use App\Models\backend\Area;
use App\Models\backend\Bankingpayment;
use App\Models\backend\Beat;
use App\Models\backend\BillBooking;
use App\Models\backend\BillBookingItems;
use App\Models\backend\BussinessPartnerBankingDetails;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\Expensemaster;
use App\Models\backend\Financialyear;
use App\Models\backend\GoodsServiceReceipts;
use App\Models\backend\Products;
use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class BankingpaymentController extends Controller
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
        // $details = Bankingpayment::orderby('created_at', 'desc')->get();

        if ($request->ajax()) {
            $bankingpayment = Bankingpayment::with('get_partyname')->orderby('created_at', 'desc')->get();

            return DataTables::of($bankingpayment)
                ->addIndexColumn()
                ->addColumn('action', function ($bankingpayment) {
                    $actionBtn = '<div id="action_buttons">';

                    if (request()->user()->can('Update Banking Payments')) {
                        // dd("yes");
                        $actionBtn .= '<a href="' . route('admin.bankingpayment.edit', ['id' => $bankingpayment->banking_payment_id]) . '
                     " class="btn btn-sm btn-primary" title="Edit"><i class="feather icon-edit"></i></a> ';
                    }
                    if (request()->user()->can('Delete Banking Payments')) {
                        $actionBtn .= '<a href="' . route('admin.bankingpayment.delete', ['id' => $bankingpayment->banking_payment_id]) . '"
                    class="btn btn-sm btn-danger" title="Delete" id="delete_btn" onclick="return confirm(`Are you sure you want to Delete this Entry ?`)">
                    <i class="feather icon-trash"></i></a></div>';
                    }
                    return $actionBtn;
                })
                ->addColumn('new_action', function ($bankingpayment) {
                    $actionBtn = ' <div class="dropdown">
                    <button class="btn btn-sm btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                    aria-expanded="false">Action</button>
                    <ul class="dropdown-menu" id="action_dropdown_menu">';

                    if (request()->user()->can('Update Banking Payments')) {
                        $actionBtn .= ' <li> <a href="' . route('admin.bankingpayment.edit', ['id' => $bankingpayment->banking_payment_id]) . '
                     " class="dropdown-item" id="action_dropdown_item">
                     <span class="badge rounded-pill bg-success">Edit</span></a></li>';
                    }
                    if (request()->user()->can('Delete Banking Payments')) {
                        $actionBtn .= '<li><a href="' . route('admin.bankingpayment.delete', ['id' => $bankingpayment->banking_payment_id]) . '"
                   class="dropdown-item" id="action_dropdown_item" onclick="return confirm(`Are you sure you want to Delete this Entry ?`)">
                  <span class="badge rounded-pill bg-danger">Delete</span></a></li></ul>
                  </div> ';
                    }
                    return $actionBtn;
                })
                ->rawColumns(['new_action', 'action'])
                ->make(true);
        }
        return view('backend.bankingpayment.index');
    }

    // //create new user
    public function create()
    {
        $user_id = Auth()->guard('admin')->user()->admin_user_id;

        $party = BussinessPartnerMaster::with('getpartnertype')->get();

        $party = $party->filter(function ($item) {
            $data = $item->getpartnertype;

            return $data;
        })->mapWithKeys(function ($item) {
            return [$item['business_partner_id'] => $item['bp_name']];
        });

        $user_data = AdminUsers::where('admin_user_id', $user_id)->first();
        $banks = BussinessPartnerBankingDetails::where('bussiness_partner_id', $user_data->company_id)->pluck('bank_name', 'banking_details_id');

        return view('backend.bankingpayment.create', compact('party', 'banks'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'transaction_type' => 'required',
            'overdue_range' => 'required',
            'vendor_id' => 'required',
            'payment_type' => 'required',
            // 'series_no' => 'required',
            // 'doc_no' => 'required',
            'posting_date' => 'required',
        ]);


        $model = new Bankingpayment();
        $bill_booking_item_ids = implode(",", $request->selected_rows);

        $model->bill_booking_item_ids = $bill_booking_item_ids;
        $model->fill($request->all());

         // $moduleName = "Bill Booking";
         $routeName = Route::currentRouteName();
         $moduleName = explode('.', $routeName)[1] ?? null;
         $series_no = get_series_number($moduleName);
         if (empty($series_no)) {
             return redirect()->back()->with(['error' => 'Series Number Is Not Defind For This Module']);
         }
         // set counter
         $financial_year = FinancialYear::where(['year' => session('fy_year')])->first();
         $banking_payment_counter = 0;
         if ($financial_year) {
             $banking_payment_counter = $financial_year->banking_payment_counter + 1;
         }
         $bill_no = $series_no . '-' . $financial_year->year . "-" . $banking_payment_counter;
         $financial_year->banking_payment_counter = $banking_payment_counter;

         $model->fy_year = session('fy_year');
         $model->doc_no = $bill_no;

         $financial_year->save();

        if ($model->save()) {

            //update status of ap and gr
            // dd($request->toArray());
            $bill_booking_item = BillBookingItems::whereIn('bill_booking_item_id', $request->selected_rows)->first();
            $bill_booking = BillBooking::where('bill_booking_id', $bill_booking_item->bill_booking_id)->first();
            if ($bill_booking->type == 'Invoice') {
                $ap_invoice_data = Apinvoice::where('ap_inv_no', $bill_booking_item->invoice_ref_no)->first();
                $ap_invoice_data->status = 'close';
                if ($ap_invoice_data->save()) {
                    $gr_data = GoodsServiceReceipts::where('vendor_inv_no', $ap_invoice_data->vendor_inv_no)->first();
                    $gr_data->status = 'close';
                    $gr_data->save();
                }
            }

            $log = ['module' => 'Banking Payment', 'action' => 'Banking Payment Created', 'description' => 'Banking Payment Created: ' . $request->doc_no];
            captureActivity($log);

            return redirect('/admin/bankingpayment')->with('success', 'New Banking Payment Added');
        }
    }


    //edit details
    public function edit($id)
    {
        $model = Bankingpayment::where('banking_payment_id', $id)->first();
        $user_id = Auth()->guard('admin')->user()->admin_user_id;

        $party = BussinessPartnerMaster::with('getpartnertype')->get();

        $party = $party->filter(function ($item) {
            $data = $item->getpartnertype;

            return $data;
        })->mapWithKeys(function ($item) {
            return [$item['business_partner_id'] => $item['bp_name']];
        });


        $user_data = AdminUsers::where('admin_user_id', $user_id)->first();
        $banks = BussinessPartnerBankingDetails::where('bussiness_partner_id', $user_data->company_id)->pluck('bank_name', 'banking_details_id');


        return view('backend.bankingpayment.edit', compact('model', 'party', 'banks'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'transaction_type' => 'required',
            'overdue_range' => 'required',
            'vendor_id' => 'required',
            'payment_type' => 'required',
            // 'series_no' => 'required',
            // 'doc_no' => 'required',
            'posting_date' => 'required',
        ]);

        // dd($request->all());

        $banking_payment_id = $request->banking_payment_id;
        $model = Bankingpayment::where('banking_payment_id', $banking_payment_id)->first();
        $bill_booking_item_ids = implode(",", $request->selected_rows);
        $model->bill_booking_item_ids = $bill_booking_item_ids;
        $model->fill($request->all());
        if ($model->save()) {

            if ($model->getChanges()) {
                $new_changes = $model->getChanges();
                $log = ['module' => 'Banking Payment', 'action' => 'Banking Payment Updated', 'description' => 'Banking Payment Updated: Name=>' . $model->doc_no];
                captureActivityupdate($new_changes, $log);
            }

            return redirect('/admin/bankingpayment')->with('success', 'Banking Payment Updated');
        }
    }





    //function for delete address
    public function destroyBankingpayment($id)
    {
        $model = Bankingpayment::where('banking_payment_id', $id)->first();
        $model->delete();


        $log = ['module' => 'Banking Payment', 'action' => 'Banking Payment Deleted', 'description' => 'Banking Payment Deleted: ' . $model->doc_no];
        captureActivity($log);

        return redirect()->route('admin.bankingpayment')->with('success', 'Banking Payment Deleted Successfully');
    }
} //end of class

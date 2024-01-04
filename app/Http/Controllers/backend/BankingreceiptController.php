<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\AdminUsers;
use App\Models\backend\Area;
use App\Models\backend\Beat;
use App\Models\backend\BussinessPartnerBankingDetails;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\Products;
use App\Models\backend\Route;
use Illuminate\Http\Request;

class BankingreceiptController extends Controller
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
    public function index()
    {
        return view('backend.bankingreceipt.index');
    }

    // //create new user
    public function create()
    {
        $user_id = Auth()->guard('admin')->user()->admin_user_id;

        $party = BussinessPartnerMaster::with('getpartnertype')->get();

        $party = $party->filter(function ($item) {
            $data = $item->getpartnertypecustomer;

            return $data;
        })->mapWithKeys(function ($item) {
            return [$item['business_partner_id'] => $item['bp_name']];
        });

        $products_data = Products::pluck('item_code','item_type_id');

        $area_data = Area::pluck('area_name', 'area_id');

        $user_data = AdminUsers::where('admin_user_id',$user_id)->first();
        $banks = BussinessPartnerBankingDetails::where('bussiness_partner_id',$user_data->company_id)->pluck('bank_name','banking_details_id');


        return view('backend.bankingreceipt.create', compact('area_data','party','products_data','banks'));
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'area_id' => 'required',
            'route_id' => 'required',
            'beat_number' => 'required',
            'beat_name' => 'required',
        ]);

        $model = new Beat;
        $model->fill($request->all());
        if ($model->save()) {
            // dd('sdgdfg');
            return redirect('/admin/beatcalender')->with('success', 'New Beat Added');
        }
    }


    //edit details
    public function edit($id)
    {
        $model = Beat::where('beat_id', $id)->first();
        $area_data = Area::pluck('area_name', 'area_id');
        return view('backend.bankingpayment.edit', compact('model', 'area_data'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'area_id' => 'required',
            'route_id' => 'required',
            'beat_number' => 'required',
            'beat_name' => 'required',
        ]);

        $model = Beat::where('beat_id', $request->beat_id)->first();

        $model->fill($request->all());
        if ($model->save()) {
            // dd('sdgdfg');
            return redirect('/admin/bankingpayment')->with('success', 'Beat Updated');
        }
    }





    //function for delete address
    public function destroyBeat($id)
    {
        $model = Beat::where('beat_id', $id)->first();
        $model->delete();
        return redirect()->route('admin.bankingpayment')->with('success', 'Beat Deleted Successfully');
    }
} //end of class

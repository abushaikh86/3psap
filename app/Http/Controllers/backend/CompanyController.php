<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Models\backend\AdminUsers;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Validation\Rule;
use Spatie\Permission\Models\Role;
use App\Models\backend\State;
use App\Models\backend\Company;
use Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class CompanyController extends Controller
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
    $controllerName = class_basename(request()->route()->getAction('controller'));
    session(['previous_controller' => $controllerName]);

    $company = Company::orderby('company_id', 'desc')->get();
    return view('backend.company.index', compact('company'));
  }

  /**
   * Show the form for creating a new resource.
   *
   * @return Response
   */
  public function create()
  {
    $roles = Role::pluck('name', 'id')->all();
    $states = State::all();
    $states = collect($states)->mapWithKeys(function ($item, $key) {
      return [$item['name'] => $item['name']];
    });
    return view('backend.company.create', compact('roles', 'states'));
  }

  /**
   * Store a newly created resource in storage.
   *
   * @return Response
   */
  public function store(Request $request)
  {

    $validator = Validator::make($request->all(), [
      'name' => 'required',
      'email' => 'email|required',
      'mobile_no' => 'digits:10|required',
      'address_line1' => 'required',
      'address_line2' => 'required',
      'landmark' => 'required',
      'city' => 'required',
      'country' => 'required',
      'state' => 'required',
      'district' => 'required',
      'pincode' => 'digits:6|required',
      'gstno' => 'required',
      'db_type' => 'required',
      'ay_type' => 'required',


    ]);


    if ($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput();
    }
    $company = new Company();

    if ($company->fill($request->all())->save()) {
   
      $model = Company::where('company_id', $company->company_id)->first();

      if ($model->getChanges()) {
        $new_changes = $model->getChanges();
        $log = ['module' => 'Company Master', 'action' => 'Company Updated', 'description' => 'Company Updated: Name=>' . $model->name];
        captureActivityupdate($new_changes, $log);
      }

      Session::flash('message', 'Company Added Successfully!');
      Session::flash('status', 'success');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
    }



    return redirect('admin/company');
  }

  /**
   * Display the specified resource.
   *
   * @param  int  $id
   *
   * @return Response
   */


  /**
   * Show the form for editing the specified resource.
   *
   * @param  int  $id
   *
   * @return Response
   */
  public function edit($id)
  {
    $company = Company::findOrFail($id);
    $roles = Role::pluck('name', 'id')->all();
    $states = State::all();
    $states = collect($states)->mapWithKeys(function ($item, $key) {
      return [$item['name'] => $item['name']];
    });
    return view('backend.company.edit', compact('company', 'roles', 'states'));
  }

  /**
   * Update the specified resource in storage.
   *
   * @param  int  $id
   *
   * @return Response
   */
  public function update(Request $request)
  {
    // dd($request->all());
    $id = $request->input('company_id');
    // $this->validate($request, []);
    $validator = Validator::make($request->all(), [
      'name' => 'required',
      'email' => 'email|required',
      'mobile_no' => 'digits:10|required',
      'address_line1' => 'required',
      'address_line2' => 'required',
      'landmark' => 'required',
      'city' => 'required',
      'country' => 'required',
      'state' => 'required',
      'district' => 'required',
      'pincode' => 'digits:6|required',
      'gstno' => 'required',
      'db_type' => 'required',
      'ay_type' => 'required',


    ]);


    if ($validator->fails()) {
      return redirect()->back()->withErrors($validator)->withInput();
    }

    $company = Company::findOrFail($id);
    if ($company->update($request->all())) {
      $logo = Company::upload_logo($request);
      $signature = Company::upload_signature($request);
      if ($logo == '') {
        $logo = $company->logo;
      }
      if ($signature == '') {
        $signature = $company->signature;
      }
      Company::where('company_id', $company->company_id)->update(['logo' => $logo, 'signature' => $signature]);
      Session::flash('success', 'Company Updated Successfully!');
      Session::flash('status', 'success');
    } else {
      Session::flash('error', 'Something went wrong!');
      Session::flash('status', 'error');
    }


    return redirect('admin/company');
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  int  $id
   *
   * @return Response
   */
  public function destroy($id)
  {
    $company = Company::findOrFail($id);

    if ($company->delete()) {
      Session::flash('message', 'Company Deleted Successfully!');
      Session::flash('status', 'success');
    } else {
      Session::flash('message', 'Something went wrong!');
      Session::flash('status', 'error');
    }

    return redirect('admin/company');
  }
}

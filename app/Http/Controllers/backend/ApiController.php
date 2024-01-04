<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\AdminUsers;
use App\Models\backend\Area;
use App\Models\backend\BeatCalender;
use App\Models\backend\Company;
use App\Models\backend\Outlet;
use App\Models\backend\OrderBooking;
use Illuminate\Http\Request;

use App\Models\backend\SeriesMaster;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use App\Models\backend\TrafficSource;
use Carbon\Carbon;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash as FacadesHash;

class ApiController extends Controller
{

  public function get_outlets()
  {

    $details = Outlet::get();
    // return response()->json($details);

    $result_data['details'] = $details;
    return json_encode($result_data);
  }

  public function get_dashboard_data()
  {

    $outlets = count(Outlet::get());
    $order_bookings = count(OrderBooking::get());
    // return response()->json($details);

    $result_data['outlets'] = $outlets;
    $result_data['order_bookings'] = $order_bookings;
    return json_encode($result_data);
  }

  public function get_user_data()
  {

    $user = AdminUsers::where('admin_user_id', $_REQUEST['user_id'])->first();

    $result_data['uer'] = $user;
    return json_encode($result_data);
  }



  // //create new user
  public function createOutlet($user_id)
  {
    if (!empty($user_id)) {

      $area_data = Area::pluck('area_name', 'area_id')->toArray();
      $role_data_execu = Role::where('name', 'Sales Officer')->pluck('id')->toArray();
      $sales_execu_data = AdminUsers::whereIn('role', $role_data_execu)->get()->pluck('full_name', 'admin_user_id')->toArray();

      $rawData = DB::select("SELECT CONCAT(first_name, ' ', last_name) as full_name, admin_user_id FROM admin_users WHERE admin_user_id = ?", [$user_id]);


      // Convert the raw data to a pluck-style array
      $salesman = collect($rawData)->mapWithKeys(function ($item) {
        return [$item->admin_user_id => $item->full_name];
      });
      $salesman = $salesman->toArray();



      $role_data_ase = Role::where('id', 13)->pluck('id')->toArray();
      $ase_data = AdminUsers::whereIn('role', $role_data_ase)->get()->pluck('full_name', 'admin_user_id');
      $ase_data = $ase_data->toArray();

      $role_data_asm = Role::where('id', 14)->pluck('id')->toArray();
      $asm_data = AdminUsers::whereIn('role', $role_data_asm)->get()->pluck('full_name', 'admin_user_id');
      $asm_data = $asm_data->toArray();

      // dd($area_data,$sales_execu_data,$salesman,$ase_data,$asm_data);


      return view('backend.outlet.create', compact('area_data', 'sales_execu_data', 'salesman', 'ase_data', 'asm_data'));
    }
  }

  public function updateOutlet($user_id,$id)
  {
    if (!empty($user_id)) {

      $model = Outlet::where('id', $id)->first();


      $area_data = Area::pluck('area_name', 'area_id')->toArray();
      $role_data_execu = Role::where('name', 'Sales Officer')->pluck('id')->toArray();
      $sales_execu_data = AdminUsers::whereIn('role', $role_data_execu)->get()->pluck('full_name', 'admin_user_id')->toArray();

      $rawData = DB::select("SELECT CONCAT(first_name, ' ', last_name) as full_name, admin_user_id FROM admin_users WHERE admin_user_id = ?", [$user_id]);


      // Convert the raw data to a pluck-style array
      $salesman = collect($rawData)->mapWithKeys(function ($item) {
        return [$item->admin_user_id => $item->full_name];
      });
      $salesman = $salesman->toArray();



      $role_data_ase = Role::where('id', 13)->pluck('id')->toArray();
      $ase_data = AdminUsers::whereIn('role', $role_data_ase)->get()->pluck('full_name', 'admin_user_id');
      $ase_data = $ase_data->toArray();

      $role_data_asm = Role::where('id', 14)->pluck('id')->toArray();
      $asm_data = AdminUsers::whereIn('role', $role_data_asm)->get()->pluck('full_name', 'admin_user_id');
      $asm_data = $asm_data->toArray();

      // dd($area_data,$sales_execu_data,$salesman,$ase_data,$asm_data);


      return view('backend.outlet.edit', compact('model','area_data', 'sales_execu_data', 'salesman', 'ase_data', 'asm_data'));
    }
  }


  public function store(Request $request)
  {
    // dd($request->all());

    $request->validate([
      'outlet_name' => 'required',
      'building_no_name' => 'required',
      'street_name' => 'required',
      'landmark' => 'required',
      'country' => 'required',
      'state' => 'required',
      'district' => 'required',
      'city' => 'required',
      'pin_code' => 'required|numeric',
      'phone' => 'required|numeric',
      'salesman' => 'required',
      'area_id' => 'required',
      'route_id' => 'required',
      'beat_id' => 'required',
      'beat_day' => 'required',
      'sales_execu' => 'required',
      'ase' => 'required',
      'asm' => 'required',
    ]);


    // return response()->json($request);
    $model = new Outlet();
    $beat_days = implode(",", $request->beat_day);

    $model->fill($request->except('beat_day'));
    unset($model->beat_day);
    $model->beat_day = $beat_days;

    if ($model->save()) {

      // $log = ['module' => 'Outlet', 'action' => 'Outlet Created', 'description' => 'Outlet Created: ' . $request->outlet_name];
      // captureActivity($log);

      return response()->json(['model' => $model, 'message' => 'New Outlet Added']);

      // return redirect('/admin/outlet')->with('success', 'New Outlet Added');
    }
  }


  //edit details
  public function edit($id)
  {
    $model = Outlet::where('id', $id)->first();

    $area_data = Area::pluck('area_name', 'area_id');
    $role_data_execu = Role::where('name', 'Sales Officer')->pluck('id')->toArray();
    $sales_execu_data = AdminUsers::whereIn('role', $role_data_execu)->get()->pluck('full_name', 'admin_user_id');

    $rawData = DB::select("SELECT CONCAT(first_name, ' ', last_name) as full_name, admin_user_id FROM admin_users WHERE admin_user_id = ?", [Auth::user()->admin_user_id]);

    // Convert the raw data to a pluck-style array
    $salesman = collect($rawData)->mapWithKeys(function ($item) {
      return [$item->admin_user_id => $item->full_name];
    });

    $role_data_ase = Role::where('name', 'ASE')->pluck('id')->toArray();
    $ase_data = AdminUsers::whereIn('role', $role_data_ase)->get()->pluck('full_name', 'admin_user_id');

    $role_data_asm = Role::where('name', 'ASM')->pluck('id')->toArray();
    $asm_data = AdminUsers::whereIn('role', $role_data_asm)->get()->pluck('full_name', 'admin_user_id');
    return view('backend.outlet.edit', compact('model', 'area_data', 'sales_execu_data', 'salesman', 'ase_data', 'asm_data'));
  }

  public function update(Request $request)
  {

    $request->validate([
      'outlet_name' => 'required',
      'building_no_name' => 'required',
      'street_name' => 'required',
      'landmark' => 'required',
      'country' => 'required',
      'state' => 'required',
      'district' => 'required',
      'city' => 'required',
      'pin_code' => 'required|numeric',
      'phone' => 'required|numeric',
      'salesman' => 'required',
      'area_id' => 'required',
      'route_id' => 'required',
      'beat_id' => 'required',
      'beat_day' => 'required',
      'sales_execu' => 'required',
      'ase' => 'required',
      'asm' => 'required',
    ]);


    $model = Outlet::where('id', $request->id)->first();

    $beat_days = implode(",", $request->beat_day);
    $model->fill($request->except('beat_day'));
    unset($model->beat_day);
    $model->beat_day = $beat_days;
    if ($model->save()) {


      // if ($model->getChanges()) {
      //     $new_changes = $model->getChanges();
      //     $log = ['module' => 'Outlet', 'action' => 'Outlet Updated', 'description' => 'Outlet Updated: Name=>' . $model->series_number];
      //     captureActivityupdate($new_changes, $log);
      // }
      return response()->json(['model' => $model, 'message' => 'Outlet Updated']);

      // dd('sdgdfg');
      // return redirect('/admin/outlet')->with('success', 'Outlet Updated');
    }
  }


  //function for delete address
  public function destroyoutlet($id)
  {

    // return $id;

    $model = Outlet::find($id);
    $model->delete();

    // $log = ['module' => 'Outlet', 'action' => 'Outlet Deleted', 'description' => 'Outlet Deleted: ' . $model->series_number];
    // captureActivity($log);

    return response()->json(['model' => $model, 'message' => 'Outlet Deleted Successfully']);

    // return redirect(url()->previous())->with('success', 'Outlet Deleted Successfully');
  }

  public function get_companies()
  {
    $comapny_data = Company::get();

    return response()->json($comapny_data);
  }


  public function login()
  {


    // Attempt to log the user in
    if (Auth::guard('admin')->attempt(['email' => $_REQUEST['email'], 'password' => $_REQUEST['password'], 'account_status' => 1])) {
      // if successful, then redirect to their intended location
      // return redirect()->back();
      // dd(Auth()->guard('admin')->user());
      if (isset(Auth()->guard('admin')->user()->admin_user_id)) {
        // dd(Auth()->guard('admin')->user());
        if (Auth()->guard('admin')->user()->account_status == 0) {
          Auth::guard('admin')->logout();
          //   return back()->withErrors([
          //     'message' => 'Your account has been deactivated, Please contact 3P team to reactivate your account.'
          //   ]);
          return json_encode(['error' => 'Your account has been deactivated, Please contact 3P team to reactivate your account']);
        }
      }

      if (Auth()->guard('admin')->user()->company_id  != null  && Auth()->guard('admin')->user()->company_id != $_REQUEST['company_id']) {
        Auth::guard('admin')->logout();
        // return back()->withErrors([
        //   'message' => 'This user belongs to some other company'
        // ]);
        return json_encode(['error' => 'This user belongs to some other company']);
      }



      $user_ip_address = $_SERVER['REMOTE_ADDR'];
      $user_agent = $_SERVER['HTTP_USER_AGENT'];
      $user_os = $this->actionGetOS();
      $browser = $this->getBrowser();
      if (preg_match('/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i', $user_agent) || preg_match('/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i', substr($user_agent, 0, 4))) {
        $device = 'mobile';
      } else {
        $device = 'desktop';
      }
      // dd(Auth()->guard('admin')->user()->admin_user_id);
      $user_id = Auth()->guard('admin')->user()->admin_user_id;
      $email = Auth()->guard('admin')->user()->email;

      // if(Auth()->guard('admin')->user()->role != 17 && empty($request->company_id)){
      //   Auth::guard('admin')->logout();
      //   return back()->withErrors([
      //     'message' => 'Comapny is Required'
      //   ]);
      // }


      $current_user = new TrafficSource();
      $current_user->REMOTE_ADDR = $user_ip_address;
      $current_user->HTTP_USER_AGENT = $user_agent;
      $current_user->user_os = $user_os;
      $current_user->device = $device;
      $current_user->browser = $browser;
      $current_user->email = $email;
      $current_user->id = $user_id;
      $current_user->traffic_source = "email";


      $current_user->save();

      $company = Company::where('company_id', $_REQUEST['company_id'])->first();

      if (!empty($company)) {
        if ($company->ay_type == 'fi_year') {
          $currentDate = Carbon::now();
          $startOfYear = Carbon::create($currentDate->year, 4, 1);
          $endOfYear = Carbon::create($currentDate->year + 1, 3, 31);

          if ($currentDate->between($startOfYear, $endOfYear)) {
            $financialYear = $currentDate->year . '-' . ($currentDate->year + 1);
          } else {
            $financialYear = ($currentDate->year - 1) . '-' . $currentDate->year;
          }
        } elseif ($company->ay_type == 'cal_year') {
          $financialYear = Carbon::now()->year . '-' . Carbon::now()->year;
        } elseif ($company->ay_type == 'cust_year') {
          $start_date = Carbon::createFromFormat('Y-m-d', $company->ac_start_date);
          $end_date = Carbon::createFromFormat('Y-m-d', $company->ac_end_date);

          if (Carbon::now()->between($start_date, $end_date)) {
            $financialYear = $start_date->format('Y') . '-' . $end_date->format('Y');
          } else {
            $financialYear = $end_date->format('Y') . '-' . Carbon::now()->year + 1;
          }
        }
      } else {
        $currentDate = Carbon::now();
        $startOfYear = Carbon::create($currentDate->year, 4, 1);
        $endOfYear = Carbon::create($currentDate->year + 1, 3, 31);

        if ($currentDate->between($startOfYear, $endOfYear)) {
          $financialYear = $currentDate->year . '-' . ($currentDate->year + 1);
        } else {
          $financialYear = ($currentDate->year - 1) . '-' . $currentDate->year;
        }
      }

      // dd('sdd');
      Session::put('company_id', $_REQUEST['company_id'] ?? '');
      Session::put('fy_year', $financialYear);

      $result_data['user_id'] = $user_id;
      $result_data['company_id'] = $_REQUEST['company_id'];
      $result_data['fy_year'] = $financialYear;
      $result_data['success'] = "login success";

      //   $result_data = $result_data->toArray();

      return json_encode($result_data);

      //   return redirect()->intended(route('admin.dashboard'));

      // return redirect()->intended(url()->previous());
    } else {
      //   return back()->withErrors([
      //     'message' => 'The email or password is incorrect, please try again'
      //   ]);
      return json_encode(['error' => 'The email or password is incorrect, please try again']);
    }
  }

  public function updatePassword()
  {

    $data = AdminUsers::where('email', $_REQUEST['email'])->first();
    // dd($data->toArray());
    if (count($data->toArray()) > 0) {
      if (FacadesHash::check($_REQUEST['current_password'], $data->password)) {
        // dd('Password matches');
        // dd($request->new_password);
        $data->password = $_REQUEST['new_password'];
        if ($data->save()) {
          // dd('success');

          // Activity Log
          // $log = ['module' => 'Change Password', 'action' => 'Change Password', 'description' => 'Account Password Changed '];
          // captureActivity($log);

          // return redirect()->back()->with('success', 'Password Has Been Updated');
          return json_encode(['success' => 'Password Has Been Updated']);
        } else {
          // dd('failure');
          // return redirect()->back()->with('error', 'Unable to change the password');
          return json_encode(['error' => 'Unable to change the password']);
        }
      } else {
        // dd("Password doesn't match");
        // return redirect()->route('admin.change_password')->with('error', "Password doesn't match");
        return json_encode(['error' => "Password doesn't match"]);
      }
    }
  }














  // by usama
  public function actionGetOS()
  {
    $user_agent = $_SERVER['HTTP_USER_AGENT'];
    $os_platform  = "Unknown OS Platform";
    $os_array     = array(
      '/windows nt 10/i'      =>  'Windows 10',
      '/windows nt 6.3/i'     =>  'Windows 8.1',
      '/windows nt 6.2/i'     =>  'Windows 8',
      '/windows nt 6.1/i'     =>  'Windows 7',
      '/windows nt 6.0/i'     =>  'Windows Vista',
      '/windows nt 5.2/i'     =>  'Windows Server 2003/XP x64',
      '/windows nt 5.1/i'     =>  'Windows XP',
      '/windows xp/i'         =>  'Windows XP',
      '/windows nt 5.0/i'     =>  'Windows 2000',
      '/windows me/i'         =>  'Windows ME',
      '/win98/i'              =>  'Windows 98',
      '/win95/i'              =>  'Windows 95',
      '/win16/i'              =>  'Windows 3.11',
      '/macintosh|mac os x/i' =>  'Mac OS X',
      '/mac_powerpc/i'        =>  'Mac OS 9',
      '/linux/i'              =>  'Linux',
      '/ubuntu/i'             =>  'Ubuntu',
      '/iphone/i'             =>  'iPhone',
      '/ipod/i'               =>  'iPod',
      '/ipad/i'               =>  'iPad',
      '/android/i'            =>  'Android',
      '/blackberry/i'         =>  'BlackBerry',
      '/webos/i'              =>  'Mobile'
    );

    foreach ($os_array as $regex => $value)
      if (preg_match($regex, $user_agent))
        $os_platform = $value;

    return $os_platform;
  }

  function getBrowser()
  {
    $user_agent = $_SERVER['HTTP_USER_AGENT'];
    // dd($user_agent);

    $browser        = "Unknow Browser";
    $browser_array = array(
      '/msie/i'       =>  'Internet Explorer',
      '/firefox/i'    =>  'Firefox',
      '/opera|OPR/i'  =>  'Opera',
      '/edg/i'        =>  'Microsoft Edge',
      '/safari/i'     =>  'Safari',
      '/chrome/i'     =>  'Chrome',
      '/edge/i'       =>  'Edge',
      '/netscape/i'   =>  'Netscape',
      '/maxthon/i'    =>  'Maxthon',
      '/konqueror/i'  =>  'Konqueror',
      '/mobile/i'     =>  'Mobile Browser'
    );

    foreach ($browser_array as $regex => $value) {
      if (preg_match($regex, $user_agent)) {
        $browser = $value;
        break;
      }
    }
    return $browser;
  }
} //end of class

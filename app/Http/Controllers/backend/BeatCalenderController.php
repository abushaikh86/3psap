<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\AdminUsers;
use App\Models\backend\Area;
use App\Models\backend\Beat;
use App\Models\backend\BeatCalender;
use App\Models\backend\InternalUser;
use App\Models\backend\Outlet;
use App\Models\backend\Route;
use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Yajra\DataTables\Facades\DataTables;

class BeatCalenderController extends Controller
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

        $beats = Beat::pluck('beat_name', 'beat_id');
        $details = BeatCalender::get();
        $all_data = getCommonArrays();


        if ($request->ajax()) {
            $data = BeatCalender::with('get_beat')->get();
            // dd($purchaseorder);

            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {
                    $actionBtn = '<div id="action_buttons">';


                    // if (request()->user()->can('Update Purchase Order') && $purchaseorder->status == 'open') {
                    // dd("yes");
                    $actionBtn .= '<a href="' . route('admin.beatcalender.edit', ['id' => $data->beat_cal_id]) . '
                     " class="btn btn-sm btn-primary" title="Edit"><i class="feather icon-edit"></i></a> ';
                    // }
                    // if (request()->user()->can('Delete Purchase Order')) {
                    $actionBtn .= '<a href="' . route('admin.beatcalender.delete', ['id' => $data->beat_cal_id]) . '"
                    class="btn btn-sm btn-danger" title="Delete" id="delete_btn" onclick="return confirm(`Are you sure you want to Delete this Entry ?`)">
                    <i class="feather icon-trash"></i></a></div>';
                    // }
                    return $actionBtn;
                })

                ->rawColumns(['action'])
                ->make(true);
        }

        return view('backend.beatcalender.index', compact('all_data', 'details', 'beats'));
    }

    // //create new user
    public function create()
    {
        // $area_data = Area::pluck('area_name', 'area_id');
        $outlets = Outlet::pluck('outlet_name', 'id');
        $beats = Beat::pluck('beat_name', 'beat_id');
        // dd($outlets);
        $role_data = Role::where('id', 10)->pluck('id')->toArray();
        $all_data = getCommonArrays();
        // $sales_execu_data = AdminUsers::whereIn('role', $role_data)->get()->pluck('full_name', 'admin_user_id');
        return view('backend.beatcalender.create', compact('all_data', 'outlets', 'beats'));
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([

            'beat_id' => 'required',
            'beat_week' => 'required',
            'beat_day' => 'required',
            'beat_month' => 'required',
            'beat_year' => 'required',
        ]);

        $beat_validate = BeatCalender::where(['beat_id' => $request->beat_id, 'beat_day' => $request->beat_day, 'beat_week' => $request->beat_week, 'beat_month' => $request->beat_month, 'beat_year' => $request->beat_year])->first();

        if (!empty($beat_validate)) {
            return redirect()->back()->with('error', 'This beat is already given in this week for this month');
        }

        $model = new BeatCalender();
        $model->fill($request->all());
        // $model->outlet = $outlet_data;
        // $model->beat_day = $days_data;
        if ($model->save()) {

            $log = ['module' => 'BeatCalender Master', 'action' => 'BeatCalender Created', 'description' => 'BeatCalender Created: ' . $request->salesman];
            captureActivity($log);

            // dd('sdgdfg');
            return redirect('/admin/beatcalender')->with('success', 'New BeatCalender Added');
        }
    }


    //edit details
    public function edit($id)
    {
        $role_data = Role::where('name', 'Sales Officer')->pluck('id')->toArray();
        // $sales_execu_data = AdminUsers::whereIn('role', $role_data)->get()->pluck('full_name', 'admin_user_id');
        $model = BeatCalender::where('beat_cal_id', $id)->first();
        // $area_data = Area::pluck('area_name', 'area_id');
        $beats = Beat::pluck('beat_name', 'beat_id');
        $all_data = getCommonArrays();


        return view('backend.beatcalender.edit', compact('all_data', 'model', 'beats'));
    }

    public function update(Request $request)
    {
        $request->validate([

            'beat_id' => 'required',
            'beat_week' => 'required',
            'beat_day' => 'required',
            'beat_month' => 'required',
            'beat_year' => 'required',
        ]);



        $model = BeatCalender::where('beat_cal_id', $request->beat_cal_id)->first();
        $model->fill($request->all());
        // $model->outlet = $outlet_data;
        // $model->beat_day = $days_data;
        if ($model->save()) {

            if ($model->getChanges()) {
                $new_changes = $model->getChanges();
                $log = ['module' => 'BeatCalender Master', 'action' => 'BeatCalender Updated', 'description' => 'BeatCalender Updated: Name=>' . $model->salesman];
                captureActivityupdate($new_changes, $log);
            }

            // dd('sdgdfg');
            return redirect('/admin/beatcalender')->with('success', 'BeatCalender Updated');
        }
    }





    //function for delete address
    public function destroyBeatCalender($id)
    {
        $model = BeatCalender::where('beat_cal_id', $id)->first();
        $model->delete();

        $log = ['module' => 'BeatCalender Master', 'action' => 'BeatCalender Deleted', 'description' => 'BeatCalender Deleted: ' . $model->salesman];
        captureActivity($log);

        return redirect()->route('admin.beatcalender')->with('success', 'BeatCalender Deleted Successfully');
    }
} //end of class

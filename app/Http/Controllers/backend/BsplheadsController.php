<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\AdminUsers;
use App\Models\backend\Area;
use App\Models\backend\Bsplcategory;
use App\Models\backend\Bsplheads;
use App\Models\backend\Bsplsubcategory;
use Illuminate\Http\Request;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\BussinessMasterType;
use App\Models\backend\BussinessPartnerOrganizationType;
use App\Models\backend\TermPayment;
use App\Models\backend\BussinessPartnerAddress;
use App\Models\backend\BussinessPartnerContactDetails;
use App\Models\backend\BussinessPartnerBankingDetails;
use App\Models\backend\BusinessPartnerCategory;
use Illuminate\Support\Facades\DB;

class BsplheadsController extends Controller
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
        // $all_data = DB::table('bspl_heads')
        // ->join('bspl_cateogry', 'bspl_cateogry.bsplheads_id', '=', 'bspl_heads.bsplheads_id')
        // ->join('bspl_sub_cateogry', 'bspl_sub_cateogry.bsplcat_id', '=', 'bspl_cateogry.bsplcat_id')
        // ->join('bspl_type', 'bspl_type.bsplsubcat_id', '=', 'bspl_sub_cateogry.bsplsubcat_id')
        // ->where('bspl_heads.bsplheads_id', '=', 5)
        // ->get();

        // dd($all_data);

        $details = Bsplheads::get();
        // dd($details);
        return view('backend.bsplheads.index', compact('details'));
    }

    // //create new user
    public function create()
    {
        return view('backend.bsplheads.create');
    }

    public function store(Request $request)
    {

        $request->validate([
            'bspl_heads_name' => 'required',
        ]);

        $model = new Bsplheads;
        $model->fill($request->all());

        if ($model->save()) {

            $log = ['module' => 'BSPL Head Master', 'action' => 'BSPL Head Created', 'description' => 'BSPL Head Created: ' . $request->bspl_heads_name];
            captureActivity($log);

            return redirect('/admin/bsplheads')->with('success', 'New BSPL Head Added');
        }
    }




    //edit details
    public function edit($id)
    {
        $model = Bsplheads::where('bsplheads_id', $id)->first();
        return view('backend.bsplheads.edit', compact('model'));
    }

    public function update(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'bspl_heads_name' => 'required',
        ]);;
        $model = Bsplheads::where('bsplheads_id', $request->bsplheads_id)->first();

        $model->fill($request->all());
        if ($model->save()) {

            if ($model->getChanges()) {
                $new_changes = $model->getChanges();
                $log = ['module' => 'BSPL Head Master', 'action' => 'BSPL Head Updated', 'description' => 'BSPL Head Updated: Name=>' . $model->bspl_heads_name];
                captureActivityupdate($new_changes, $log);
            }

            // dd('sdgdfg');
            return redirect('/admin/bsplheads')->with('success', 'BSPL Head Updated');
        }
    }





    //function for delete address
    public function destroyBsplHeads($id)
    {

        $model = Bsplheads::find($id);

        foreach ($model->get_all_cat_data as $category) {
            foreach ($category->get_all_subcat_data as $sub_category) {
                $sub_category->bspl_type->each->delete();
            }
            $category->get_all_subcat_data->each->delete();
        }
        $model->get_all_cat_data->each->delete();
        $model->delete();


        $log = ['module' => 'BSPL Head Master', 'action' => 'BSPL Head Deleted', 'description' => 'BSPL Head Deleted: ' . $model->bspl_heads_name];
        captureActivity($log);



        return redirect()->route('admin.bsplheads')->with('success', 'BSPL Head Deleted Successfully');
    }
} //end of class

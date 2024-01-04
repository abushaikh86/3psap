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


class BsplcategoryController extends Controller
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
        $details = Bsplcategory::with('bspl_head_name')->get();
        // dd($details->toArray());
        return view('backend.bsplcat.index', compact('details'));
    }

    // //create new user
    public function create()
    {
        $bspl_head_data = Bsplheads::pluck('bspl_heads_name', 'bsplheads_id');
        return view('backend.bsplcat.create', compact('bspl_head_data'));
    }

    public function store(Request $request)
    {

        $request->validate([
            'bsplheads_id' => 'required',
            'bspl_cat_name' => 'required',
        ]);

        $model = new Bsplcategory;
        $model->fill($request->all());

        if ($model->save()) {

            $log = ['module' => 'BSPL Category Master', 'action' => 'BSPL Category Created', 'description' => 'BSPL Category Created: ' . $request->bspl_cat_name];
            captureActivity($log);

            //   if(isset($request->form_type) && $request->form_type=='area_modal')
            //   {
            //     $area = Area::pluck('area_name','area_id');
            //     // $brands->put('add_brand','Add Brand +');
            //     $area_options= "";
            //     foreach($area as $area_id => $area_name)
            //     {
            //       $area_options .= '<option value="'.$area_id.'">'.$area_name.'</option>';
            //     }
            //     return ['flag'=>'success', 'message'=> 'New Area Added!','area'=>$area_options];
            //   }
            return redirect('/admin/bsplcat')->with('success', 'New BSPL Category Added');
        }
    }




    //edit details
    public function edit($id)
    {
        $model = Bsplcategory::where('bsplcat_id', $id)->first();
        $bspl_head_data = Bsplheads::pluck('bspl_heads_name', 'bsplheads_id');

        return view('backend.bsplcat.edit', compact('model', 'bspl_head_data'));
    }

    public function update(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'bsplheads_id' => 'required',
            'bspl_cat_name' => 'required',
        ]);;
        $model = Bsplcategory::where('bsplcat_id', $request->bsplcat_id)->first();

        $model->fill($request->all());
        if ($model->save()) {

            if ($model->getChanges()) {
                $new_changes = $model->getChanges();
                $log = ['module' => 'BSPL Category Master', 'action' => 'BSPL Category Updated', 'description' => 'BSPL Category Updated: Name=>' . $model->bspl_cat_name];
                captureActivityupdate($new_changes, $log);
            }
            // dd('sdgdfg');
            return redirect('/admin/bsplcat')->with('success', 'BSPL Category Updated');
        }
    }





    //function for delete address
    public function destroyBsplCat($id)
    {

        $model = Bsplcategory::find($id);

        foreach ($model->get_all_subcat_data as $sub_category) {
            $sub_category->bspl_type->each->delete();
        }
        $model->get_all_subcat_data->each->delete();
        $model->delete();

        $log = ['module' => 'BSPL Category Master', 'action' => 'BSPL Category Deleted', 'description' => 'BSPL Category Deleted: ' . $model->bspl_cat_name];
        captureActivity($log);


        return redirect()->route('admin.bsplcat')->with('success', 'BSPL Category Deleted Successfully');
    }
} //end of class

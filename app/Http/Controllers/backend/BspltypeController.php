<?php

namespace App\Http\Controllers\backend;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\backend\AdminUsers;
use App\Models\backend\Area;
use App\Models\backend\Bsplcategory;
use App\Models\backend\Bsplsubcategory;
use App\Models\backend\Bspltype;
use Illuminate\Http\Request;
use App\Models\backend\BussinessPartnerMaster;
use App\Models\backend\BussinessMasterType;
use App\Models\backend\BussinessPartnerOrganizationType;
use App\Models\backend\TermPayment;
use App\Models\backend\BussinessPartnerAddress;
use App\Models\backend\BussinessPartnerContactDetails;
use App\Models\backend\BussinessPartnerBankingDetails;
use App\Models\backend\BusinessPartnerCategory;


class BspltypeController extends Controller
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


        $details = Bspltype::with('bspl_subcat_name')->get();
        // dd($details);
        return view('backend.bspltype.index', compact('details'));
    }

    // //create new user
    public function create()
    {

        $bspl_subcat_data = Bsplsubcategory::pluck('bspl_subcat_name', 'bsplsubcat_id');
        // dd($bspl_subcat_data);
        return view('backend.bspltype.create', compact('bspl_subcat_data'));
    }

    public function store(Request $request)
    {
        // dd($request->all());

        $request->validate([
            'bsplsubcat_id' => 'required',
            'bspl_type_name' => 'required',
        ]);

        $model = new Bspltype;
        $model->fill($request->all());

        if ($model->save()) {

            $log = ['module' => 'BSPL Type Master', 'action' => 'BSPL Type Created', 'description' => 'BSPL Type Created: ' . $request->bspl_type_name];
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
            return redirect('/admin/bspltype')->with('success', 'New BSPL Type Added');

            // if($request->route == 0){
            //     return redirect('/admin/bspltype')->with('success', 'New BSPL Type Added');

            // }else{
            //     return redirect('/admin/bspltype/bsplcat/'.$request->bsplcat_id)->with('success', 'New BSPL Type Added');
            // }
        }
    }




    //edit details
    public function edit($id)
    {
        $model = Bspltype::where('bsplstype_id', $id)->first();
        // dd($model);

        $bspl_subcat_data = Bsplsubcategory::pluck('bspl_subcat_name', 'bsplsubcat_id');
        return view('backend.bspltype.edit', compact('model', 'bspl_subcat_data'));
    }

    public function update(Request $request)
    {

        // dd($request->route);
        $request->validate([
            'bsplsubcat_id' => 'required',
            'bspl_type_name' => 'required',
        ]);

        $model = Bspltype::where('bsplstype_id', $request->bsplstype_id)->first();

        $model->fill($request->all());
        if ($model->save()) {

            if ($model->getChanges()) {
                $new_changes = $model->getChanges();
                $log = ['module' => 'BSPL Type Master', 'action' => 'BSPL Type Updated', 'description' => 'BSPL Type Updated: Name=>' . $model->bspl_type_name];
                captureActivityupdate($new_changes, $log);
            }
            // dd('sdgdfg');
            return redirect('/admin/bspltype')->with('success', 'BSPL Type Updated');


            // if($request->route == 'admin.bsplsubcat.bsplcat'){
            //     return redirect('/admin/bsplsubcat/bsplcat/'.$request->bsplcat_id)->with('success', 'BSPL Sub-Category Updated');
            // }else{
            //     return redirect('/admin/bspltype')->with('success', 'BSPL Sub-Category Updated');
            // }
        }
    }



    // public function bsplcategory($bspl_category_id)
    // {
    //   $bspl_category = Bsplcategory::Where('bsplcat_id',$bspl_category_id)->first();
    //   $details = Bsplsubcategory::Where('bsplcat_id',$bspl_category_id)->get();
    // //   dd($bspl_category->toArray());
    //   return view('backend.bspltype.index', compact('details','bspl_category_id','bspl_category'));
    // }


    //function for delete address
    public function destroyBsplType($id)
    {

        $model = Bspltype::find($id);
        $model->delete();

        $log = ['module' => 'BSPL Type Master', 'action' => 'BSPL Type Deleted', 'description' => 'BSPL Type Deleted: ' . $model->bspl_type_name];
        captureActivity($log);


        return redirect(url()->previous())->with('success', 'BSPL Type Deleted Successfully');
    }
} //end of class

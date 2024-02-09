<?php $__env->startSection('title', 'Expense'); ?>
<?php
    use Spatie\Permission\Models\Role;
?>
<?php $__env->startSection('content'); ?>

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Create Expense</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.bsplheads')); ?>">Expense</a>
                        </li>
                        <li class="breadcrumb-item active">Create</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="<?php echo e(route('admin.expensemaster')); ?>">
                        Back
                    </a>
                </div>
            </div>
        </div>
    </div>


    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                            <?php echo e(Form::open(['url' => 'admin/expensemaster/store'])); ?>

                            <?php echo csrf_field(); ?>
                            <div class="form-body">
                                <div class="row">



                                    <div class="col-md-6 col-6">
                                        <div class="form-label-group">
                                            <?php echo e(Form::label('bsplheads_id', 'Expense Head *')); ?>

                                            <?php echo e(Form::select('bsplheads_id', $heads, '', ['class' => 'form-control', 'placeholder' => 'Select Expense Head', 'required' => true])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-6">
                                        <div class="form-label-group">
                                            <?php echo e(Form::label('bsplcat_id', 'Expense Category *')); ?>

                                            <select name="bsplcat_id" id="bsplcat_id" class="form-control"
                                                required></select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-6">
                                        <div class="form-label-group">
                                            <?php echo e(Form::label('bsplsubcat_id', 'Expense Sub-Category *')); ?>

                                            <select name="bsplsubcat_id" id="bsplsubcat_id" class="form-control"
                                                required></select>
                                        </div>
                                    </div>

                                    <div class="col-md-6 col-6">
                                        <div class="form-label-group">
                                            <?php echo e(Form::label('bsplstype_id', 'Expense Type *')); ?>

                                            <select name="bsplstype_id" id="bsplstype_id" class="form-control"
                                                required></select>
                                        </div>
                                    </div>



                                    <div class="col-md-6 col-6">
                                        <div class="form-label-group">
                                            <?php echo e(Form::label('expense_name', 'Expense Name *')); ?>

                                            <?php echo e(Form::text('expense_name', null, ['class' => 'form-control', 'placeholder' => 'Expense Name', 'required' => true])); ?>

                                        </div>
                                    </div>

                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <?php echo e(Form::label('gl_code', 'GL Code *', ['class' => ''])); ?>

                                            <?php echo e(Form::select('gl_code', $glcodes, null, ['class' => 'select2 form-control gl_code', 'placeholder' => 'GL Code'])); ?>

                                        </div>
                                    </div>





                                </div>
                                <div class="row mt-3">
                                    <div class="col md-12 ">
                                        <?php echo e(Form::submit('Save', ['class' => 'btn btn-primary mr-1 mb-1'])); ?>

                                        <button type="reset" class="btn btn-secondary mr-1 mb-1">Reset</button>
                                    </div>
                                </div>

                            </div>


                            <?php echo e(Form::close()); ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- gl_code modal -->
    <div class="modal fade text-left" id="add_glcode_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel1">Add GL Code</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-body">
                        <div class="row">

                            <div class="col-lg-12 col-md-12">
                                <fieldset class="form-group">
                                    <?php echo e(Form::label('gl_code', 'GL Code *')); ?>

                                    <?php echo e(Form::number('gl_code', null, ['class' => 'form-control char-textarea', 'placeholder' => 'Enter Code', 'required' => true])); ?>

                                </fieldset>
                            </div>


                            <div class="col-12 d-flex justify-content-start">
                                <button type="submit" class="btn btn-primary mr-1 mb-1" id="submit_glcode">Submit</button>
                                <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <script src="<?php echo e(asset('public/backend-assets/js/MasterHandler.js')); ?>"></script>


    <script>
        $(document).ready(function() {
            new MasterHandler('#gl_code', '#add_glcode_modal', '#submit_glcode',
                '<?php echo e(url('admin/master/store_gl')); ?>', '', '#gl_code');

        });
    </script>


    
    <script>
        // area_field
        function get_all_bspl_data(route, id, appendid, placeholder, edit_id = null, old_val = null) {

            // if field reset then reset other dependent fields
            if (appendid == 'bsplcat_id') {
                $('#bsplcat_id').html('<option value="">Select Category</option>');
                $('#bsplsubcat_id').html('<option value="">Select Sub-Category</option>');
                $('#bsplstype_id').html('<option value="">Select Type</option>');
            } else if (appendid == 'bsplsubcat_id') {
                $('#bsplsubcat_id').html('<option value="">Select Sub-Category</option>');
                $('#bsplstype_id').html('<option value="">Select Type</option>');
            } else if (appendid == 'bsplstype_id') {
                $('#bsplstype_id').html('<option value="">Select Type</option>');
            }

            //reset field before fetching
            $('#' + appendid).html('<option value="">' + placeholder + '</option>');
            //one ajax
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '<?php echo e(csrf_token()); ?>',
                },
                url: route,
                data: {
                    id: id
                },
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    if (data != '') {
                        $.each(data, function(key, value) {

                            if (old_val == key) {
                                $("#" + appendid).append('<option value="' + old_val +
                                    '" selected>' + value + '</option>');
                            } else if (edit_id == key) {
                                $("#" + appendid).append('<option value="' + edit_id +
                                    '" selected>' + value + '</option>');
                            } else {
                                $("#" + appendid).append('<option value="' + key +
                                    '">' + value + '</option>');
                            }
                        });

                    } else {
                        $('#' + appendid).html('<option value="">' + placeholder + '</option>');
                    }

                }
            });
        }
        $(document).ready(function() {
            $('#bsplcat_id').html('<option value="">Select Category</option>');
            $('#bsplsubcat_id').html('<option value="">Select Sub-Category</option>');
            $('#bsplstype_id').html('<option value="">Select Type</option>');


            //on edit data for area and route
            var bsplheads_id = $('#bsplheads_id :selected').val();
            var bsplcat_id = <?php echo isset($model->bsplcat_id) ? $model->bsplcat_id : 0; ?>;
            var bsplsubcat_id = <?php echo isset($model->bsplsubcat_id) ? $model->bsplsubcat_id : 0; ?>;
            var bsplstype_id = <?php echo isset($model->bsplstype_id) ? $model->bsplstype_id : 0; ?>;

            var old_bsplcat_id = <?php echo json_encode(old('bsplcat_id')); ?>;
            var old_bsplsubcat_id = <?php echo json_encode(old('bsplsubcat_id')); ?>;
            var old_bsplstype_id = <?php echo json_encode(old('bsplstype_id')); ?>;

            var old_val = '';
            var route = '';
            var appendid = '';
            var placeholder = '';
            var edit_id = '';

            // get details on edit
            if (bsplheads_id || old_bsplcat_id) {
                route = '<?php echo e(route('admin.category')); ?>';
                appendid = 'bsplcat_id';
                placeholder = 'Select Category';
                edit_id = bsplcat_id;
                old_val = old_bsplcat_id;

                get_all_bspl_data(route, bsplheads_id, appendid, placeholder, edit_id, old_val);
            }
            if (bsplcat_id || old_bsplsubcat_id) {
                route = '<?php echo e(route('admin.subcategory')); ?>';
                appendid = 'bsplsubcat_id';
                placeholder = 'Select Sub-Category';
                edit_id = bsplsubcat_id;
                old_val = old_bsplsubcat_id;
                if (bsplcat_id == 0) {
                    bsplcat_id = old_bsplcat_id;
                }

                get_all_bspl_data(route, bsplcat_id, appendid, placeholder, edit_id, old_val);
            }
            if (bsplsubcat_id || old_bsplstype_id) {
                route = '<?php echo e(route('admin.type')); ?>';
                appendid = 'bsplstype_id';
                placeholder = 'Select Type';
                edit_id = bsplstype_id;
                old_val = old_bsplstype_id;
                if (bsplsubcat_id == 0) {
                    bsplsubcat_id = old_bsplsubcat_id;
                }

                get_all_bspl_data(route, bsplsubcat_id, appendid, placeholder, edit_id, old_val);
            }


            //on create data 
            $('#bsplheads_id,#bsplcat_id,#bsplsubcat_id').on('change', function() {
                var id = $(this).val();
                var idname = this.id;
                // alert(id);

                if (idname == 'bsplheads_id') {
                    route = '<?php echo e(route('admin.category')); ?>';
                    appendid = 'bsplcat_id';
                    placeholder = 'Select Category';
                } else if (idname == 'bsplcat_id') {
                    route = '<?php echo e(route('admin.subcategory')); ?>';
                    appendid = 'bsplsubcat_id';
                    placeholder = 'Select Sub-Category';
                } else if (idname == 'bsplsubcat_id') {
                    route = '<?php echo e(route('admin.type')); ?>';
                    appendid = 'bsplstype_id';
                    placeholder = 'Select Type';
                }


                get_all_bspl_data(route, id, appendid, placeholder);


            });







        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/expensemaster/create.blade.php ENDPATH**/ ?>
<?php
    use App\Models\backend\BusinessPartnerCategory;
    $categories = BusinessPartnerCategory::pluck('business_partner_category_name');
?>

<?php $__env->startSection('title', 'Bussiness Partner'); ?>

<?php $__env->startSection('content'); ?>

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Bussiness Partner</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Bussiness Partner</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <a class="btn btn-outline-primary" href="<?php echo e(route('admin.bussinesspartner.create')); ?>">
                        <i class="feather icon-plus"></i> Add
                    </a>
                </div>
            </div>
        </div>
    </div>


    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Bussiness Partner</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            
                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>Sr. No</th>
                                            <th></th>
                                            <th>Bussines Partner Type</th>
                                            
                                            <th>Partner Name</th>
                                            <th>Organization Type</th>
                                            <th>Category</th>
                                            <th>Group</th>
                                            <th>Payment Terms</th>
                                            <th>credit Limit</th>
                                            <th>Gst details</th>
                                            
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <thead id="search_input">
                                        <tr>
                                            <th></th>
                                            <th></th>
                                            <th>
                                                <div class="dropdown">
                                                    <select name=""
                                                        id="bussines_partner_type"class="btn btn-sm border border-dark dropdown-toggle"
                                                        type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <option value="">Select</option>
                                                        <option value="customer">Customer</option>
                                                        <option value="vendor">Vendor</option>
                                                    </select>
                                                </div>
                                            </th>
                                            <th><input type="text" id="partner_name"></th>
                                            <th>
                                                <div class="dropdown">
                                                    <select name=""
                                                        id="organization_type"class="btn btn-sm border border-dark dropdown-toggle"
                                                        type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <option value="">Select</option>
                                                        <option value="proprietor">Proprietor</option>
                                                        <option value="partnership">Partnership</option>
                                                        <option value="company">Company</option>
                                                        <option value="llp">LLP</option>
                                                    </select>
                                                </div>
                                            </th>
                                            <th>
                                                <div class="dropdown">
                                                    <select name=""
                                                        id="category"class="btn btn-sm border border-dark dropdown-toggle"
                                                        type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <option value="">Select</option>
                                                        <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <option value="<?php echo e($category); ?>"><?php echo e($category); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                </div>
                                            </th>
                                            <th><input type="text" id="group"></th>
                                            <th>
                                                <div class="dropdown">
                                                    <select name=""
                                                        id="payment_term"class="btn btn-sm border border-dark dropdown-toggle"
                                                        type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                        <option value="">Select</option>
                                                        <option value="lc">LC</option>
                                                        <option value="advance_prepayment">Advance/Pre-Payment</option>
                                                        <option value="pdc">PDC</option>
                                                        <option value="on_credit">On Credit</option>
                                                    </select>
                                                </div>
                                            </th>
                                            <th><input type="text" id="credit_limit"></th>
                                            <th><input type="text" id="gst_details"></th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->startSection('scripts'); ?>

    <script>
        $(function() {

            var table = $('#tbl-datatable').DataTable({
                processing: true,
                serverSide: true,
                ajax: "<?php echo e(route('admin.bussinesspartner')); ?>",
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'new_action',
                        name: 'new_action'
                    },
                    {
                        data: 'get_partner_type_name.bussiness_master_type',
                        name: 'get_partner_type_name.bussiness_master_type'
                    },
                    {
                        data: 'bp_name',
                        name: 'bp_name'
                    },
                    {
                        data: 'get_org_type.bp_organisation_type',
                        name: 'get_org_type.bp_organisation_type'
                    },
                    {
                        data: 'get_category.business_partner_category_name',
                        name: 'get_category.business_partner_category_name'
                    },
                    {
                        data: 'bp_group',
                        name: 'bp_group'
                    },
                    {
                        data: 'paymentterms.term_type',
                        name: 'paymentterms.term_type'
                    },
                    {
                        data: 'credit_limit',
                        name: 'credit_limit'
                    },
                    {
                        data: 'gst_details',
                        name: 'gst_details'
                    },
                    {
                        data: 'action',
                        name: 'action',
                        orderable: true,
                        searchable: false
                    }
                ],

                buttons: [{
                    extend: 'collection',
                    text: 'Export',
                    buttons: [{
                            extend: 'excel',
                            exportOptions: {
                                columns: [0, 2, 3, 4, 5, 6, 7, 8, 9],
                                modifier: {
                                    page: 'all',
                                    search: 'applied'
                                }
                            },
                            title: function() {
                                var pageTitle = 'BUSSINESS PARTNER';
                                return pageTitle
                            }
                        },
                        {
                            extend: 'pdf',
                            exportOptions: {
                                columns: [0, 2, 3, 4, 5, 6, 7, 8, 9],
                                modifier: {
                                    page: 'all',
                                    search: 'applied'
                                }
                            },
                            title: function() {
                                var pageTitle = 'BUSSINESS PARTNER';
                                return pageTitle
                            }
                        },
                        // {
                        //     extend: 'print',
                        //     exportOptions: {
                        //         columns: [0, 2, 3, 4, 5, 6, 7, 8, 9],
                        //         modifier: {
                        //             page: 'all',
                        //             search: 'applied'
                        //         }
                        //     },
                        //     title: function() {
                        //         var pageTitle = 'BUSSINESS PARTNER';
                        //         return pageTitle
                        //     }
                        // }
                    ]
                }],
                dom: 'lBfrtip',
                select: true
            });

            $('#bussines_partner_type').on('click', function() {
                table.column(2).search(this.value).draw();
                // console.log(v);
            });
            $('#partner_name').on('keyup', function() {
                table.column(3).search(this.value).draw();
            });
            $('#organization_type').on('click', function() {
                table.column(4).search(this.value).draw();
            });

            $('#category').on('click', function() {
                table.column(5).search(this.value).draw();
            });
            $('#group').on('keyup', function() {
                table.column(6).search(this.value).draw();
            });

            $('#payment_term').on('click', function() {
                table.column(7).search(this.value).draw();
            });
            $('#credit_limit').on('keyup', function() {
                table.column(8).search(this.value).draw();
            });
            $('#gst_details').on('keyup', function() {
                table.column(9).search(this.value).draw();
            });
        });
    </script>
<?php $__env->stopSection(); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/bussinesspartner/index.blade.php ENDPATH**/ ?>
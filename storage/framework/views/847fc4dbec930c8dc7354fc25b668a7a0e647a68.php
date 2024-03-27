
<?php $__env->startSection('title', 'Products'); ?>

<?php $__env->startSection('content'); ?>
<div class="content-header row">
    <div class="content-header-left col-md-6 col-12 mb-2">
        <h3 class="content-header-title">Products</h3>
        <div class="row breadcrumbs-top">
            <div class="breadcrumb-wrapper col-12">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Products</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
        <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
            <div class="btn-group" role="group">
                <a class="btn btn-outline-primary" href="<?php echo e(route('admin.products.create')); ?>">
                    <i class="feather icon-plus"></i> Add
                </a>
                <?php if(is_superAdmin()): ?>
                <button type="button" class="btn btn-outline-primary" data-bs-toggle="modal"
                    data-bs-target="#importModal">
                    <i class="feather icon-download"></i>
                    Import
                </button>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="importModal" tabindex="-1" aria-labelledby="importModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="importModalLabel">Import Data</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <!-- Form for importing data -->
                <?php echo e(Form::open(['url' => 'admin/updateProduct/update', 'class' => 'w-100', 'enctype' =>
                'multipart/form-data'])); ?>



                <div class="form-group mb-3">
                    <?php echo e(Form::label('file', 'Select File')); ?>

                    <input type="file" name="file" class="form-control">
                </div>
                <div class="d-flex mb-1">
                    <a href="<?php echo e(asset('public/sheets/sample-product.xlsx')); ?>"
                        class="btn btn-sm btn-outline-primary mr-1">Sample Sheet
                        (Product)</a>
                </div>

                <button type="submit" class="btn btn-primary">Submit</button>
                <?php echo e(Form::close()); ?>

            </div>
        </div>
    </div>
</div>

<section id="basic-datatable">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Products</h4>
                </div>
                <div class="card-content">
                    <div class="card-body card-dashboard">
                        <div class="table-responsive">
                            <table class="table zero-configuration" id="tbl-datatable">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Image</th>
                                        <!-- <th>Item Type</th> -->
                                        <th>Item Code</th>
                                        <th>Base Pack</th>
                                        <th>Description</th>
                                        <th>Brand</th>
                                        <th>Category</th>

                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <thead id="search_input">
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th><input type="text" id="item_code"></th>
                                        <th><input type="text" id="sku"></th>
                                        <th><input type="text" id="consumer_desc"></th>
                                        <th><input type="text" id="brand_id"></th>
                                        <th><input type="text" id="category_id"></th>
                                        <th></th>
                                    </tr>
                                </thead>

                                <tbody></tbody>
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
                serverSide: false,
                ajax: "<?php echo e(route('admin.products')); ?>",
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'product_thumb',
                        name: 'product_thumb'
                    },
                    
                    {
                        data: 'item_code',
                        name: 'item_code'
                    },
                    {
                        data: 'sku',
                        name: 'sku'
                    },
                    {
                        data: 'consumer_desc',
                        name: 'consumer_desc'
                    },
                    {
                        data: 'brand_id',
                        name: 'brand_id'
                    },
                    {
                        data: 'category_id',
                        name: 'category_id'
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
                                columns: [0, 2, 3, 4, 5, 6],
                                modifier: {
                                    page: 'all',
                                    search: 'applied'
                                }
                            },
                            title: function() {
                                var pageTitle = 'PRODUCTS';
                                return pageTitle
                            }
                        },
                       

                    ]
                }],
                dom: 'lBfrtip',
                select: true
            });

            function applySearch(columnIndex, value) {
                table.column(columnIndex).search(value).draw();
            }

            $('#item_code,#sku, #consumer_desc, #brand_id, #category_id').on('keyup', function() {
                var columnIndex = $(this).closest('th').index();
                applySearch(columnIndex, this.value);
            });

        });
</script>
<?php $__env->stopSection(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/products/index.blade.php ENDPATH**/ ?>
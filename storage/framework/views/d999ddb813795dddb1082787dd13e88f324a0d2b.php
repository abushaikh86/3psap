<?php $__env->startSection('title', 'Inventory Transactions'); ?>

<?php $__env->startSection('content'); ?>
    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Inventory Transactions</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Inventory Transactions</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">

                </div>
            </div>
        </div>
    </div>
    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Inventory Transactions</h4>
                    </div>

                    <form action="<?php echo e(route('admin.reports')); ?>" method="get">
                        <div class="form-group ml-2">
                            <label for="date_range">Filter By Dates: </label>
                            <input type="text" name="daterange" value="" />
                            <input type="hidden" name="from_date" value="" />
                            <input type="hidden" name="to_date" value="" />

                            <button class="btn-sm btn-secondary reset">Reset</button>
                        </div>

                    </form>



                    <div class="card-content">
                        <div class="card-body card-dashboard">
                            <div class="table-responsive">
                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Date</th>
                                            <th>Transaction Type</th>
                                            <th>Master DB/ DB Name</th>
                                            <th>DB Type</th>
                                            <th>City</th>
                                            <th>Region</th>
                                            <th>Item Code</th>
                                            <th>Item Description</th>
                                            <th>Brand</th>
                                            <th>Category</th>
                                            <th>Sub Category</th>
                                            <th>Variant</th>
                                            <th>EAN Code</th>
                                            <th>Product</th>
                                            <th>Warehouse (Bin)</th>
                                            <th>Month</th>
                                            <th>Quantity</th>
                                            <th>Updated Quantity</th>
                                            <th>Final Quantity</th>
                                            <th>Mfg Date</th>
                                            <th>Exp Date</th>
                                            <th>Days To Expire</th>
                                            <th>Freshness (%)</th>
                                            <th>Stock Status</th>
                                            <th>Billing Price/ Unit (W/O Gst)</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(isset($data) && count($data) > 0): ?>
                                            <?php $srno = 1; ?>
                                            <?php $__currentLoopData = $data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php
                                                    // dd($row->get_unit_price->variants->name);
                                                ?>

                                                <?php
                                                  
                                                    $mfgDate = $row->manufacturing_date ? \Carbon\Carbon::parse($row->manufacturing_date) : null;
                                                    $expiryDate = $row->expiry_date ? \Carbon\Carbon::parse($row->expiry_date) : null;
                                                    $daysRemaining = 0;
                                                    $freshnessPercentage = 0;

                                                    if ($expiryDate && $mfgDate) {
                                                        $daysRemaining = now()->diffInDays($expiryDate);
                                                        $total_days = $expiryDate->diffInDays($mfgDate);
                                                        // dd($total_days);
                                                        $freshnessPercentage = round(($daysRemaining / $total_days) * 100);
                                                    }

                                                ?>

                                                <tr>
                                                    <td><?php echo e($srno); ?></td>
                                                    <td><?php echo e($row->created_at); ?></td>
                                                    <td><?php echo e($row->transaction_type); ?></td>
                                                    <td><?php echo e($company_data->name); ?></td>
                                                    <td><?php echo e($company_data->db_type); ?></td>
                                                    <td><?php echo e($company_data->city); ?></td>
                                                    <td><?php echo e($company_data->district); ?></td>
                                                    <td><?php echo e($row->item_code); ?></td>
                                                    <td><?php echo e($row->get_unit_price->product_desc); ?></td>
                                                    <td><?php echo e($row->get_unit_price->brand->brand_name); ?></td>
                                                    <td><?php echo e($row->get_unit_price->category->category_name); ?></td>
                                                    <td><?php echo e($row->get_unit_price->sub_category->subcategory_name); ?></td>
                                                    <td><?php echo e($row->get_unit_price->variants->name); ?></td>
                                                    <td><?php echo e($row->get_unit_price->ean_barcode); ?></td>
                                                    <td><?php echo e($row->get_unit_price->consumer_desc); ?></td>
                                                    <td><?php echo e($row->get_warehouse->storage_location_name); ?>

                                                        (<?php echo e($row->get_bin->get_bin->name ?? ''); ?>)
                                                    </td>
                                                    <td><?php echo e($row->created_at->format('M \'Y')); ?></td>
                                                    <td><?php echo e($row->qty); ?></td>
                                                    <td><?php echo e($row->updated_qty); ?></td>
                                                    <td><?php echo e($row->final_qty); ?></td>

                                                    <td style="font-size: 11px;"><?php echo e($row->manufacturing_date ?? ''); ?></td>
                                                    <td style="font-size: 11px;"><?php echo e($row->expiry_date ?? ''); ?></td>
                                                    <td><?php echo e($daysRemaining ?? ''); ?></td>
                                                    <td><?php echo e($freshnessPercentage ?? ''); ?>%</td>
                                                    <td></td>

                                                    <td><?php echo e($row->unit_price); ?></td>



                                                </tr>
                                                <?php $srno++; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        <?php endif; ?>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </div>
    </div>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

    <script src="<?php echo e(asset('public/backend-assets/vendors/js/datatables.min.js')); ?>"></script>
    <script src="<?php echo e(asset('public/backend-assets/vendors/js/dataTables.bootstrap4.min.js')); ?>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>


    <script>
        $(document).ready(function() {

            const from_date_param = new URLSearchParams(window.location.search).get('from_date');
            const to_date_param = new URLSearchParams(window.location.search).get('to_date');

            // Initialize date range picker
            $('input[name="daterange"]').daterangepicker({
                startDate: from_date_param ? moment(from_date_param, 'YYYY-MM-DD') : moment().subtract(1,
                    'M'),
                endDate: to_date_param ? moment(to_date_param, 'YYYY-MM-DD') : moment(),
                locale: {
                    format: 'DD-MM-YYYY'
                }
            });
            // Handle form submission when date range is selected
            $('input[name="daterange"]').on('apply.daterangepicker', function(ev, picker) {
                // Update the hidden input fields with the selected date range
                $('input[name="from_date"]').val(picker.startDate.format('YYYY-MM-DD'));
                $('input[name="to_date"]').val(picker.endDate.format('YYYY-MM-DD'));

                // Submit the form
                $('form').submit();
            });

            // Handle cancel button click
            $(".cancelBtn").click(function() {
                window.location.reload();
            });


            $('.reset').on('click', function() {
                // Clear the date range
                $('input[name="daterange"]').val('');

                // Optionally trigger the change event to apply the changes
                $('input[name="daterange"]').trigger('change');
            });
        });
    </script>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/eureka/resources/views/backend/reports/inventory.blade.php ENDPATH**/ ?>
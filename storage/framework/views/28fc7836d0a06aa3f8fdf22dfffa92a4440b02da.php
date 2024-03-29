
<?php $__env->startSection('title', 'Beat Calender'); ?>

<?php $__env->startSection('content'); ?>

    <div class="content-header row">
        <div class="content-header-left col-md-6 col-12 mb-2">
            <h3 class="content-header-title">Beat Calender</h3>
            <div class="row breadcrumbs-top">
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Beat Calender</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
            <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">
                <div class="btn-group" role="group">
                    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('Create Beat Calender Master')): ?>
                        <a class="btn btn-outline-primary" href="<?php echo e(route('admin.beatcalender.create')); ?>">
                            <i class="feather icon-plus"></i> Add
                        </a>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>


    <section id="basic-datatable">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Beat Calender</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body card-dashboard">

                            <div class="table-responsive">

                                <table class="table zero-configuration" id="tbl-datatable">
                                    <thead>
                                        <tr>
                                            <th style="width: 50px;">Sr No.
                                                <div class="my-1">
                                                    <input type="text" style="visibility:hidden;">
                                                </div>
                                            </th>
                                            <th>Beat
                                                <div class="my-1">
                                                    <div class="dropdown">
                                                        <?php echo Form::select('beat_id', $beats, null, ['id' => 'beat_id', 'placeholder' => 'Select Beat']); ?>

                                                    </div>
                                                </div>
                                            </th>
                                            <th>Day
                                                <div class="my-1">
                                                    <div class="dropdown">
                                                        <?php echo Form::select('beat_day', $all_data['days'], null, ['id' => 'beat_day', 'placeholder' => 'Select Day']); ?>

                                                    </div>
                                                </div>
                                            </th>
                                            <th>Week
                                                <div class="my-1">
                                                    <div class="dropdown">
                                                        <?php echo Form::select('beat_week', $all_data['week'], null, ['id' => 'beat_week', 'placeholder' => 'Select Week']); ?>

                                                    </div>
                                                </div>
                                            </th>
                                            <th>Month
                                                <div class="my-1">
                                                    <div class="dropdown">
                                                        <?php echo Form::select('beat_month', $all_data['month'], null, [
                                                            'id' => 'beat_month',
                                                            'placeholder' => 'Select Month',
                                                        ]); ?>

                                                    </div>
                                                </div>
                                            </th>
                                            <th>Year
                                                <div class="my-1">
                                                    <div class="dropdown">
                                                        <?php echo Form::select('beat_year', $all_data['year'], null, ['id' => 'beat_year1', 'placeholder' => 'Select Year']); ?>

                                                    </div>
                                                </div>
                                            </th>
                                            <th>Action
                                                <div class="my-1">
                                                    <input type="text" style="visibility:hidden;">
                                                </div>
                                            </th>

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

<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>


    <script>
        $(function() {
            var daysOrder = <?php echo json_encode(array_values($all_data['days']), 15, 512) ?>;
            var monthsOrder = <?php echo json_encode(array_values($all_data['month']), 15, 512) ?>;

            $('.dropdown-toggle').dropdown();

            var table = $('#tbl-datatable').DataTable({
                orderable: true,
                searchable: true,
                ajax: "<?php echo e(route('admin.beatcalender')); ?>",
                columns: [{
                        data: 'DT_RowIndex',
                        name: 'DT_RowIndex'
                    },
                    {
                        data: 'get_beat.beat_name',
                        name: 'get_beat.beat_name'
                    },
                    {
                        data: 'beat_day',
                        name: 'beat_day'
                    },
                    {
                        data: 'beat_week',
                        name: 'beat_week'
                    },
                    {
                        data: 'beat_month',
                        name: 'beat_month'
                    },
                    {
                        data: 'beat_year',
                        name: 'beat_year'
                    },
                    {
                        data: 'action',
                        name: 'action'
                    },
                ],
                buttons: [{
                    extend: 'collection',
                    text: 'Export',
                    buttons: [{
                        extend: 'excel',
                        exportOptions: {
                            columns: [0, 1, 2, 3, 4, 5],
                            modifier: {
                                page: 'all',
                                search: 'applied'
                            }
                        },
                        title: 'BEAT CALENDER',
                    }, ],
                }],
                dom: 'lBfrtip',
                select: true,
                columnDefs: [{
                        targets: 2, // Column index for "Day"
                        type: 'days-order' // Custom sorting type for days
                    },
                    {
                        targets: 4, // Column index for "Month"
                        type: 'months-order' // Custom sorting type for months
                    }
                ]
            });

            // Custom sorting functions for days and months
            jQuery.extend(jQuery.fn.dataTableExt.oSort, {
                'days-order-pre': function(a) {
                    // Define the sorting order for days
                    return daysOrder.indexOf(a);
                },
                'days-order-asc': function(a, b) {
                    return a - b;
                },
                'days-order-desc': function(a, b) {
                    return b - a;
                },
                'months-order-pre': function(a) {
                    // Define the sorting order for months
                    return monthsOrder.indexOf(a);
                },
                'months-order-asc': function(a, b) {
                    return a - b;
                },
                'months-order-desc': function(a, b) {
                    return b - a;
                }
            });

            $('#beat_id,#beat_day, #beat_week, #beat_month, #beat_year').on('change', function() {
                var columnIndex = $(this).closest('th')
            .index(); // Get the column index of the changed dropdown
                var filterValue = $(this).find(':selected').text();

                table.column(columnIndex).search(filterValue).draw();
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/beatcalender/index.blade.php ENDPATH**/ ?>
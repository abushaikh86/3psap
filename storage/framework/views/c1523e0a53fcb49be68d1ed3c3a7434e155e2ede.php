<?php $__env->startSection('title', 'Admin Login'); ?>
<?php $__env->startSection('content'); ?>

    <style>
        .text-comp {
            margin-top: 60px;
            font-size: 14px;
        }
    </style>


    <main class="">
        <section class="admin-frame">
            <div class="container">
                <div class="row d-flex align-items-center justify-content-center text-center pt-2 pb-2">
                    <div class="col-md-6 img-div">
                        <img src="<?php echo e(asset('public/backend-assets/images/banner/panel-img.jpg')); ?>" class="img-fluid" />
                    </div>

                    <div class="col-md-6">
                        <div class="form-content">
                            <h1 class="heading mb-4"><span>3P SAP</span> Admin Panel</h1>
                            <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

                            <form method="POST" action="<?php echo e(route('admin.login.submit')); ?>">
                                <?php echo csrf_field(); ?>


                                <div class="">
                                    <label class="form-label">Username</label>
                                    <input type="text" class="form-control" name="email" id="email"
                                        value="<?php echo e(old('email')); ?>" placeholder="Enter Email" />
                                </div>
                                <div class="">
                                    <label class="form-label">Password</label>
                                    <input type="password" class="form-control" name="password" email="password"
                                        value="<?php echo e(old('password')); ?>" placeholder="Enter  Password" />
                                </div>

                                


                                <div class="text-comp">
                                    <label class="form-label">Select Company</label>
                                    <?php echo e(Form::select('company_id', $companies, null, [
                                        'class' => 'form-control',
                                        'placeholder' => 'Select Company',
                                        'id' => 'company_id',
                                        'required' => true,
                                    ])); ?>

                                </div>

                                <button class="btn btn-login mt-2">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>


    <script>
        // JavaScript to toggle the display of the company dropdown based on the Super Admin checkbox
        // const superAdminToggle = document.getElementById('superAdminToggle');
        // const companyDropdown = document.querySelector('.text-comp');

        // superAdminToggle.addEventListener('change', function() {
        //     if (this.checked) {
        //         companyDropdown.style.display = 'none';
        //         $('#company_id').removeAttr('required');
        //     } else {
        //         companyDropdown.style.display = 'block';
        //         $('#company_id').removeAttr('required');
        //         $('#company_id').attr('required', true);

        //     }
        // });
    </script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.fullempty', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/html/3psap/resources/views/backend/account/loginform.blade.php ENDPATH**/ ?>
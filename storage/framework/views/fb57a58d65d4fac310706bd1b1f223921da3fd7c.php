<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">

<head>

    <title><?php echo $__env->yieldContent('title'); ?></title>
    <?php echo $__env->make('backend.includes.head', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <link rel="stylesheet" href="<?php echo e(asset('public/backend-assets/login.css')); ?>">

</head>

<body>

    <div class="app-content content">
        <div class="content-overlay"></div>
        <div class="content-wrapper">
            <div class="content-body">
                <?php echo $__env->yieldContent('content'); ?>
            </div>
        </div>
    </div>


    <?php echo $__env->make('backend.includes.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <?php echo $__env->make('frontend.includes.alerts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->yieldContent('scripts'); ?>
</body>

</html>
<?php /**PATH /home/parasigh/public_html/3psap/resources/views/backend/layouts/fullempty.blade.php ENDPATH**/ ?>
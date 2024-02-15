<?php $__env->startSection('title', 'Admin-Dashboard'); ?>
<?php $__env->startSection('content'); ?>


<div class="card">
    <div class="card-body">
        <h3 class="mb-2">Welcome to Dashboard</h3>
        <a href="<?php echo e(url('/')); ?>/admin/logout" class="btn btn-secondary">Logout</a>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/parasigh/public_html/3psap/resources/views/backend/admin/dashboard.blade.php ENDPATH**/ ?>
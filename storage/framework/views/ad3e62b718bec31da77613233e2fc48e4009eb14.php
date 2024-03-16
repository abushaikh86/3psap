<?php $__env->startSection('title', 'View Purchase Order'); ?>

<?php $__env->startSection('content'); ?>
<div class="content-header row">
  <div class="content-header-left col-md-6 col-12 mb-2">
    <h3 class="content-header-title">Purchase Order</h3>
    <div class="row breadcrumbs-top">
      <div class="breadcrumb-wrapper col-12">
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="<?php echo e(route('admin.dashboard')); ?>">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Purchase Order</li>
        </ol>
      </div>
    </div>
  </div>
  <div class="content-header-right col-md-6 col-12 mb-md-0 mb-2">
    <div class="btn-group float-md-right" role="group" aria-label="Button group with nested dropdown">

    </div>
  </div>
</div>

<section id="multiple-column-form">
<div class="row match-height">
<div class="col-12">
<div class="card">
<div class="card-content">
<div class="card-body">
<div class="content-header row">
<div class="col-sm-12 text-sm-end mb-1">
          </div>
</div>
  <?php echo $__env->make('backend.includes.errors', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <?php if($purchaseorder->split_purchaseorder == 1): ?>
  <?php echo $__env->make('backend.purchaseorder.invoice_format_split', ['roles'=>$roles,'invoice'=>$purchaseorder,'party'=>$party,'download'=>false], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <?php else: ?>
  <?php echo $__env->make('backend.purchaseorder.invoice_format', ['roles'=>$roles,'invoice'=>$purchaseorder,'party'=>$party,'download'=>false], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <?php endif; ?>
      <div class="row">
        <div class="col-lg-12 text-center">
  <a href="javascript:void(0);" class="btn btn-primary" onclick="PrintElem('.printable');">Print</a>
          <a href="<?php echo e(route('admin.purchaseorder')); ?>" class="btn btn-secondary">Back</a>
        </div>
      </div>


</div>
</div>
</div>
</div>
</div>
</section>
</div>
</div>
<script>
    $(document).ready(function(){
      //$(".print_button").click(function()
      //{

        <?php
        if(isset($_GET['print'])){ ?>
        PrintElem('.printable');
       <?php }
       ?>
    //  });
    });
    </script>
    <script type="text/javascript">

        function PrintElem(elem)
        { //alert(elem);
            console.log(elem);
          var print=  Popup($(elem).html());
         //alert(print);
        }

        function Popup(data)
        {
          //alert(data);
            var mywindow = window.open('', '<?php echo e($purchaseorder->bill_no); ?>', 'height=600,width=800');
            mywindow.document.write('<html><head><title><?php echo e($purchaseorder->bill_no); ?></title>');
            mywindow.document.write('<style>@page{}body{font-family:Arial !important;color:#000;} table{width:100%;border:1px solid #000;border-collapse:collapse;} table tr td,table tr th{border:1px solid #000;text-align:left;font-size:12px;padding:4px;}table tr th p, table tr td p,table tr td h2,table tr th h2{margin-bottom:0px;padding-bottom:0px;padding-top:0px;margin-top:0px;}.purchaseorder_items tr th, .purchaseorder_items tr td{padding:4px;}.no-border,.no-border tr td,.no-border tr th{border:none !important;}</style>');
            mywindow.document.write('</head><body >');
            mywindow.document.write(data);
             mywindow.document.write('</body></html>');

            mywindow.document.close(); // necessary for IE >= 10
            mywindow.focus(); // necessary for IE >= 10

            mywindow.print();

            mywindow.close();
            //Popupsecond(data);
            return true;
        }

    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/purchaseorder/show.blade.php ENDPATH**/ ?>
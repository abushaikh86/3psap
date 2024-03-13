<?php
use Carbon\Carbon;
use App\Models\backend\Company;

$company = Company::where('company_id',session('company_id'))->first();
?>
<?php
// dd($invoice->gst_rate);
  if($invoice->igst_total <= 0){
    $cs_gst_percent = "@ ".($invoice->gst_rate/2)." %";
    $st_gst_percent = "@ ".($invoice->gst_rate/2)." %";
    $igst_percent='';
  }else{
    $igst_percent = "@ ".($invoice->gst_rate)." %";
    $cs_gst_percent='';
    $st_gst_percent='';
  }
?>
<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
  }
  .container {
    width: 1280px;
    margin: 50px auto;
    overflow-x: auto;
  }
  table,
  th,
  td {
    border: 1px solid #c3c3c3;
    border-collapse: collapse;
    padding: 15px;
  }
</style>

<div class="table-responsive printable mb-4">
<table style="width: 100%">
        <tr>
          <th colspan="20">
            <h3>Tax Invoice</h3>
          </th>
        </tr>

        <tr>
          <td colspan="10" rowspan="3" style="width: 50%">
            <img
              src="https://assets.materialup.com/uploads/1e01d352-7e77-4162-a6cc-3b4c4558ba2f/preview.jpg"
              width="200"
            />

            <h5><b><?php echo e($company->name); ?></b></h5>
            Address : Kalyan<br />
            Tel : 55544422 Fax : 55577784<br />
            GSTIN :<?php echo e($invoice->bill_to_gst_no); ?> <br />
            State : Maharashtra, State Code : 27<br />
          </td>
          <td colspan="5" style="width: 25%">
            Invoice No:<br />
            <b><?php echo e($invoice->bill_no); ?></b>
          </td>
          <td colspan="5" style="width: 25%">
            Date:<br />
            <b><?php echo e(Carbon::parse($invoice->bill_date)->format('d-m-Y')); ?></b>
          </td>
        </tr>

        <tr>
          <td colspan="10" style="width: 50%">
            Place Of Supply:<br />
            <b><?php echo e($invoice->place_of_supply); ?></b>
          </td>
        </tr>

        <tr>
          <td colspan="10" style="width: 50%">
            Ship To<br />
            Self pick up
          </td>
        </tr>

        <tr>
          <?php if(!empty($bill_address)): ?>
          <td colspan="10">
            Bill To
            <h5><?php echo e($invoice->get_bill_toaddress->bp_address_name ?? ''); ?></h5>
            Address : <?php echo e($invoice->get_bill_toaddress->building_no_name. " ,".$invoice->get_bill_toaddress->street_name ." ,". $invoice->get_bill_toaddress->landmark
             ." ,". $invoice->get_bill_toaddress->city." ".$invoice->get_bill_toaddress->district." ".$invoice->get_bill_toaddress->pin_code); ?><br />
            Phone No: <?php echo e($contact->mobile_no); ?> <br />
            GSTIN:  <?php echo e($invoice->bill_to_gst_no); ?><br />
            State: <?php echo e($invoice->get_bill_toaddress->state); ?>

          </td>
          <?php endif; ?>

          <?php if(!empty($ship_address)): ?>
          <td colspan="10">
            Ship To
            <h5><?php echo e($invoice->get_ship_toaddress->bp_address_name ?? ''); ?></h5>
            Address : <?php echo e($invoice->get_ship_toaddress->building_no_name. " ,".$invoice->get_ship_toaddress->street_name ." ,". $invoice->get_ship_toaddress->landmark
             ." ,". $invoice->get_ship_toaddress->city." ".$invoice->get_ship_toaddress->district." ".$invoice->get_ship_toaddress->pin_code); ?><br />
            Phone No: <?php echo e($contact->mobile_no); ?> <br />
            GSTIN:  <?php echo e($invoice->bill_to_gst_no); ?><br />
            State: <?php echo e($invoice->get_ship_toaddress->state); ?>

          </td>
          <?php endif; ?>
        </tr>

        <tr>
          <td colspan="1">#</td>
          <td colspan="4">Item Name</td>
          <td colspan="3">HSN / SAC</td>
          <td colspan="2">Quantity</td>
          <td colspan="2">Rate</td>
          <td colspan="2">Discount %</td>
          <td colspan="4">GST</td>
          <td colspan="4">Amount</td>
        </tr>

        <?php
        $gst_amt=0;
        $total_inr=0;
        ?>

        <?php if($invoice->goodsservicereceipts_items): ?>
        <?php $i=1; ?>
        <?php $__currentLoopData = $invoice->goodsservicereceipts_items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php
        $gst_amt += $item->cgst_amount+$item->sgst_utgst_amount+$item->igst_amount;
        $total_inr += $item->total;
        ?>

        <tr>
          <td colspan="4"><?php echo e($i++); ?></td>
          <td colspan="1"><?php echo e($item->item_name); ?></td>
          <td colspan="3"><?php echo e($item->hsn_sac); ?></td>
          <td colspan="2"><?php echo e($item->qty); ?></td>
          <td colspan="2"><?php echo e($item->price_af_discount); ?></td>
          <td colspan="2"><?php echo e($item->discount_item ?? 0); ?>%</td>
          <td colspan="4"><?php echo e(round($item->cgst_amount+$item->sgst_utgst_amount+$item->igst_amount,2)); ?></td>
          <td colspan="3"><?php echo e($item->total); ?></td>
        </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>

        <tr>
          <td colspan="14">Total</td>
          <td colspan="4"><?php echo e(round($gst_amt,2)); ?></td>
          <td colspan="3"><?php echo e($total_inr); ?></td>
        </tr>

        <tr>
          <td colspan="10" style="width: 50%">
            Invoice Amount In Words<br />
            <strong><?php echo e($invoice->amount_in_words); ?></strong>
          </td>
          <td colspan="10" style="width: 50%">
            <b>Amounts:</b><br />
            <?php
            $discount_amount = ($total_inr * $invoice->discount) / 100 ?? 0;
           //  dd($discount_amount);
           $rounded = ($total_inr +  $gst_amt)- $discount_amount;
         ?>

              Sub Total  <span style="float:right;"><?php echo e(round(($total_inr +  $gst_amt)- $discount_amount)); ?></span>
              <br>
              Round off  <span style="float:right;"><?php echo e(round(fmod($rounded,1),2)); ?></span>
          
          </td>
        </tr>

        <tr>
          <td colspan="10" style="width: 50%">
            Payment mode<br />
            <b> Cash</b>
          </td>

          <td colspan="10" style="width: 50%">
             <b>Total</b> <span style="float:right;"><?php echo e(round($rounded)); ?></span>
          </td>
        </tr>

        <tr>
          <td colspan="3" rowspan="2">HSN / SAC</td>
          <td colspan="3" rowspan="2">Taxable Amount</td>
          <td colspan="4">CGST</td>
          <td colspan="4">SGST</td>
          <td colspan="4">IGST</td>
          <td colspan="2" rowspan="2">Total Tax Amount</td>
        </tr>

        <tr>
          <td colspan="2">Rate</td>
          <td colspan="2">Amount</td>
          <td colspan="2">Rate</td>
          <td colspan="2">Amount</td>    
          <td colspan="2">Rate</td>
          <td colspan="2">Amount</td>
        </tr>

        <?php 
        $taxable_amt=0;
        $csgst_amt=0;
        $sgst_amt=0;
        $igst_amt=0;
        $total_taxable_amt=0;
        $i=1;
         ?>

        <?php if($invoice->goodsservicereceipts_items): ?>
        <?php $__currentLoopData = $invoice->goodsservicereceipts_items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <tr>

          <?php
          $taxable_amt += $item->taxable_amount;
          $csgst_amt += $item->cgst_amount;
          $sgst_amt += $item->sgst_utgst_amount;
          $igst_amt += $item->igst_amount;
          $total_taxable_amt += $item->cgst_amount+$item->sgst_utgst_amount+$item->igst_amount;
          ?>

          <td colspan="3"><?php echo e($item->hsn_sac); ?></td>
          <td colspan="3"><?php echo e($item->taxable_amount); ?></td>
          <td colspan="2"><?php echo e($cs_gst_percent); ?></td>
          <td colspan="2"><?php echo e(round($item->cgst_amount,2)); ?></td>
          <td colspan="2"><?php echo e($st_gst_percent); ?></td>
          <td colspan="2"><?php echo e(round($item->sgst_utgst_amount,2)); ?></td>
          <td colspan="2"><?php echo e($igst_percent); ?></td>
          <td colspan="2"><?php echo e(round($item->igst_amount,2)); ?></td>
          <td colspan="2"><?php echo e(round($item->cgst_amount+$item->sgst_utgst_amount+$item->igst_amount,2)); ?></td>
        </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>

        <tr>
          <td colspan="3">Total</td>
          <td colspan="3"><?php echo e($taxable_amt); ?></td>
          <td colspan="2"></td>
          <td colspan="2"><?php echo e(round($csgst_amt,2)); ?></td>
          <td colspan="2"></td>
          <td colspan="2"><?php echo e(round($sgst_amt,2)); ?></td>
          <td colspan="2"></td>
          <td colspan="2"><?php echo e(round($igst_amt,2)); ?></td>
          <td colspan="2"><?php echo e(round($total_taxable_amt,2)); ?></td>
        </tr>

        <tr>
          <td colspan="10" rowspan="3">
            <b>Terms and conditions :</b><br />
            <p>
              1. Cost Of Unseen Complications Arised During Servicing Will Be
              Born By The Customer
            </p>
            <p>2. Vehicle Parking, Driven At Owners Risk.</p>
            <p>3. KM is just mentioned for reference purpose.</p>
            <p>4. No Guarantee on Gas & Electronic Items.</p>
            <p>5. All Dispute Subject to Kalyan Jurisdiction.</p>
            <p>5.50% Advance To Be Paid For Job Of More Than Rs.2500/-.</p>
          </td>
        </tr>

        <tr>
          <td colspan="10">
            <b>Company's Bank details :</b><br />
            Bank Name: <?php echo e($bank_details->bank_name); ?>

            <br />
            Branch Name : <?php echo e($bank_details->bank_branch); ?>

            <br />
            Bank IFSC Code : <?php echo e($bank_details->ifsc); ?>

            <br />
            Account Number : <?php echo e($bank_details->ac_number); ?>

            <br />
            Account holder's Name : <?php echo e($bank_details->acc_holdername); ?>

          </td>
        </tr>

        <tr>
          <td colspan="10">
            For : <?php echo e($company->name); ?>

            <br /><br /><br />
            Authorised Signatory
          </td>
        </tr>
      </table>
        </div>

<?php if($download): ?>
    <style>@page{body{color:#000;} table{width:100%;border:1px solid #000;border-collapse:collapse;} table tr td,table tr th{border:1px solid #000;text-align:left;font-size:12px;padding:4px;}table tr th p, table tr td p,table tr td h2,table tr th h2{margin-bottom:0px;padding-bottom:0px;padding-top:0px;margin-top:0px;}.invoice_items tr th, .invoice_items tr td{padding:4px;}.no-border,.no-border tr td,.no-border tr th{border:none !important;}</style>
<?php endif; ?><?php /**PATH C:\wamp64\www\eureka\resources\views/backend/arinvoice/invoice_format.blade.php ENDPATH**/ ?>
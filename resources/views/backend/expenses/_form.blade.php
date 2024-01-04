    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('expense_category_id', 'Expense Category ',['class'=>'']) }}
            {{ Form::select('expense_category_id', $expense_categories, null,['class'=>'select2 form-control category', 'placeholder' => 'Please Select Expense Category','id'=>'expense_category_id']) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('expense_sub_category_id', 'Sub Category ',['class'=>'']) }}
            {{ Form::select('expense_sub_category_id', $expense_sub_categories, null,['class'=>'select2 form-control expense_subcategory', 'placeholder' => 'Please Select Expense Sub Category',]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('item_type_id', 'Type ',['class'=>'']) }}
            {{ Form::select('item_type_id', $item_types , null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Type','id'=>'item_type_id']) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('item_code', 'Item Code ') }}
            {{ Form::text('item_code', null, ['class' => 'form-control', 'placeholder' => 'Enter Item Code', 'required' => true,'id'=>'item_code']) }}
        </div>
    </div>
    <div class="col-md-12 col-12">
        <div class="form-group">
            {{ Form::label('product_desc', 'Expense Description ') }}
            {{ Form::textarea('product_desc', null, ['class' => 'form-control', 'placeholder' => 'Enter Expense Description', 'id'=>'product_desc']) }}
        </div>
    </div>
    <div class="col-md-12 col-12">
        <div class="form-group">
            {{ Form::label('consumer_desc', 'Consumer Description ') }}
            {{ Form::textarea('consumer_desc', null, ['class' => 'form-control', 'placeholder' => 'Enter Consumer Description', 'id'=>'consumer_desc']) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('brand_id', 'Brand ',['class'=>'']) }}
            {{ Form::select('brand_id', $brands, null,['class'=>'select2 form-control ', 'placeholder' => 'Please Select Brand','id'=>'brand_id',]) }}
        </div>
    </div>
    
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('variant', 'Variant ') }}
            {{ Form::text('variant', null, ['class' => 'form-control', 'placeholder' => 'Enter Variant','id'=>'variant', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('buom_pack_size', 'BUoM/ Pack Size ') }}
            {{ Form::text('buom_pack_size', null, ['class' => 'form-control', 'placeholder' => 'Enter BUoM/ Pack Size','id'=>'buom_pack_size', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('uom_id', 'UoM ',['class'=>'']) }}
            {{ Form::select('uom_id', $uoms , null,['class'=>'select2 form-control uom_id', 'placeholder' => 'Please Select UoM']) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('unit_case', 'Units/ Case Or Case Config ') }}
            {{ Form::text('unit_case', null, ['class' => 'form-control', 'placeholder' => 'Enter Units/ Case Or Case Config','id'=>'unit_case', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('hsn_code_id', 'HSN Code ',['class'=>'']) }}
            {{ Form::select('hsn_code_id', $hsncodes , null,['class'=>'select2 form-control hsncode_id', 'placeholder' => 'Please Select HSN Code']) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('batch', 'Batch ') }}
            {{ Form::text('batch', null, ['class' => 'form-control', 'placeholder' => 'Enter Batch','id'=>'batch', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('expiry_date', 'Expiry Date ') }}
            {{ Form::date('expiry_date', null, ['class' => 'form-control pickadate', 'placeholder' => 'Enter Expiry Date','id'=>'expiry_date', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('shelf_life', 'Self Life ',['class'=>'']) }}
            {{ Form::select('shelf_life', ['month'=>'Month','days'=>'Days'] , null,['class'=>'select2 form-control ','id'=>'shelf_life']) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('sourcing', 'Sourcing Unit/ Source ') }}
            {{ Form::text('sourcing', null, ['class' => 'form-control', 'placeholder' => 'Enter Sourcing Unit/ Source','required' => true,'id'=>'sourcing', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('case_pallet', 'Case/ Pallet ') }}
            {{ Form::text('case_pallet', null, ['class' => 'form-control', 'placeholder' => 'Enter Case/ Pallet','id'=>'case_pallet', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('layer_pallet', 'Layer/ Pallet ') }}
            {{ Form::text('layer_pallet', null, ['class' => 'form-control', 'placeholder' => 'Enter Layer/ Pallet','id'=>'layer_pallet', ]) }}
        </div>
    </div>
    <div class="col-md-2 col-12" id="">
        <div class="form-group">
            {{ Form::label('dimensions_unit_pack', 'Unit/ Pack ') }}
            {{ Form::text('dimensions_unit_pack', null, ['class' => 'form-control', 'placeholder' => 'Enter Unit/ Pack', ]) }}
        </div>
    </div>
    <div class="col-md-2 col-12">
        <div class="form-group">
            {{ Form::label('dimensions_length', 'Length ') }}
            {{ Form::text('dimensions_length', null, ['class' => 'form-control', 'placeholder' => 'Enter Length', ]) }}
        </div>
    </div>
    <div class="col-md-2 col-12">
        <div class="form-group">
            {{ Form::label('dimensions_width', 'Width') }}
            {{ Form::text('dimensions_width', null, ['class' => 'form-control', 'placeholder' => 'Enter Width', ]) }}
        </div>
    </div>
    <div class="col-md-2 col-12">
        <div class="form-group">
            {{ Form::label('dimensions_height', 'Height') }}
            {{ Form::text('dimensions_height', null, ['class' => 'form-control', 'placeholder' => 'Enter Height', ]) }}
        </div>
    </div>
    <div class="col-md-2 col-12">
        <div class="form-group">
            {{ Form::label('dimensions_net_weight', 'Net Weight') }}
            {{ Form::text('dimensions_net_weight', null, ['class' => 'form-control', 'placeholder' => 'Enter Net Weight', ]) }}
        </div>
    </div>
    <div class="col-md-2 col-12">
        <div class="form-group">
            {{ Form::label('dimensions_gross_weight', 'Gross Weight') }}
            {{ Form::text('dimensions_gross_weight', null, ['class' => 'form-control', 'placeholder' => 'Enter Gross Weight', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('ean_barcode', 'EAN/ Barcode') }}
            {{ Form::text('ean_barcode', null, ['class' => 'form-control', 'placeholder' => 'Enter EAN/ Barcode', ]) }}
        </div>
    </div>
    <div class="col-md-6 col-12">
        <div class="form-group">
            {{ Form::label('mrp', 'MRP') }}
            {{ Form::text('mrp', null, ['class' => 'form-control', 'placeholder' => 'Enter MRP', ]) }}
        </div>
    </div>
    
    <div class="col-md-6 col-6">
        {{ Form::label('visibility', 'Show / Hide') }}
        <fieldset class="">
            <div class="radio radio-success">
            {{ Form::radio('visibility','1',true,['id'=>'radioshow']) }}
            {{ Form::label('radioshow', 'Yes') }}
            </div>
            <!-- </fieldset>
            <fieldset> -->
            <div class="radio radio-danger">
            {{ Form::radio('visibility','0',false,['id'=>'radiohide']) }}
            {{ Form::label('radiohide', 'No') }}
            </div>
        </fieldset>
    </div>
    
    <div class="col-md-12 col-12">
        <div class="form-group">
            {{ Form::label('product_thumb', 'Expense Thumbnail *') }}
            <div class="custom-file">
                {{ Form::file('product_thumb', ['class' => 'custom-file-input','id'=>'product_thumb']) }}
                <label class="custom-file-label" for="product_thumb">Choose file</label>
            </div>
        </div>
    </div>
    <div class="col-12 d-flex justify-content-start">
        {{ Form::submit('Save', array('class' => 'btn btn-primary mr-1 mb-1','id'=>'submit_expense_category')) }}
        <button type="reset" class="btn btn-light-secondary mr-1 mb-1">Reset</button>
    </div>
<div class="sidenav-overlay"></div>
<div class="drag-target"></div>

<!-- BEGIN: Footer-->
<footer class="footer footer-static footer-light navbar-border">
    <p class="clearfix blue-grey lighten-2 text-sm-center mb-0 px-2">
        <span class="float-md-left d-block d-md-inline-block">
            Copyright &copy; 2018 - {{ date('Y') }}
            <a class="text-bold-800 grey darken-2" href="{{ route('admin.dashboard') }}" target="_blank">3PSAP</a>
        </span>
    </p>
</footer>
<!-- END: Footer-->


<!-- BEGIN: Vendor JS-->
<script src="{{ asset('public/backend-assets/app-assets/vendors/js/vendors.min.js') }}"></script>
<!-- BEGIN Vendor JS-->
<!-- BEGIN: Page JS-->
<!-- <script src="{{ asset('public/backend-assets/app-assets/js/scripts/forms/select/form-select2.min.js') }}"></script>
<script src="{{ asset('public/backend-assets/app-assets/vendors/js/forms/select/select2.full.min.js') }}"></script> -->
<!-- END: Page JS-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.repeater/1.2.1/jquery.repeater.min.js"></script>
<!-- BEGIN: Page Vendor JS-->
<script src="{{ asset('public/backend-assets/app-assets/vendors/js/charts/apexcharts/apexcharts.min.js') }}"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="{{ asset('public/backend-assets/app-assets/js/core/app-menu.js') }}"></script>
<script src="{{ asset('public/backend-assets/app-assets/js/core/app.js') }}"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="{{ asset('public/backend-assets/app-assets/js/scripts/cards/card-statistics.js') }}"></script>
<!-- END: Page JS-->


<script src="{{ asset('public/backend-assets/js/scripts/pages/bootstrap-toast.min.js') }}"></script>
<script src="{{ asset('public/backend-assets/vendors/js/extensions/toastr.min.js') }}"></script>
<script src="{{ asset('public/backend-assets/js/scripts/extensions/toastr.min.js') }}"></script>
<script src="{{ asset('public/backend-assets/js/script.js') }}"></script>
<script src="{{ asset('public/backend-assets/js/invoice-gst-calculation.js') }}"></script>
{{--  <script src="{{ asset('public/backend-assets/js/jquery.repeater.min.js') }}"></script>
<script src="{{ asset('public/backend-assets/js/form-repeater.min.js') }}"></script>  --}}
<script src="{{ asset('public/backend-assets/app-assets/vendors/js/pickers/dateTime/moment-with-locales.min.js') }}">
</script>


{{--  //new js by naresh  --}}
<script src="{{ asset('public/backend-assets/js/repeater_new.js') }}"></script>
{{--  //new js by naresh  end --}}


<script
    src="{{ asset('public/backend-assets/app-assets/vendors/js/pickers/dateTime/bootstrap-datetimepicker.min.js') }}">
</script>
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>

<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>


<script>
    function updateSerialNumber() {

        $('#repeater tbody tr').each(function(index) {
            var serialNumber = index + 1;
            $(this).find('.sr_no').html(serialNumber);
        });
    }
    $(document).ready(function() {
        updateSerialNumber();
    });

    $(document).on('click', '.old_rep_item_del', function() {
        updateSerialNumber();
    });
</script>

<script>
    $(document).on('click', '.old_rep_item_del', function() {
        let $deleteButton = $(this);
        let $row = $deleteButton.closest('.data-repeater-item');

        let cnf = confirm('Are you sure you want to delete this record?');

        if (cnf) {
            $row.remove();
            setTimeout(() => {
                calculate_grand_total();
            }, 300);
        }
    });
</script>

{{-- to restrcit user to enter digits in item desc filed --}}
<script>
    function validateInput(input) {
        var inputValue = $(input).val();
        if (!/^[A-Za-z\s]+$/.test(inputValue)) {
            // alert('Please enter only letters and spaces.');
            $(input).val(""); // Clear the input
        }
    }
</script>


<script>
    function get_doc_number(id) {
        $.ajax({
            method: 'post',
            headers: {
                'X-CSRF-Token': '{{ csrf_token() }}',
            },
            url: '{{ route('admin.get_doc_number') }}',
            data: {
                id: id
            },
            // dataType: 'json',
            success: function(data) {
                // console.log(data);
                $('#doc_no').val(data);
            }
        });
    }

    $('#series_no').on('change', function() {
        var val = $(this).val();
        // alert(val);
        if (val != '') {
            get_doc_number(val);
        }
    });
</script>



<script>
    var country_selected = `{{ old('country') ?? ($address->country ?? '') }}`;
    // alert(country_selected);
    var state_selected = `{{ old('state') ?? ($address->state ?? '') }}`;
    var district_selected = `{{ old('district') ?? ($address->district ?? '') }}`;
</script>

<script>
    $('.select2').select2({
        placeholder: "Please select"
    });
</script>

<script>
    var values = $('.tags option[selected="true"]').map(function() {
        return $(this).val();
    }).get();
    $('.tags').select2({
        placeholder: "Please select"
    });
</script>




<script>
    WebFont.load({
        google: {
            "families": ["Poppins:300,400,500,600,700", "Roboto:300,400,500,600,700"]
        },
        active: function() {
            sessionStorage.fonts = true;
        }
    });


    $(document).ready(function() {
        if ($("#editor").length != 0) {
            CKEDITOR.replace('editor', {
                height: 260,

            });
        }
        if ($("#editor1").length != 0) {
            CKEDITOR.replace('editor1', {
                height: 260,

            });
        }
        if ($("#editor2").length != 0) {
            CKEDITOR.replace('editor2', {
                height: 260,

            });
        }
        // $(".select2").select2();

        $(function() {
            $('.datepicker').datetimepicker();
        });
    });

    // $(document).ready(function() {

    //     $('#tbl-datatable').DataTable({
    //         dom: 'Bfrtip',
    //         scrollX: true,
    //         fixedHeader: true,
    //         buttons: [{
    //                 text: '<i class="feather icon-printer"></i> Print',
    //                 extend: 'print',
    //                 exportOptions: {
    //                     columns: [0, 1, 2, 3, 4, 5, 6, 7]
    //                 },

    //                 title: function() {
    //                     var printTitle = 'School Master';
    //                     return printTitle
    //                 },
    //                 className: 'btn btn-info text-white font-weight-bold pb-0 pt-0 px-1',
    //             },

    //             {
    //                 text: '<i class="feather icon-download-cloud"></i> Excel',
    //                 extend: 'excel',
    //                 exportOptions: {
    //                     columns: [0, 1, 2, 3, 4, 5, 6, 7]
    //                 },

    //                 title: function() {
    //                     var printTitle = 'School Master';
    //                     return printTitle
    //                 },
    //                 className: 'btn btn-success text-white font-weight-bold pb-0 pt-0 px-1',
    //             },

    //         ],


    //     });


    // })
    $("#repeater").createRepeater({
        showFirstItemToDefault: true,
    });
</script>





{{-- for max length of characters on input --}}
<script>
    function maxlength(event) {
        const ele = event.target;
        const maxlength = ele.maxLength;
        const value = ele.value;
        if (event.type == 'keypress') {
            if (value.length >= maxlength) {
                event.preventDefault();
            }
        } else if (event.type == 'keyup') {
            if (value.length > maxlength) {
                ele.value = value.substring(0, maxlength);
            }
        }
    }

    $('input[type=text][maxlength]').on('keypress keyup', maxlength);
</script>


{{-- get data in modal for routes --}}
<script>
    $(document).on('change', '#area_id', function() {



        var area_id = $(this).val();
        // alert(area_id);
        if (area_id) {
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.routes') }}',
                data: {
                    area_id: area_id
                },
                dataType: 'json',
                success: function(data) {
                    // console.log(data);
                    if (data != '') {
                        $('#route_id').html('<option value="">Select Route</option>');
                        $.each(data, function(key, value) {
                            $("#route_id").append('<option value="' + key + '">' + value +
                                '</option>');


                        });
                    } else {
                        $('#route_id').html('<option value="">Select Route</option>');
                    }

                }
            });
        } else {
            $('#route_id').html('<option value="">Select Route</option>');
        }
    });
</script>


{{-- get bill to dropdown --}}

<script>
    $(document).ready(function() {
        $('#bill_to').html('<option value="">Select Bill To</option>');
        var old_party_id = <?php echo json_encode(old('party_id')); ?>;
        var ship_from_old_data = <?php echo json_encode(old('bill_to')); ?>;

        var party_id = $('#party_id option:selected').val();
        var ship_from_id = <?php echo json_encode($model->bill_to ?? ''); ?>;
        // alert(ship_from_id);

        // incase of old and edit data
        if (ship_from_old_data || party_id) {
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.billto') }}',
                data: {
                    party_id: old_party_id ?? party_id
                },
                dataType: 'json',
                success: function(data) {
                    // console.log(data);
                    if (data != '') {
                        $('#bill_to').html(
                            '<option value="">Select Bill To</option>');
                        $.each(data, function(key, value) {
                            // alert(key);
                            // alert(cp_old_data);
                            if (ship_from_old_data == key) {
                                $("#bill_to").append('<option value="' +
                                    ship_from_old_data + '" selected>' + value +
                                    '</option>');
                            } else if (ship_from_id == key) {
                                $("#bill_to").append('<option value="' +
                                    ship_from_id + '" selected>' + value +
                                    '</option>');
                            } else {
                                $("#bill_to").append('<option value="' +
                                    key +
                                    '">' + value + '</option>');
                            }

                        });
                    } else {
                        $('#bill_to').html(
                            '<option value="">Select Bill To</option>');
                    }

                }
            });
        }


        // on change
        $('#party_id').on('change', function() {

            var party_id = $(this).val();
            // alert(area_id);
            // if (party_id) {
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.billto') }}',
                data: {
                    party_id: party_id ?? old_party_id
                },
                dataType: 'json',
                success: function(data) {
                    // console.log(data);
                    if (data != '') {
                        $('#bill_to').html(
                            '<option value="">Select Bill To</option>');
                        $.each(data, function(key, value) {
                            // alert(key);
                            // alert(cp_old_data);
                            if (value != null) {
                                if (ship_from_old_data == key) {
                                    $("#bill_to").append('<option value="' +
                                        ship_from_old_data + '" selected>' +
                                        value +
                                        '</option>');
                                } else {
                                    $("#bill_to").append('<option value="' +
                                        key +
                                        '">' + value + '</option>');
                                }
                            } else {
                                $('#bill_to').html(
                                    '<option value="">Select Bill to</option>'
                                );
                            }

                        });
                    } else {
                        $('#bill_to').html(
                            '<option value="">Select Bill to</option>');
                    }

                }
            });
            // }
        });

    });
</script>

{{-- get ship from dropdwon  --}}
<script>
    $(document).ready(function() {
        $('#ship_from').html('<option value="">Select Ship From</option>');
        var old_party_id = <?php echo json_encode(old('party_id')); ?>;
        var ship_from_old_data = <?php echo json_encode(old('ship_from')); ?>;

        var party_id = $('#party_id option:selected').val();
        var ship_from_id = <?php echo json_encode($model->ship_from ?? ''); ?>;
        // alert(ship_from_id);

        // incase of old and edit data
        if (ship_from_old_data || party_id) {
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.shipfrom') }}',
                data: {
                    party_id: old_party_id ?? party_id
                },
                dataType: 'json',
                success: function(data) {
                    // console.log(data);
                    if (data != '') {
                        $('#ship_from').html(
                            '<option value="">Select Ship From</option>');
                        $.each(data, function(key, value) {
                            // alert(key);
                            // alert(cp_old_data);
                            if (ship_from_old_data == key) {
                                $("#ship_from").append('<option value="' +
                                    ship_from_old_data + '" selected>' + value +
                                    '</option>');
                            } else if (ship_from_id == key) {
                                $("#ship_from").append('<option value="' +
                                    ship_from_id + '" selected>' + value +
                                    '</option>');
                            } else {
                                $("#ship_from").append('<option value="' +
                                    key +
                                    '">' + value + '</option>');
                            }

                        });
                    } else {
                        $('#ship_from').html(
                            '<option value="">Select Ship From</option>');
                    }

                }
            });
        }


        // on change
        $('#party_id').on('change', function() {

            var party_id = $(this).val();
            // alert(area_id);
            // if (party_id) {
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.shipfrom') }}',
                data: {
                    party_id: party_id ?? old_party_id
                },
                dataType: 'json',
                success: function(data) {
                    // console.log(data);
                    if (data != '') {
                        $('#ship_from').html(
                            '<option value="">Select Ship From</option>');
                        $.each(data, function(key, value) {
                            // alert(key);
                            // alert(cp_old_data);
                            if (value != null) {
                                if (ship_from_old_data == key) {
                                    $("#ship_from").append('<option value="' +
                                        ship_from_old_data + '" selected>' +
                                        value +
                                        '</option>');
                                } else {
                                    $("#ship_from").append('<option value="' +
                                        key +
                                        '">' + value + '</option>');
                                }
                            } else {
                                $('#ship_from').html(
                                    '<option value="">Select Ship From</option>'
                                );
                            }

                        });
                    } else {
                        $('#ship_from').html(
                            '<option value="">Select Ship From</option>');
                    }

                }
            });
            // }
        });

    });
</script>





{{-- get contact person dropdwon  --}}
<script>
    $(document).ready(function() {
        $('#contact_person').html('<option value="">Select Contact Person</option>');
        var old_party_id = <?php echo json_encode(old('party_id')); ?>;
        var cp_old_data = <?php echo json_encode(old('contact_person')); ?>;

        var party_id = $('#party_id option:selected').val();

        var contact_person_id = <?php echo json_encode($model->contact_person ?? ''); ?>;
        // alert(contact_person_id);

        // incase of old and edit data
        if (old_party_id || party_id) {
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.contactperson') }}',
                data: {
                    party_id: old_party_id ?? party_id
                },
                dataType: 'json',
                success: function(data) {
                    // console.log(data);
                    if (data != '') {
                        $('#contact_person').html(
                            '<option value="">Select Contact Person</option>');
                        $.each(data, function(key, value) {
                            // alert(key);
                            // alert(cp_old_data);
                            if (cp_old_data == key) {
                                $("#contact_person").append('<option value="' +
                                    cp_old_data + '" selected>' + value +
                                    '</option>');
                            } else if (contact_person_id == key) {
                                $("#contact_person").append('<option value="' +
                                    contact_person_id + '" selected>' + value +
                                    '</option>');
                            } else {
                                $("#contact_person").append('<option value="' +
                                    key +
                                    '">' + value + '</option>');
                            }

                        });
                    } else {
                        $('#contact_person').html(
                            '<option value="">Select Contact Person</option>');
                    }

                }
            });
        }


        // on change
        $('#party_id').on('change', function() {

            var party_id = $(this).val();
            // alert(party_id);
            // if (party_id) {
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.contactperson') }}',
                data: {
                    party_id: party_id ?? old_party_id
                },
                dataType: 'json',
                success: function(data) {
                    // console.log(data);
                    if (data != '') {
                        $('#contact_person').html(
                            '<option value="">Select Contact Person</option>');
                        $.each(data, function(key, value) {
                            // alert(key);
                            // alert(cp_old_data);
                            if (value != null) {
                                if (cp_old_data == key) {
                                    $("#contact_person").append('<option value="' +
                                        cp_old_data + '" selected>' + value +
                                        '</option>');
                                } else {
                                    $("#contact_person").append('<option value="' +
                                        key +
                                        '">' + value + '</option>');
                                }
                            } else {
                                $('#contact_person').html(
                                    '<option value="">Select Contact Person</option>'
                                );
                            }

                        });
                    } else {
                        $('#contact_person').html(
                            '<option value="">Select Contact Person</option>');
                    }

                }
            });
            // }
        });

    });
</script>


{{-- dependent dropdown for route and area --}}
<script>
    // area_field
    $(document).ready(function() {
        var option_def = '<option value="">Select Route</option>';
        // $('#beat').html('<option value="">Select Beat</option>');
        $('#route_id').html(option_def);


        //on edit data for area and route
        var area = $('#area_field :selected').val();
        // alert(area);
        var routes = <?php echo isset($model->route_id) ? $model->route_id : 0; ?>;
        var old_data = <?php echo json_encode(old('route_id')); ?>;
        // alert(routes);
        if (area) {
            $.ajax({
                method: 'post',
                headers: {
                    'X-CSRF-Token': '{{ csrf_token() }}',
                },
                url: '{{ route('admin.routes') }}',
                data: {
                    area_id: area
                },
                dataType: 'json',
                success: function(data) {
                    // console.log(data);
                    if (data != '') {
                        $('#routes').html('<option value="">Select Route</option>');
                        $.each(data, function(key, value) {

                            if (old_data) {
                                if (old_data == key) {
                                    $("#routes").append('<option value="' + old_data +
                                        '" selected>' + value + '</option>');
                                } else {
                                    $("#routes").append('<option value="' + key + '">' +
                                        value + '</option>');
                                }
                            } else {

                                if (routes == key) {
                                    $("#routes").append('<option value="' + routes +
                                        '" selected>' + value + '</option>');
                                } else {
                                    $("#routes").append('<option value="' + key + '">' +
                                        value + '</option>');
                                }
                            }

                        });
                    } else {
                        $('#routes').html('<option value="">Select Route</option>');
                    }

                }
            });

        } else {
            $('#routes').html(option_def);
        }


        // on edit data for route and beat
        setTimeout(() => {
            var route = $('#routes option:selected').val();
            var beats = <?php echo isset($model->beat_id) ? $model->beat_id : 0; ?>;
            var old_data_beat = <?php echo json_encode(old('beat_id')); ?>;
            // alert(old_data_beat);

            if (route) {
                $.ajax({
                    method: 'post',
                    headers: {
                        'X-CSRF-Token': '{{ csrf_token() }}',
                    },
                    url: '{{ route('admin.beat') }}',
                    data: {
                        route_id: route ?? old_data
                    },
                    dataType: 'json',
                    success: function(data) {
                        // console.log(data);
                        // alert(data);
                        if (data != '') {
                            $('#beat').html('<option value="">Select Beat</option>');
                            $.each(data, function(key, value) {
                                if (old_data) {
                                    if (old_data_beat == key) {
                                        $("#beat").append('<option value="' +
                                            old_data_beat + '" selected>' +
                                            value + '</option>');
                                    } else {
                                        $("#beat").append('<option value="' + key +
                                            '">' + value + '</option>');
                                    }
                                } else {
                                    if (beats == key) {
                                        $("#beat").append('<option value="' +
                                            beats + '" selected>' + value +
                                            '</option>');
                                    } else {
                                        $("#beat").append('<option value="' + key +
                                            '">' + value + '</option>');
                                    }
                                }

                            });
                        } else {
                            $('#beat').html('<option value="">Select Beat</option>');
                        }

                    }
                });
            }

        }, 200);





        //on create data


        $('#area_field').on('change', function() {
            $('#beat').html('<option value="">Select Beat</option>');
            var area_id = $(this).val();
            // alert(area_id);
            if (area_id) {
                $.ajax({
                    method: 'post',
                    headers: {
                        'X-CSRF-Token': '{{ csrf_token() }}',
                    },
                    url: '{{ route('admin.routes') }}',
                    data: {
                        area_id: area_id
                    },
                    dataType: 'json',
                    success: function(data) {
                        // console.log(data);
                        if (data != '') {
                            $('#routes').html('<option value="">Select Route</option>');
                            $.each(data, function(key, value) {
                                if (old_data == key) {
                                    $("#routes").append('<option value="' +
                                        old_data + '" selected>' + value +
                                        '</option>');
                                } else {
                                    $("#routes").append('<option value="' + key +
                                        '">' + value + '</option>');
                                }

                            });
                        } else {
                            $('#routes').html('<option value="">Select Route</option>');
                        }

                    }
                });
            } else {
                $('#routes').empty();
                $('#beat').empty();
            }
        });


        //for beat
        $('#routes').on('change', function() {
            var route_id = $(this).val();
            // alert(area_id);
            if (route_id) {
                $.ajax({
                    method: 'post',
                    headers: {
                        'X-CSRF-Token': '{{ csrf_token() }}',
                    },
                    url: '{{ route('admin.beat') }}',
                    data: {
                        route_id: route_id
                    },
                    dataType: 'json',
                    success: function(data) {
                        // console.log(data);
                        if (data != '') {
                            $('#beat').html('<option value="">Select Beat</option>');
                            $.each(data, function(key, value) {
                                if (old_data == key) {
                                    $("#beat").append('<option value="' + old_data +
                                        '" selected>' + value + '</option>');
                                } else {
                                    $("#beat").append('<option value="' + key +
                                        '">' + value + '</option>');
                                }

                            });
                        } else {
                            $('#beat').html('<option value="">Select Beat</option>');
                        }

                    }
                });
            } else {
                $('#beat').html('<option value="">Select Beat</option>');
            }
        });

    });
</script>

<script>
    var count = 0;
    $(document).on('click', '.storage_locations ', function(e) {
        count++;
        if ($(this).val() != '') {
            console.log(count);
            if (count % 2 == 0) {
                var parent_div = $(this).parents()[2];
                var suffix = $(this).attr('name');
                $(this).closest('.item_row').find('.modal').modal('show');
            }
        }
    });
</script>

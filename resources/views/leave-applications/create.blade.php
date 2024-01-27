@extends('layouts.app')

@push('styles')

@endpush

@section('content')
            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Apply Leave</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{'/leave_applications'}}">Leave Applications</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Apply Leave</li>
                    </ol>
                </div>
            </div>
            <!-- PAGE-HEADER END -->

            <!-- ROW-2 OPEN -->
            <div class="row">


                <div class="col-lg-12">
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> There were some problems with your input.<br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="card accordion-wizard">
                        <div class="card-header">
                            <h3 class="card-title">Leave Application FORM</h3>
                        </div>
                        <div class="card-body">
                            {!! Form::open(array('route' => 'leave_applications.store','method'=>'POST')) !!}
                            <div class="row">
                                <div style="color: red; margin-bottom: 10px;">NOTE: It is necessary to inform your teamlead or manager at least 10 days in advance to apply for annual leave. Thanks </div>
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <strong>Leave Type:</strong>
                                        {!! Form::select('leave_type_id', $leaveTypes->pluck('name','id'), null, ['class' => 'form-control', 'placeholder' => 'Select Leave Type' , 'id' => 'leave_type']) !!}
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6" id="start-time-field" style="display: none;">
                                    <div class="form-group">
                                        <strong>Start Time:</strong>
                                        {!! Form::time('start_time', null, ['class' => 'form-control', 'placeholder' => 'Start Time', 'id' => 'start_time']) !!}
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6" id="end-time-field" style="display: none;">
                                    <div class="form-group">
                                        <strong>End Time:</strong>
                                        {!! Form::time('end_time', null, ['class' => 'form-control', 'placeholder' => 'End Time', 'id' => 'end_time']) !!}
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12" id="number_of_hours">
                                    <div class="form-group">
                                        <strong>Number of Hours:</strong>
                                        {!! Form::text('number_of_hours', null, ['class' => 'form-control', 'placeholder' => 'Number of Hours',  'readonly' => true, 'id' => 'total_hours']) !!}
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6">
                                    <div class="form-group">
                                        <strong>Start Date:</strong>
                                        {!! Form::date('start_date', null, ['class' => 'form-control', 'placeholder' => 'Start Date', 'id' => 'start_date','min' => now()->format('Y-m-d')]) !!}
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-6">
                                    <div class="form-group">
                                        <strong>End Date:</strong>
                                        {!! Form::date('end_date', null, ['class' => 'form-control', 'placeholder' => 'End Date', 'id' => 'end_date','min' => now()->format('Y-m-d')]) !!}
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12" id="number_of_days">
                                    <div class="form-group">
                                        <strong>Number of Days:</strong>
                                        {!! Form::text('number_of_days', null, ['class' => 'form-control', 'placeholder' => 'Number of Days', 'readonly' => true, 'id' => 'total_days']) !!}
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <strong>Reason:</strong>
                                        {!! Form::textarea('reason', null, ['class' => 'form-control', 'placeholder' => 'Reason for Leave']) !!}
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                            {!! Form::close() !!}
                        </div>
                    </div>
                </div>
            </div>
            <!-- ROW-2 CLOSED -->

@push('script')
    <script>
        $(document).ready(function() {
            // Function to calculate the number of days between two dates
            function calculateDays() {
                var startDate = new Date($('#start_date').val());
                var endDate = new Date($('#end_date').val());

                // Check if both dates are valid
                if (!isNaN(startDate.getTime()) && !isNaN(endDate.getTime())) {
                    // Calculate the time difference in milliseconds
                    var timeDiff = endDate.getTime() - startDate.getTime();

                    // Calculate the number of days, considering the same date as 1 day
                    var diffDays = Math.ceil(timeDiff / (1000 * 3600 * 24)) + 1;

                    // Update the number_of_days input field
                    $('#total_days').val(diffDays);
                }
            }
            function calculateHours() {
                var startTime = $('#start_time').val();
                var endTime = $('#end_time').val();

                // Check if both start and end times are provided
                if (startTime && endTime) {
                    // Convert start and end times to JavaScript Date objects
                    var startDate = new Date('1970-01-01T' + startTime + ':00');
                    var endDate = new Date('1970-01-01T' + endTime + ':00');

                    // Calculate the time difference in milliseconds
                    var timeDiff = endDate - startDate;

                    // Calculate the number of hours
                    var numberOfHours = timeDiff / (1000 * 60 * 60);

                    // Update the "Number of Hours" field
                    $('#total_hours').val(numberOfHours.toFixed(2)); // Display hours with two decimal places
                }
            }

            // Attach event listeners
            $('#start_time, #end_time').change(function() {
                calculateHours();
            });

            // Initial calculation when the page loads
            calculateHours();

            function toggleTimeFields() {
                var leaveType = $('#leave_type').val();
                if (leaveType == 5) {
                    $('#start-time-field').show();
                    $('#end-time-field').show();
                    $('#number_of_days').hide();
                    $('#number_of_hours').show();
                } else {
                    $('#start-time-field').hide();
                    $('#end-time-field').hide();
                    calculateDays(); // Calculate the number of days when not Short Leave
                    $('#number_of_hours').hide();
                    $('#number_of_days').show();
                }
            }

            // Listen to changes in start_date and end_date fields
            $('#start_date, #end_date').change(function() {
                calculateDays();
            });

            $('#leave_type').change(function() {
                toggleTimeFields();
            });

            // Initial toggle based on the selected leave type (on page load)
            toggleTimeFields();
        });
    </script>

@endpush
@endsection

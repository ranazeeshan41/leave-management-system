@extends('layouts.app')

@push('styles')
    <!-- INTERNAL BOOTSTRAP-DATERANGEPICKER CSS -->
    <link rel="stylesheet" href="{{asset('theme/assets/plugins/bootstrap-daterangepicker/daterangepicker.css')}}">
@endpush

@section('content')
            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Attendance Report Form</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('attendance.index')}}">Attendance Report</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Attendance Report Form</li>
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
                            <h3 class="card-title">Attendance Report Form</h3>
                        </div>
                        <div class="card-body">
                            {!! Form::open(array('route' => 'attendance.report','method'=>'POST')) !!}
                            <div class="row">


                                <div class="col-xs-12 col-sm-12 col-md-6">
                                    <div class="form-group">
                                        <strong>Employee:</strong>
                                        <select name="user" class="form-control custom-select select2">
                                            @foreach($users as $user)
                                                <option value={{$user->id}}>{{$user->name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>

                                <div class="col-xs-12 col-sm-12 col-md-6">
                                    <div class="form-group">
                                        <strong>Date Range:</strong>
                                        <div class="input-group">
                                            <div class="input-group-text">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" name="dates" class="form-control pull-right" id="reportDates">
                                        </div>

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
    <!-- INTERNAL BOOTSTRAP-DATERANGEPICKER JS -->
    <script src="{{asset('theme/assets/plugins/bootstrap-daterangepicker/moment.min.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $(function(e) {
            $('#reportDates').daterangepicker();
        });
    </script>

@endpush
@endsection

@extends('layouts.app')

@push('styles')

@endpush

@section('content')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Attendance</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{'/employees'}}">Attendance</a></li>
                <li class="breadcrumb-item active" aria-current="page">Attendance Upload</li>
            </ol>
        </div>
        {{--<div class="ml-auto pageheader-btn">
            <a href="{{ route('attendance.calculate') }}" class="btn btn-primary btn-icon text-white mr-2">
									<span>
										<i class="fe fe-plus"></i>
									</span> get result
            </a>

        </div>--}}
    </div>
    <!-- PAGE-HEADER END -->

    <!-- ROW-2 OPEN -->
    <div class="row">


        <div class="col-lg-12">
            @if ($message = Session::get('success'))
                <div class="alert alert-success">
                    <p>{{ $message }}</p>
                </div>
            @endif
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
                    <h3 class="card-title">Attendance Upload</h3>
                </div>
                <div class="card-body">
                    <form action="{{ route('attendance.save') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="file" name="file">
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Upload</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ROW-2 CLOSED -->

    @push('script')


    @endpush
@endsection

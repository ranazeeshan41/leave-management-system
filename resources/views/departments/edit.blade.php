@extends('layouts.app')

@push('styles')

@endpush

@section('content')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Departments</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{'/departments'}}">Departments</a></li>
                <li class="breadcrumb-item active" aria-current="page">Create Departments</li>
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
                    <h3 class="card-title">Department Create FORM</h3>
                </div>
                <div class="card-body">
                    {!! Form::model($department, ['method' => 'PATCH','route' => ['departments.update', $department->id]]) !!}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Name:</strong>
                                {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
    <!-- ROW-2 CLOSED -->

    @push('script')


    @endpush
@endsection

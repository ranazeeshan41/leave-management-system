@extends('layouts.app')

@section('content')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">User Leaves</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{url('users')}}">Users</a></li>
                <li class="breadcrumb-item active" aria-current="page">User Leave</li>
            </ol>
        </div>
    </div>
    <!-- PAGE-HEADER END -->
    <div class="row">
        {{-- Show leave counts for Sick Leave --}}
        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Sick Leave (Total)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['total']['Sick Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-thermometer-three-quarters text-secondary1"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Sick Leave (Remaining)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['remaining']['Sick Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-thermometer-three-quarters text-secondary1"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Sick Leave (Taken)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['taken']['Sick Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-thermometer-three-quarters text-secondary1"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- Show leave counts for Casual Leave --}}
        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Casual Leave (Total)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['total']['Casual Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-contao text-secondary"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Casual Leave (Remaining)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['remaining']['Casual Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-contao text-secondary"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Casual Leave (Taken)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['taken']['Casual Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-contao text-secondary"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        {{-- Show leave counts for Annual Leave --}}
        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Annual Leave (Total)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['total']['Annual Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-font text-warning"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Annual Leave (Remaining)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['remaining']['Annual Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-font text-warning"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-4 col-sm-6">
            <div class="card">
                <div class="card-body">
                    <div class="row mb-1">
                        <div class="col">
                            <p class="mb-1">Annual Leave (Taken)</p>
                            <h3 class="mb-0 number-font">{{ $leaveData['taken']['Annual Leave'] }}</h3>
                        </div>
                        <div class="col-auto mb-0">
                            <div class="dash-icon">
                                <i class="fa fa-font text-warning"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

@endsection

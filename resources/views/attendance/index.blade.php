@extends('layouts.app')

@push('styles')
    <style>
        .low-hours {
            background-color: #F1807E; /* Adjust the background color as needed */
        }
    </style>
    <link href="{{asset('theme/assets/plugins/datatable/dataTables.bootstrap4.min.css')}}" rel="stylesheet"/>
    <link href="{{asset('theme/assets/plugins/sweet-alert/sweetalert.css')}}" rel="stylesheet" />


@endpush

@section('content')
            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Attendance Report</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('attendance.index')}}">Attendance Report</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Attendance Report</li>
                    </ol>
                </div>
                @can('user-create')

                @endcan
            </div>
            <!-- PAGE-HEADER END -->
            @if ($message = Session::get('success'))
                <div class="alert alert-success">
                    <p>{{ $message }}</p>
                </div>
            @endif
            <!-- ROW-2 OPEN -->
            <div class="row">
                <div class="col-md-12 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Users</h3>

                        </div>
                        <div class="card-body">
                            <div class="alert alert-warning">
                                <p>Total Working Hours:{{ $totalWorkingHours }}</p>
                            </div>
                            <div class="table-responsive">
                                <table id="data-table1" class="table table-striped table-bordered text-nowrap w-100">
                                    <thead>
                                    <tr>
                                        <th class="wd-15p">ID</th>
                                        <th class="wd-15p">Acc_No</th>
                                        <th class="wd-20p">Name</th>
                                        <th class="wd-15p">Date</th>
                                        <th class="wd-15p">Time In</th>
                                        <th class="wd-15p">Time Out</th>
                                        <th class="wd-15p">Working Hours</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($attendanceRecords as $key => $attendanceRecord)
                                        @php
                                            $groupedRecords = $attendanceRecord->attendance->groupBy(function ($record) {
                                                return $record->time->toDateString(); // Group records by date
                                            });
                                        @endphp
                                        @foreach($groupedRecords as $date => $records)
                                            @php
                                                $checkIn = $records->firstWhere('state', 'C/In');
                                                $checkOut = $records->firstWhere('state', 'C/Out');
                                                $totalWorkingHours = $checkIn && $checkOut ? $checkIn->time->diffInHours($checkOut->time): 0;
                                                $highlightClass = $totalWorkingHours < 8 ? 'low-hours' : '';
                                            @endphp
                                            <tr>
                                                <td>{{ $records->first()->id }}</td>
                                                <td>{{ $records->first()->ac_no }}</td>
                                                <td>{{ $records->first()->name }}</td>
                                                <td>{{ $date }}</td>
                                                <td>{{ $checkIn ? $checkIn->time->format('h:i A') : '' }}</td>
                                                <td>{{ $checkOut ? $checkOut->time->format('h:i A') : '' }}</td>
                                                <td class="{{ $highlightClass }}">{{ $totalWorkingHours }}</td>
                                            </tr>
                                        @endforeach
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- TABLE WRAPPER -->
                    </div>
                    <!-- SECTION WRAPPER -->
                </div>
            </div>
            <!-- ROW-2 CLOSED -->

@push('script')
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    </script>
    <script src="{{asset('theme/assets/plugins/datatable/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/datatable/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/datatable/datatable.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/datatable/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/sweet-alert/sweetalert.min.js')}}"></script>
@endpush
@endsection

@extends('layouts.app')

@push('styles')
    <link href="{{asset('theme/assets/plugins/datatable/dataTables.bootstrap4.min.css')}}" rel="stylesheet"/>
    <link href="{{asset('theme/assets/plugins/sweet-alert/sweetalert.css')}}" rel="stylesheet" />


@endpush

@section('content')
            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Leave Applications</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('leave_applications')}}">Leave Applications</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Leave Applications List</li>
                    </ol>
                </div>
                <div class="ml-auto pageheader-btn">
                    <a href="{{ route('leave_applications.create') }}" class="btn btn-primary btn-icon text-white mr-2">
									<span>
										<i class="fe fe-plus"></i>
									</span> Apply Leave
                    </a>

                </div>
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
                            <h3 class="card-title">Leave Applications</h3>
                            <div class="ml-auto pageheader-btn">
                                <div class="col-md-12">
                                    <label for="filter-month">Filter by Month:</label>
                                    <select id="monthSelect" class="form-control">
                                        <option value="0">Select Month</option>
                                        <option value="1">January</option>
                                        <option value="2">February</option>
                                        <option value="3">March</option>
                                        <option value="4">April</option>
                                        <option value="5">May</option>
                                        <option value="6">June</option>
                                        <option value="7">July</option>
                                        <option value="8">August</option>
                                        <option value="9">September</option>
                                        <option value="10">October</option>
                                        <option value="11">November</option>
                                        <option value="12">December</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="data-table1" class="table table-striped table-bordered text-nowrap w-100">
                                    <thead>
                                    <tr>
                                        <th class="wd-15p">ID</th>
                                        <th class="wd-15p">Employee</th>
                                        <th class="wd-15p">Leave Type</th>
                                        <th class="wd-15p">Start Date</th>
                                        <th class="wd-15p">End Date</th>
                                        <th class="wd-15p">Days</th>
                                        <th class="wd-15p">Hours</th>
                                        <th class="wd-15p">Time (From-To)</th>
                                        <th class="wd-15p">Status</th>
                                        <th class="wd-25p">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($leaveApplications as $leave)
                                    <tr>
                                        <td>{{ $leave->id }}</td>
                                        <td>{{ $leave->user->name }}</td>
                                        <td>{{ $leave->leaveType->name }}</td>
                                        <td>
                                            @if ($leave->start_date)
                                                {{ date('d-m-Y', strtotime($leave->start_date)) }}
                                            @endif
                                                </td>
                                        <td>
                                            @if ($leave->end_date)
                                                {{ date('d-m-Y', strtotime($leave->end_date)) }}
                                            @endif
                                               </td>
                                        <td>{{ $leave->number_of_days }}</td>
                                        <td>{{ $leave->number_of_hours }}</td>
                                        <td>
                                            @if ($leave->start_time)
                                                {{ date('h:i A', strtotime($leave->start_time)) }}
                                            @endif
                                                @if ($leave->end_time)
                                                    {{ date('h:i A', strtotime($leave->end_time)) }}
                                                @endif
                                            </td>
                                        <td>
                                            @if($leave->status == 0)
                                                <div class="tags">
                                                    <span class="tag tag-yellow">Pending</span>
                                                </div>
                                            @elseif($leave->status == 1)
                                                <div class="tags">
                                                    <span class="tag tag-blue">Sent for Approval</span>
                                                </div>
                                            @elseif($leave->status == 2)
                                                <div class="tags">
                                                    <span class="tag tag-lime">Approved</span>
                                                </div>
                                            @elseif($leave->status == 3)
                                                <div class="tags">
                                                    <span class="tag tag-red">Denied</span>
                                                </div>
                                            @endif
                                        </td>
                                        <td>
                                            @if(auth()->user()->hasRole('teamlead') && $leave->status == 0)
                                                <button class="btn btn-success" onclick="sendForApproval({{ $leave->id }})">Send for Approval</button>
                                                <button class="btn btn-danger" onclick="denyLeave({{ $leave->id }})">Deny</button>
                                            @endif

                                            @if(auth()->user()->hasRole('manager') && $leave->status == 1)
                                                <button class="btn btn-primary" onclick="approve({{ $leave->id }})">Approve</button>
                                                    <button class="btn btn-danger" onclick="denyLeave({{ $leave->id }})">Deny</button>
                                            @endif
                                            {{--@can('leave-application-edit')
                                            <a href="{{route('leave_applications.edit',$leave->id)}}" data-toggle="tooltip" data-placement="top" title="Edit Role" class="btn btn-icon  btn-primary"><i class="fe fe-edit"></i></a>
                                            @endcan--}}
                                            @can('leave-application-delete')
                                                {{--<a type="button" class="btn btn-icon btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Record" id="confirm" data-delete-url="{{url('leave_applications/delete/'.$leave->id)}}">
                                                    <i class="fe fe-trash"></i></a>--}}
                                            @endcan
                                        </td>
                                    </tr>
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

        $(function(e) {
         $(document).on("click", "#confirm", function(e) {
             e.preventDefault();
             const deleteUrl = $(this).data('delete-url');
        swal({
            title: "Alert",
            text: "Are you really want to delete?",
            type: "warning",
            showCancelButton: true,
            confirmButtonText: 'Yes',
            cancelButtonText: 'No'
        }, function(result) {
            if (result) {
                $.ajax({
                    url: deleteUrl,
                    type: 'DELETE',
                    success: function(response) {
                        window.location.href = '/leave_applications';
                    },
                    error: function(error) {
                        // Handle error response
                        console.log("Error deleting leave type");
                        window.location.href = '/leave_applications';
                    }
                });

            } else {

                console.log("User decided to stay on the page");
            }
        });
    });
        });
    </script>
    <script>
            function sendForApproval(leaveId) {
                $.ajax({
                    url: `/leave_applications/${leaveId}/send-for-approval`,
                    type: 'POST',
                    success: function(response) {
                        // Disable the button after successful action
                        $(`#sendForApprovalBtn${leaveId}`).prop('disabled', true);
                        window.location.href = '/leave_applications';
                    },
                    error: function(error) {
                        // Handle errors
                        // ...
                    }
                });
            }

            function approve(leaveId) {
                $.ajax({
                    url: `/leave_applications/${leaveId}/approve`,
                    type: 'POST',
                    success: function(response) {
                        // Disable the button after successful action
                        $(`#approveBtn${leaveId}`).prop('disabled', true);
                        window.location.href = '/leave_applications';
                    },
                    error: function(error) {
                        // Handle errors
                        // ...
                    }
                });
            }
            function denyLeave(id) {
                $.ajax({
                    url: `/leave_applications/${id}/deny`,
                    type: 'POST',
                    success: function(response) {
                        console.log(response);
                        // Disable the button after successful action
                        //$(`#approveBtn${id}`).prop('disabled', true);
                        window.location.href = '/leave_applications';
                    },
                    error: function(error) {
                        // Handle errors
                        // ...
                    }
                });
            }

            $("#monthSelect").change(function () {
                var selectedMonth = document.getElementById('monthSelect').value;
                if(selectedMonth >0){
                    window.location.href = "{{ route('leave_applications.index') }}?month=" + selectedMonth;

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

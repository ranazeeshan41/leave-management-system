@extends('layouts.app')

@push('styles')
@endpush

@section('content')
    <!-- PAGE-HEADER -->
    <div class="page-header">
        <div>
            <h1 class="page-title">Users</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{'/users'}}">Users</a></li>
                <li class="breadcrumb-item active" aria-current="page">Edit User</li>
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
                    <h3 class="card-title">Edit User FORM</h3>
                </div>
                <div class="card-body">
                    {!! Form::model($user, ['method' => 'PATCH','route' => ['users.update', $user->id]]) !!}
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Name:</strong>
                                {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Email:</strong>
                                {!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Password:</strong>
                                {!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control')) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Confirm Password:</strong>
                                {!! Form::password('confirm-password', array('placeholder' => 'Confirm Password','class' => 'form-control')) !!}
                            </div>
                        </div>
                        @can('admin-access')
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Attendance ID:</strong>
                                {!! Form::text('ac_no', null, array('placeholder' => 'Attendance ID','class' => 'form-control')) !!}
                            </div>
                        </div>

                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                    <strong>Department:</strong>
                                    {!! Form::select('department_id', $departments, $user->department_id, ['class' => 'form-control', 'placeholder' => 'Select Department']) !!}
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-12 col-md-12">
                                <div class="form-group">
                                    <strong>Designation:</strong>
                                    {!! Form::select('designation_id', $designations, $user->designation_id, ['class' => 'form-control', 'placeholder' => 'Select Designation']) !!}
                                </div>
                            </div>

                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="form-group">
                                <strong>Role:</strong>
                                {!! Form::select('roles', $roles, $userRole, ['class' => 'form-control', 'id' => 'roleSelect']) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12" id="managerDropdown" style="display: none;">
                            <div class="form-group">
                                <strong>Manager:</strong>
                                {!! Form::select('manager_id', $managersAndTeamLeads, $user->manager_id, ['class' => 'form-control']) !!}
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-12" id="teamLeadDropdown" style="display: none;">
                            <div class="form-group">
                                <strong>Team Lead:</strong>
                                {!! Form::select('teamlead_id', $teamLeads, $user->teamlead_id, ['class' => 'form-control']) !!}
                            </div>
                        </div>
                            <h4>Leave Balances</h4>
                            @foreach ($leaveBalances as $leaveBalance)
                                <div class="col-xs-12 col-sm-12 col-md-12">
                                    <div class="form-group">
                                        <strong>{{ $leaveBalance->leaveType->name }} Balance:</strong>
                                        {!! Form::number("leave_balances[{$leaveBalance->leave_type_id}]", $leaveBalance->balance, ['class' => 'form-control']) !!}
                                    </div>
                                </div>
                            @endforeach

                        @endcan
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
            $(document).ready(function () {
                var roleSelect = $('#roleSelect');
                var managerDropdown = $('#managerDropdown');
                var teamLeadDropdown = $('#teamLeadDropdown');

                function toggleDropdowns(selectedRole) {
                    managerDropdown.hide();
                    teamLeadDropdown.hide();
                    managerDropdown.prop('disabled', true);
                    teamLeadDropdown.prop('disabled', true);

                    if (selectedRole === 'teamlead') {
                        managerDropdown.show();
                        managerDropdown.prop('disabled', false);
                    } else if (selectedRole === 'employee') {
                        managerDropdown.show();
                        teamLeadDropdown.show();
                        managerDropdown.prop('disabled', false);
                        teamLeadDropdown.prop('disabled', false);
                    }
                }

                toggleDropdowns(roleSelect.val());
                roleSelect.on('change', function () {
                    var selectedRole = roleSelect.val();
                    toggleDropdowns(selectedRole);
                });
            });
        </script>

    @endpush
@endsection

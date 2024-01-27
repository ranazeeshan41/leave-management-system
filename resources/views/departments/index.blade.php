@extends('layouts.app')

@push('styles')
    <link href="{{asset('theme/assets/plugins/datatable/dataTables.bootstrap4.min.css')}}" rel="stylesheet"/>
    <link href="{{asset('theme/assets/plugins/sweet-alert/sweetalert.css')}}" rel="stylesheet" />


@endpush

@section('content')
            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Departments</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('departments')}}">Departments</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Departments List</li>
                    </ol>
                </div>
                <div class="ml-auto pageheader-btn">
                    <a href="{{ route('departments.create') }}" class="btn btn-primary btn-icon text-white mr-2">
									<span>
										<i class="fe fe-plus"></i>
									</span> Create New Department
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
                            <h3 class="card-title">Departments</h3>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table id="data-table1" class="table table-striped table-bordered text-nowrap w-100">
                                    <thead>
                                    <tr>
                                        <th class="wd-15p">ID</th>
                                        <th class="wd-15p">Name</th>
                                        <th class="wd-25p">Actions</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($departments as $department)
                                    <tr>
                                        <td>{{ $department->id }}</td>
                                        <td>{{ $department->name }}</td>
                                        <td>
                                            @can('department-edit')
                                            <a href="{{route('departments.edit',$department->id)}}" data-toggle="tooltip" data-placement="top" title="Edit Role" class="btn btn-icon  btn-primary"><i class="fe fe-edit"></i></a>
                                            @endcan
                                            @can('department-delete')
                                                <a type="button" class="btn btn-icon btn-danger" data-toggle="tooltip" data-placement="top" title="Delete Record" id="confirm" data-delete-url="{{url('departments/delete/'.$department->id)}}">
                                                    <i class="fe fe-trash"></i></a>
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
                        window.location.href = '/departments';
                    },
                    error: function(error) {
                        // Handle error response
                        console.log("Error deleting department");
                        window.location.href = '/departments';
                    }
                });

            } else {

                console.log("User decided to stay on the page");
            }
        });
    });
        });
    </script>

    <script src="{{asset('theme/assets/plugins/datatable/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/datatable/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/datatable/datatable.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/datatable/dataTables.responsive.min.js')}}"></script>
    <script src="{{asset('theme/assets/plugins/sweet-alert/sweetalert.min.js')}}"></script>
@endpush
@endsection

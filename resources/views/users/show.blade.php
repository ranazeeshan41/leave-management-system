@extends('layouts.app')

@push('styles')

@endpush

@section('content')
            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Users</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('users')}}">Users</a></li>
                        <li class="breadcrumb-item active" aria-current="page">User Information</li>
                    </ol>
                </div>
            </div>
            <!-- PAGE-HEADER END -->

            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-body">


                            <div class="table-responsive push">
                                <table class="table table-bordered table-hover mb-0 text-nowrap">
                                    <tbody>
                                    <th>User INFORMATION</th>
                                    <tr>
                                        <td class="text-center">Name</td>
                                        <td class="text-muted">{{ $user->name }}</td>
                                        <td class="text-center">Email</td>
                                        <td class="text-muted">{{ $user->email }}</td>

                                    </tr>
                                    <tr>
                                        <td class="text-center">Roles</td>
                                        <td class="text-muted">@if(!empty($user->getRoleNames()))
                                                @foreach($user->getRoleNames() as $v)
                                                    <span class="badge rounded-pill bg-dark">{{ $v }}</span>
                                                @endforeach
                                            @endif</td>
                                    </tr>

                                    </tbody></table>
                            </div>
                        </div>
                    </div>
                </div><!-- COL-END -->
            </div>


@push('script')


@endpush
@endsection

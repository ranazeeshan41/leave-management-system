@extends('layouts.app')

@push('styles')

@endpush

@section('content')
            <!-- PAGE-HEADER -->
            <div class="page-header">
                <div>
                    <h1 class="page-title">Roles</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{url('roles')}}">Roles</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Role Information</li>
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
                                    <th>Role INFORMATION</th>
                                    <tr>
                                        <td class="text-center">Name</td>
                                        <td class="text-muted">{{ $role->name }}</td>

                                    </tr>
                                    <tr>
                                        <td class="text-center">Permission</td>
                                        <td class="text-muted">@if(!empty($rolePermissions))
                                                @foreach($rolePermissions as $v)
                                                    <label class="label label-success">{{ $v->name }},</label>
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

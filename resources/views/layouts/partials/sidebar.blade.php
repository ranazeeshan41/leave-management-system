<!--APP-SIDEBAR-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="side-header">
        <a class="header-brand1" href="{{url('/')}}">
            <img src="{{asset('theme/assets/images/brand/logo.png')}}" class="header-brand-img desktop-logo" alt="logo">
            <img src="{{asset('theme/assets/images/brand/logo-1.png')}}" class="header-brand-img toggle-logo" alt="logo">
            <img src="{{asset('theme/assets/images/brand/logo-2.png')}}" class="header-brand-img light-logo" alt="logo">
            <img src="{{asset('theme/assets/images/brand/logo-3.png')}}" class="header-brand-img light-logo1" alt="logo">
        </a><!-- LOGO -->
    </div>
    <ul class="side-menu">
        <li></li>
        <li class="slide">
            <a class="side-menu__item" href="{{url('/')}}">
                <i style="text-align: center; font-size: 18px; margin-right: 8px;"  class="fa fa-desktop"> </i>
                <span class="side-menu__label">Dashboard</span>
            </a>

        </li>


        @can('user-list')
        <li class="slide">
            <a class="side-menu__item" href="{{route('users.index')}}">
                <i style="text-align: center; font-size: 18px; margin-right: 8px; " class="fa fa-users"> </i>
                <span class="side-menu__label">Manage Users</span>
            </a>
        </li>
        @endcan
        @can('admin-access')
        <li class="slide">
            <a class="side-menu__item" href="{{route('attendance.index')}}">
                <i style="text-align: center; font-size: 18px; margin-right: 8px; " class="fa fa-registered"> </i>
                <span class="side-menu__label">Attendance Report</span>
            </a>
        </li>
        @endcan

        @can('department-list')
            <li class="slide">
                <a class="side-menu__item" href="{{route('departments.index')}}">
                    <i style="text-align: center; font-size: 18px; margin-right: 8px; " class="fa fa-laptop"> </i>
                    <span class="side-menu__label">Manage Departments</span>
                </a>
            </li>
        @endcan
        @can('designation-list')
            <li class="slide">
                <a class="side-menu__item" href="{{route('designations.index')}}">
                    <i style="text-align: center; font-size: 18px; margin-right: 8px; " class="fa fa-user-circle"> </i>
                    <span class="side-menu__label">Manage Designations</span>
                </a>
            </li>
        @endcan
        @can('leave-type-list')
            <li class="slide">
                <a class="side-menu__item" href="{{route('leave-types.index')}}">
                    <i style="text-align: center; font-size: 18px; margin-right: 8px; " class="fa fa-indent"> </i>
                    <span class="side-menu__label">Manage Leave Types</span>
                </a>
            </li>
        @endcan
        @can('leave-application-list')
            <li class="slide">
                <a class="side-menu__item" href="{{route('leave_applications.index')}}">
                    <i style="text-align: center; font-size: 18px; margin-right: 8px; " class="fa fa-address-book-o"> </i>
                    <span class="side-menu__label">Manage Leave Application</span>
                </a>
            </li>
        @endcan
        {{--<li class="slide">
            <a class="side-menu__item" href="{{route('employees.index')}}">
                <i style="text-align: center; font-size: 18px; margin-right: 8px; " class="fa fa-users"> </i>
                <span class="side-menu__label">Manage Employees</span>
            </a>
        </li>--}}


        @can('role-list')
        <li class="slide">
            <a class="side-menu__item" href="{{route('roles.index')}}">
                <i style="text-align: center; font-size: 18px; margin-right: 8px; " class="fa fa-stethoscope"> </i>
                <span class="side-menu__label">Manage Role</span>
            </a>
        </li>
        @endcan

    </ul>
</aside>
<!--/APP-SIDEBAR-->

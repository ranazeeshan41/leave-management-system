<!-- App-Header -->
<div class="app-header header">
    <div class="container-fluid">
        <div class="d-flex">
            <a class="header-brand d-md-none" href="{{ url('/') }}">
                <img src="{{asset('theme/assets/images/brand/logo-3.png')}}" class="header-brand-img mobile-icon" alt="logo">
                <img src="{{asset('theme/assets/images/brand/logo.png')}}" class="header-brand-img desktop-logo mobile-logo" alt="logo">
            </a>
            <a aria-label="Hide Sidebar" class="app-sidebar__toggle" data-toggle="sidebar" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M19 15v2H5v-2h14m2-10H3v2h18V5zm0 4H3v2h18V9zm0 4H3v6h18v-6z"/><path d="M5 15h14v2H5z" opacity=".3"/></svg>
            </a><!-- sidebar-toggle-->

            <div class="d-flex ml-auto header-right-icons header-search-icon">
                <button class="navbar-toggler navresponsive-toggler d-md-none" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4"
                        aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="navbar-toggler-icon"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/></svg>
                </button>
                <div class="dropdown d-none d-lg-flex">
                    <a class="nav-link icon full-screen-link nav-link-bg">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="fullscreen-button"><path d="M0 0h24v24H0V0z" fill="none"/><circle cx="12" cy="12" opacity=".3" r="3"/><path d="M7 12c0 2.76 2.24 5 5 5s5-2.24 5-5-2.24-5-5-5-5 2.24-5 5zm8 0c0 1.65-1.35 3-3 3s-3-1.35-3-3 1.35-3 3-3 3 1.35 3 3zM3 19c0 1.1.9 2 2 2h4v-2H5v-4H3v4zM3 5v4h2V5h4V3H5c-1.1 0-2 .9-2 2zm18 0c0-1.1-.9-2-2-2h-4v2h4v4h2V5zm-2 14h-4v2h4c1.1 0 2-.9 2-2v-4h-2v4z"/></svg>
                    </a>
                </div><!-- FULL-SCREEN -->
                <div class="dropdown d-none d-md-flex notifications">
                    <a class="nav-link icon" data-toggle="dropdown">
                        <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 6.5c-2.49 0-4 2.02-4 4.5v6h8v-6c0-2.48-1.51-4.5-4-4.5z" opacity=".3"/><path d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.9 2 2 2zm6-6v-5c0-3.07-1.63-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.64 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2zm-2 1H8v-6c0-2.48 1.51-4.5 4-4.5s4 2.02 4 4.5v6z"/></svg>
                        <span class="pulse1 bg-success"></span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                        <div class="notifications-menu">
                            <a class="dropdown-item d-flex pb-4" href="#">
												<span class="avatar mr-3 br-3 align-self-center avatar-md cover-image bg-primary brround">
													<i class="fe fe-mail"></i></span>
                                <div>
                                    <span class="font-weight-bold"> Commented on your post </span>
                                    <div class="small text-muted d-flex">
                                        3 hours ago
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="dropdown-divider"></div>
                        <a href="#" class="dropdown-item text-center">View all Notification</a>
                    </div>
                </div><!-- NOTIFICATIONS -->
                <div class="dropdown profile-1">
                    <a href="#" data-toggle="dropdown" class="nav-link pl-2 pr-2  leading-none d-flex">
										<span>
											<img src="{{asset('theme/assets/images/users/10.jpg')}}" alt="profile-user" class="avatar  mr-xl-3 profile-user brround cover-image">
										</span>
                        <div class="text-center mt-2 d-none d-xl-block">
                            <h6 class="text-dark mb-0 fs-13 font-weight-semibold">{{ Auth::user()->name }}</h6>
                        </div>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                        <a class="dropdown-item" href="{{ route('logout') }}"
                           onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                            <i class="dropdown-icon mdi  mdi-logout-variant"></i>
                            {{ __('Logout') }}

                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

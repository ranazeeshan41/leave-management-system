<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
@include('layouts.partials.header')

</head>
<body class="app sidebar-mini dark-mode">
<!-- GLOBAL-LOADER -->
<div id="global-loader">
    <img src="{{asset('theme/assets/images/loader.svg')}}" class="loader-img" alt="Loader">
</div>
<!-- /GLOBAL-LOADER -->
<div class="page">
    <div class="page-main">
        @include('layouts.partials.sidebar')
        @include('layouts.partials.top-header')

        <!--app-content open-->
            <div class="app-content">
                <div class="side-app">
                    @yield('content')
                </div>

            </div>

    </div>


    @include('layouts.partials.footer')
</div>
</body>
</html>

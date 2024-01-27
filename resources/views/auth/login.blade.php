<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('theme/assets/images/brand/favicon.ico')}}" />

    <!-- BOOTSTRAP CSS -->
    <link href="{{asset('theme/assets/plugins/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />

    <!-- STYLE CSS -->
    <link href="{{asset('theme/assets/css/style.css')}}" rel="stylesheet"/>
    <link href="{{asset('theme/assets/css/skin-modes.css')}}" rel="stylesheet"/>
    <link href="{{asset('theme/assets/css/dark-style.css')}}" rel="stylesheet"/>

    <!-- INTERNAL SINGLE-PAGE CSS -->
    <link href="{{asset('theme/assets/plugins/single-page/css/main.css')}}" rel="stylesheet" type="text/css">

    <!-- CUSTOM SCROLL BAR CSS-->
    <link href="{{asset('theme/assets/plugins/scroll-bar/jquery.mCustomScrollbar.css')}}" rel="stylesheet"/>

    <!--- FONT-ICONS CSS -->
    <link href="{{asset('theme/assets/css/icons.css')}}" rel="stylesheet"/>

    <!-- COLOR SKIN CSS -->
    <link id="theme" rel="stylesheet" type="text/css" media="all" href="{{asset('theme/assets/colors/color1.css')}}" />

</head>

<body class="app sidebar-mini dark-mode">



<!-- BACKGROUND-IMAGE -->
<div class="login-img">

    <!-- GLOABAL LOADER -->
    <div id="global-loader">
        <img src="{{asset('theme/assets/images/loader.svg')}}" class="loader-img" alt="Loader">
    </div>
    <!-- /GLOABAL LOADER -->

    <!-- PAGE -->
    <div class="page">
        <div class="">
            <!-- CONTAINER OPEN -->
            <div class="col col-login mx-auto">
                <div class="text-center">
                    <img src="{{asset('theme/assets/images/brand/logo.png')}}" class="header-brand-img" alt="">
                </div>
            </div>
            <div class="container-login100">
                <div class="wrap-login100 p-6">
                    <form class="login100-form validate-form" method="POST" action="{{ route('login') }}">
                        @csrf
								<span class="login100-form-title">
									Login
								</span>
                        <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">

                                <input id="email" type="email" class="input100 @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus placeholder="Email">

                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
										<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M20 8l-8 5-8-5v10h16zm0-2H4l8 4.99z" opacity=".3"/><path d="M4 20h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2H4c-1.1 0-2 .9-2 2v12c0 1.1.9 2 2 2zM20 6l-8 4.99L4 6h16zM4 8l8 5 8-5v10H4V8z"/></svg>
									</span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Password is required">
                            <input id="password" type="password" placeholder="Password" class="input100 @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                            @enderror
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
										<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><g fill="none"><path d="M0 0h24v24H0V0z"/><path d="M0 0h24v24H0V0z" opacity=".87"/></g><path d="M6 20h12V10H6v10zm6-7c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2z" opacity=".3"/><path d="M18 8h-1V6c0-2.76-2.24-5-5-5S7 3.24 7 6v2H6c-1.1 0-2 .9-2 2v10c0 1.1.9 2 2 2h12c1.1 0 2-.9 2-2V10c0-1.1-.9-2-2-2zM9 6c0-1.66 1.34-3 3-3s3 1.34 3 3v2H9V6zm9 14H6V10h12v10zm-6-3c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2z"/></svg>
									</span>
                        </div>

                        <div class="container-login100-form-btn">
                            <button type="submit" class="login100-form-btn btn-primary">
                                {{ __('Login') }}
                            </button>

                        </div>

                    </form>
                </div>
            </div>
            <!-- CONTAINER CLOSED -->
        </div>
    </div>
    <!-- End PAGE -->

</div>
<!-- BACKGROUND-IMAGE CLOSED -->

<!-- JQUERY JS -->
<script src="{{asset('theme/assets/js/jquery-3.4.1.min.js')}}"></script>

<!-- BOOTSTRAP JS -->
<script src="{{asset('theme/assets/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('theme/assets/plugins/bootstrap/js/popper.min.js')}}"></script>

<!-- SPARKLINE JS -->
<script src="{{asset('theme/assets/js/jquery.sparkline.min.js')}}"></script>

<!-- CHART-CIRCLE JS -->
<script src="{{asset('theme/assets/js/circle-progress.min.js')}}"></script>

<!-- RATING STAR JS -->
<script src="{{asset('theme/assets/plugins/rating/jquery.rating-stars.js')}}"></script>

<!-- EVA-ICONS JS -->
<script src="{{asset('theme/assets/iconfonts/eva.min.js')}}"></script>

<!-- INPUT MASK JS -->
<script src="{{asset('theme/assets/plugins/input-mask/jquery.mask.min.js')}}"></script>

<!-- CUSTOM SCROLL BAR JS-->
<script src="{{asset('theme/assets/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js')}}"></script>



<!-- CUSTOM JS-->
<script src="{{asset('theme/assets/js/custom.js')}}"></script>

</body>
</html>






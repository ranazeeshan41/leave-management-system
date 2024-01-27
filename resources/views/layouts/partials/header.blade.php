<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

<title>{{ config('app.name', 'Laravel') }}</title>

<!-- FAVICON -->
<link rel="shortcut icon" type="image/x-icon" href="{{asset('theme/assets/images/brand/favicon.ico')}}" />

<!-- BOOTSTRAP CSS -->
<link href="{{asset('theme/assets/plugins/bootstrap/css/bootstrap.min.css')}} " rel="stylesheet" />

<!-- STYLE CSS -->
<link href="{{asset('theme/assets/css/style.css')}}" rel="stylesheet"/>
<link href="{{asset('theme/assets/css/skin-modes.css')}}" rel="stylesheet"/>
<link href="{{asset('theme/assets/css/dark-style.css')}}" rel="stylesheet"/>

<!-- SIDE-MENU CSS -->
<link href="{{asset('theme/assets/css/sidemenu.css')}}" rel="stylesheet">

<!--PERFECT SCROLL CSS-->
<link href="{{asset('theme/assets/plugins/p-scroll/perfect-scrollbar.css')}}" rel="stylesheet"/>

<!-- CUSTOM SCROLL BAR CSS-->
<link href="{{asset('theme/assets/plugins/scroll-bar/jquery.mCustomScrollbar.css')}}" rel="stylesheet"/>

<!--- FONT-ICONS CSS -->
<link href="{{asset('theme/assets/css/icons.css')}}" rel="stylesheet"/>

<!-- SIDEBAR CSS -->
<link href="{{asset('theme/assets/plugins/sidebar/sidebar.css')}}" rel="stylesheet">

<!-- COLOR SKIN CSS -->
<link id="theme" rel="stylesheet" type="text/css" media="all" href="{{asset('theme/assets/colors/color1.css')}}" />
@stack('styles')

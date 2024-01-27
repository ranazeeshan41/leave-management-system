<!-- FOOTER -->
<footer class="footer">
    <div class="container">
        <div class="row align-items-center flex-row-reverse">
            <div class="col-md-12 col-sm-12 text-center">
                Copyright © <?php echo date('Y'); ?> <a href="https://www.ajtechgroup.com/" target="_blank">AJ Tech HR Management System</a>. All rights reserved.
            </div>
        </div>
    </div>
</footer>
<!-- FOOTER END -->
</div>

<!-- BACK-TO-TOP -->
{{--<a href="#top" id="back-to-top"><i class="fa fa-angle-up"></i></a>--}}

<!-- JQUERY JS -->
<script src="{{asset('theme/assets/js/jquery-3.4.1.min.js')}}"></script>

<!-- BOOTSTRAP JS -->
<script src="{{asset('theme/assets/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('theme/assets/plugins/bootstrap/js/popper.min.js')}}"></script>

<!-- SPARKLINE JS-->
<script src="{{asset('theme/assets/js/jquery.sparkline.min.js')}}"></script>

<!-- CHART-CIRCLE JS-->
<script src="{{asset('theme/assets/js/circle-progress.min.js')}}"></script>

<!-- RATING STARJS -->
<script src="{{asset('theme/assets/plugins/rating/jquery.rating-stars.js')}}"></script>

<!-- EVA-ICONS JS -->
<script src="{{asset('theme/assets/iconfonts/eva.min.js')}}"></script>

<!-- INTERNAL CHARTJS CHART JS -->
<script src="{{asset('theme/assets/plugins/chart/Chart.bundle.js')}}"></script>
<script src="{{asset('theme/assets/plugins/chart/utils.js')}}"></script>

<!-- INTERNAL PIETY CHART JS -->
<script src="{{asset('theme/assets/plugins/peitychart/jquery.peity.min.js')}}"></script>
<script src="{{asset('theme/assets/plugins/peitychart/peitychart.init.js')}}"></script>

<!-- SIDE-MENU JS-->
<script src="{{asset('theme/assets/plugins/sidemenu/sidemenu.js')}}"></script>

<!-- PERFECT SCROLL BAR js-->
<script src="{{asset('theme/assets/plugins/p-scroll/perfect-scrollbar.min.js')}}"></script>
<script src="{{asset('theme/assets/plugins/sidemenu/sidemenu-scroll.js')}}"></script>

<!-- CUSTOM SCROLLBAR JS-->
<script src="{{asset('theme/assets/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js')}}"></script>

<!-- SIDEBAR JS -->
<script src="{{asset('theme/assets/plugins/sidebar/sidebar.js')}}"></script>

<!-- INTERNAL APEXCHART JS -->
<script src="{{asset('theme/assets/js/apexcharts.js')}}"></script>

<!--INTERNAL  INDEX JS -->
<script src="{{asset('theme/assets/js/index1.js')}}"></script>

<!-- CUSTOM JS -->
<script src="{{asset('theme/assets/js/custom.js')}}"></script>
@stack('script')

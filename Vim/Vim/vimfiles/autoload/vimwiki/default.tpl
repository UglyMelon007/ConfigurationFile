<!DOCTYPE html>
<html lang="en">

<head>
    <title>%title%</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <link type="text/css" rel="stylesheet" href="%root_path%css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="%root_path%css/bootstrap-responsive.css" />
    <link type="text/css" rel="stylesheet" href="%root_path%css/docs.css" />
    <link type="text/css" rel="stylesheet" href="%root_path%css/monokai.css" />
    <link type="text/css" rel="stylesheet" href="%root_path%css/vimwiki.css" />
    <link type="text/css" rel="stylesheet" href="%root_path%css/font-awesome.css">

    <script type="text/javascript" src="%root_path%js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="%root_path%js/bootstrap.js"></script>
    <script type="text/javascript" src="%root_path%js/highlight.pack.js"></script>
    <script>
        $(document).ready(function() {
            $('table').each(function() {
                $(this).addClass('table table-striped table-condensed table-hover');
            });

            $('.done0').each(function() {
                $(this).html('<div class="alert alert-info"><i class="fa fa-check-square-o"></i>' + $(this).html() + '</div></li>');
            });

            $('.done4').each(function() {
                $(this).html('<div class="alert alert-success"><i class="fa fa-square-o"></i>' + $(this).html() + '</div></li>');
            });

            // Fade Out Back-To-Top-Link on new page
            $('.backtotop').fadeOut();
            $(window).scroll(function() {
                if ($(this).scrollTop() > 100) {
                    $('.backtotop').fadeIn();
                } else {
                    $('.backtotop').fadeOut();
                }
            });
            $('.backtotop').click(function() {
                $("html, body").animate({
                    scrollTop: 0
                }, 600);
                return false;
            });
            $('pre').each(function() {
                $(this).html('<code>' + $(this).html() + '</code>');
            });
            hljs.initHighlightingOnLoad();
        });
    </script>
</head>

<body data-spy="scroll" data-target=".bs-docs-sidebar">
    <!--navbor-->
    <div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <!-- Be sure to leave the brand out there if you want it shown -->
                <a class="brand" href="http://code.google.com/p/vimwiki/">Vimwiki</a>

                <!-- Everything you want hidden at 940px or less, place within here -->
                <div class="nav-collapse collapse">
                    <!-- .nav, .navbar-search, .navbar-form, etc -->
                    <ul class="nav">
                        <li class="">
                            <a href="%root_path%index.html">Index</a>
                        </li>
                        <li class="">
                            <a href="%root_path%workspace/index.html">Workspace</a>
                        </li>
                        <li class="">
                            <a href="%root_path%diary/diary.html">Diary</a>
                        </li>
                        <li class="">
                            <a href="%root_path%todo.html">To Do</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!--Container-->
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span3 bs-docs-sidebar" id="toc">
                <ul id="sidebar_list" class="nav nav-list bs-docs-sidenav affix">
                </ul>
            </div>

            <div class="span7" data-spy="scrool">
                <!--Body content-->
                %content%
            </div>
        </div>
    </div>

	<!--Backtotop-->
    <a href="#" class="backtotop"><i class="fa fa-arrow-circle-up fa-4x"></i></a>

    <!-- Footer
    ================================================== -->
    <footer class="footer navbar-bottom">
        <div class="container">
            <p><a href="https://github.com/UglyMelon007/uglymelon007.github.com">Copyright2016 @ UglyMelon007</a>
        </div>
    </footer>
</body>

</html>


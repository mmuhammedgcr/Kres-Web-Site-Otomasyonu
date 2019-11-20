<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="web_prog.MasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/bootstrap.js"></script>
    <script src="js/Jquery.js"></script>
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="files/fancy.css" rel="stylesheet" type="text/css" media="screen" />
    <script type="text/javascript" src="files/jquery-1.2.3.pack.js"></script>
    <script type="text/javascript" src="files/jquery.fancybox-1.0.0.js"></script>
    <script type="text/javascript" src="files/jquery.pngFix.pack.js"></script>
    <title>Foto Galeri</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="photoGallery.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {
            height: 450px;
        }

        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
        }

        /* Set black background color, white text and some padding */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }

        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }

            .row.content {
                height: auto;
            }
        }

        .gallery {
            display: inline-block;
            margin-top: 20px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#test a").fancybox({
                'hideOnContentClick': true
            });
            $("#test2 a").fancybox({
                'overlayShow': true,
                'zoomSpeedIn': 0,
                'zoomSpeedOut': 0
            });
            $("#test3 a").fancybox({
                'overlayShow': true
            });
            $("#test4 a").fancybox({
                'overlayShow': true,
               
            });
            $("#test5 a").fancybox({
                'overlayShow': true,
                
            });
            $("#test6 a").fancybox({
                'overlayShow': true,
              
            });
            $("#test7 a").fancybox({
                'overlayShow': true,
                
            });
        });
    </script>


</head>
<body>

    <div class="row" style="background-image: url('/images/back.jpg'); padding: 0px; margin: 0px;">
        <div class="col-sm-12">
            <div style="height: 150px; float: left;">
                <a href="index.aspx">
                    <img src="/images/logo.png" />
            </div>
            <div style="float: right;">
                <a href="https://www.facebook.com/" target="_blank">
                    <img src="/images/facebook.png" style="float: right;" /></a>
                <a href="https://www.twitter.com/" target="_blank">
                    <img src="/images/twitter.png" style="float: right;" /></a>
                <a href="https://www.instagram.com/" target="_blank">
                    <img src="/images/instagram.png" style="float: right;" /></a>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-default">
        <div class="collapse navbar-collapse" id="myNavbar" style="">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Minik Kalpler </a>
                </div>


                <ul class="nav navbar-nav">
                    <li class="active"><a href="/index.aspx">Ana Sayfa</a></li>
                    <li><a href="/hakkimizda.aspx">Hakkımızda</a></li>
                    <li><a href="/galeri.aspx">Foto Galeri</a></li>
                    <li><a href="/iletisim.aspx">İletişim</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="loginPanel.aspx"><span class="glyphicon glyphicon-log-in" style="margin-right: 5px"></span>Login</a></li>
                </ul>
            </div>
        </div>
    </nav>


    <div class="container text-center">
        <br />
        <div class="row">
            <div class="col-sm-12" style="background-color: rgba(255, 255, 255, 0.5);">
                <h1>FOTOĞRAFLAR</h1>
                <p id="test3">
                    <a rel="test3" href="images/kres1.jpg">
                        <img src="images/thumbs/kres-galeri-01.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres2.jpg">
                        <img src="images/thumbs/kres-galeri-02.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres3.jpg">
                        <img src="images/thumbs/kres-galeri-03.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres4.jpg">
                        <img src="images/thumbs/kres-galeri-04.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres5.jpg">
                        <img src="images/thumbs/kres-galeri-05.jpg" alt="" /></a>
                </p>

                <p id="test5">
                    <a rel="test3" href="images/kres6.jpg">
                        <img src="images/thumbs/kres-galeri-06.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres7.jpg">
                        <img src="images/thumbs/kres-galeri-07.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres8.jpg">
                        <img src="images/thumbs/kres-galeri-08.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres9.jpg">
                        <img src="images/thumbs/kres-galeri-09.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres10.jpg">
                        <img src="images/thumbs/kres-galeri-10.jpg" alt="" /></a>
                </p>
                <p id="test6">
                    <a rel="test3" href="images/kres11.jpg">
                        <img src="images/thumbs/kres-galeri-11.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres12.jpg">
                        <img src="images/thumbs/kres-galeri-12.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres13.jpg">
                        <img src="images/thumbs/kres-galeri-13.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres14.jpg">
                        <img src="images/thumbs/kres-galeri-14.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres15.jpg">
                        <img src="images/thumbs/kres-galeri-15.jpg" alt="" /></a>
                </p>

                <p id="test7">
                    <a rel="test3" href="images/kres16.jpg">
                        <img src="images/thumbs/kres-galeri-16.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres17.jpg">
                        <img src="images/thumbs/kres-galeri-17.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres18.jpg">
                        <img src="images/thumbs/kres-galeri-18.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres19.jpg">
                        <img src="images/thumbs/kres-galeri-19.jpg" alt="" /></a>
                    <a rel="test3" href="images/kres20.jpg">
                        <img src="images/thumbs/kres-galeri-20.jpg" alt="" /></a>
                </p>
            </div>
        </div>
    </div>

    <%--<div class="container">
        <div class="row">
            <div class='list-group gallery'>
                <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                    <a class="thumbnail fancybox" rel="ligthbox" href="http://placehold.it/300x320.png">
                        <img class="img-responsive" alt="" src="http://placehold.it/320x320" />
                        <div class='text-right'>
                            <small class='text-muted'>Image Title</small>
                        </div>
                        <!-- text-right / end -->
                    </a>
                </div>
                <!-- col-6 / end -->
                <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                    <a class="thumbnail fancybox" rel="ligthbox" href="http://placehold.it/300x320.png">
                        <img class="img-responsive" alt="" src="http://placehold.it/320x320" />
                        <div class='text-right'>
                            <small class='text-muted'>Image Title</small>
                        </div>
                        <!-- text-right / end -->
                    </a>
                </div>
                <!-- col-6 / end -->
                <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                    <a class="thumbnail fancybox" rel="ligthbox" href="http://placehold.it/300x320.png">
                        <img class="img-responsive" alt="" src="http://placehold.it/320x320" />
                        <div class='text-right'>
                            <small class='text-muted'>Image Title</small>
                        </div>
                        <!-- text-right / end -->
                    </a>
                </div>
                <!-- col-6 / end -->
                <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                    <a class="thumbnail fancybox" rel="ligthbox" href="http://placehold.it/300x320.png">
                        <img class="img-responsive" alt="" src="http://placehold.it/320x320" />
                        <div class='text-right'>
                            <small class='text-muted'>Image Title</small>
                        </div>
                        <!-- text-right / end -->
                    </a>
                </div>
                <!-- col-6 / end -->
                <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                    <a class="thumbnail fancybox" rel="ligthbox" href="http://placehold.it/300x320.png">
                        <img class="img-responsive" alt="" src="http://placehold.it/320x320" />
                        <div class='text-right'>
                            <small class='text-muted'>Image Title</small>
                        </div>
                        <!-- text-right / end -->
                    </a>
                </div>
                <!-- col-6 / end -->
                <div class='col-sm-4 col-xs-6 col-md-3 col-lg-3'>
                    <a class="thumbnail fancybox" rel="ligthbox" href="http://placehold.it/300x320.png">
                        <img class="img-responsive" alt="" src="http://placehold.it/320x320" />
                        <div class='text-right'>
                            <small class='text-muted'>Image Title</small>
                        </div>
                        <!-- text-right / end -->
                    </a>
                </div>
                <!-- col-6 / end -->
            </div>
            <!-- list-group / end -->
        </div>
        <!-- row / end -->
    </div>--%>
    <!-- container / end -->
    <%--<div class="container-fluid text-center">
        <div class="row content">
            <div class="col-sm-2 sidenav">
                <p><a href="#">Link</a></p>
                <p><a href="#">Link</a></p>
                <p><a href="#">Link</a></p>
            </div>
            <div class="col-sm-8 text-left">
                <h1>Welcome</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                <hr />
                <h3>Test</h3>
                <p>Lorem ipsum...</p>   
            </div>
            <div class="col-sm-2 sidenav">
                <div class="well">
                    <p>ADS</p>
                </div>
                <div class="well">
                    <p>ADS</p>
                </div>
            </div>
        </div>
    </div>--%>

    <footer class="container-fluid text-center">
        <div style="float: left;">
            <p style="float: left;">
                İletişim:+9005556668899<br />
                E-MAIL: kres@duzce.uni
            </p>
        </div>

        <div style="float: right;">
            <a href="https://www.facebook.com/" target="_blank">
                <img src="/images/facebook.png" style="float: right;" /></a>
            <a href="https://www.twitter.com/" target="_blank">
                <img src="/images/twitter.png" style="float: right;" /></a>
            <a href="https://www.instagram.com/" target="_blank">
                <img src="/images/instagram.png" style="float: right;" /></a>
        </div>
        <p>WEB PROGRAMLAMA PROJESİ</p>
    </footer>
</body>
</html>

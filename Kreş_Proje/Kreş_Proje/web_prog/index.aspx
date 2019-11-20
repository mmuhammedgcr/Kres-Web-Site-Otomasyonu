<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="web_prog.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ana Sayfa</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>

    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
            width:100%;

        }

        .carousel-inner img {
            width: 100%; /* Set width to 100% */
            margin: auto;
            min-height: 200px;
        }

        /* Hide the carousel text when the screen is less than 600 pixels wide */
        @media (max-width: 600px) {
            .carousel-caption {
                display: none;
            }
        }

        
    </style>


</head>
<body>

   <div class="row" style="background-image:url('/images/back.jpg'); padding:0px; margin:0px;">
        <div class="col-sm-12">
            <div style="height: 150px; float:left;">
                <a href="index.aspx">
                    <img src="/images/logo.png" /></a>
            </div>
            <div style="float:right;">
            <a href="https://www.facebook.com/" target="_blank">
                <img src="/images/facebook.png" style="float: right;" /></a>
            <a href="https://www.twitter.com/" target="_blank">
                <img src="/images/twitter.png" style="float: right;" /></a>
            <a href="https://www.instagram.com/" target="_blank">
                <img src="/images/instagram.png" style="float: right;" /></a>
        </div>
        </div>
    </div>

        <nav class="navbar navbar-default"> <div class="collapse navbar-collapse" id="myNavbar" style="">
        <div class="container-fluid" >
            <div class="navbar-header">
                
                <a class="navbar-brand" href="#">Minik Kalpler </a>
            </div>
            
                
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/index.aspx">Ana Sayfa</a></li>
                    <li><a href="/hakkimizda.aspx">Hakkımızda</a></li>
                    <li><a href="/galeri.aspx">Foto Galeri</a></li>
                    <li><a href="/iletisim.aspx">İletişim</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="loginPanel.aspx"><span class="glyphicon glyphicon-log-in" style="margin-right:5px"></span>Giriş</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            

            <div class="item active">
                <img src="/images/slider2.jpg" alt="Image" />
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <img src="/images/slider3.jpg" alt="Image" />
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <img src="/images/slider4.jpg" alt="Image" />
                <div class="carousel-caption">
                    
                </div>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <div class="container text-center">
        <br />
        <div class="row">
            <div class="col-sm-12" style="background-color: rgba(255, 255, 255, 0.5);">
                <h1>HAKKIMIZDA</h1>
                <p>İnsan yaşamının en önemli dönemi olan 0-6 yaş döneminin gelişim özelliklerine hakim, geleceği şekillendirme sorumluluğunun bilincinde olan donanımlı ekibimizle, ulusal ve evrensel değerleri içselleştirmiştir.Değerli Anneler ve babalar, Toplumumuzda okul öncesi eğitim ile çocuk bakımı birbirine karıştırılmakta ve genelde çalışmayan anneler ile torunlarına bakabilme imkanına sahip aile büyükleri çocuklarını okul öncesi eğitime göndermemektedir. Çocukların zihinsel ve kişilik gelişimi üzerine yapılan araştırmalarda, bazı bilim adamları çocukların 0-1 yaş arasında, bazıları 0-3 yaş, bazılarının ise 0-6 yaş arasında tüm zihinsel ve kişilik gelişimini tamladığını belirtmektedir. Üç görüşün de ortak yanı çocukların zihinsel ve kişilik gelişimlerinin okul öncesi eğitim çağından önce ve okulöncesi eğitim<a href="hakkimizda.aspx">...devamı</a></p>
                <hr />
                <h3>Biz Buradayız</h3>
                
            </div>
        </div>
        <div class="row" style="background-color: rgba(255, 255, 255, 0.5);">
            <div class="col-sm-4">
                <img src="images/port1.jpg"  class="img-responsive" style="width: 100%" alt="Image"/>
                
                <p>Eğlence Dolu Anlarda</p>
            </div>
            <div class="col-sm-4">
                <img src="images/port2.jpg"  class="img-responsive" style="width: 100%" alt="Image"/>
                
                <p>Gülen Yüzlerle</p>
            </div>
            <div class="col-sm-4">
                <img src="images/port3.jpg" class="img-responsive" style="width: 100%" alt="Image" />
                
                <p>Eğitici Programlarımızla</p>
            </div>
        </div>
    </div>
    <br/>

    <footer class="container-fluid text-center">
        <div style="float:left;">
            <p style="float:left;">
               
                İletişim:+9005556668899<br />
                E-MAIL: kres@duzce.uni
            </p>
        </div>
        
        <div style="float:right; ">
            <a href="https://www.facebook.com/" target="_blank">
                <img src="/images/facebook.png" style="float: right;" /></a>
            <a href="https://www.twitter.com/" target="_blank">
                <img src="/images/twitter.png" style="float: right;" /></a>
            <a href="https://www.instagram.com/" target="_blank">
                <img src="/images/instagram.png" style="float: right;" /></a>
        </div>
        <p> WEB PROGRAMLAMA PROJESİ</p>
    </footer>
</body>
</html>

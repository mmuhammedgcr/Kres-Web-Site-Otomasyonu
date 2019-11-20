<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="web_prog.MasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/bootstrap.js"></script>
    <script src="js/Jquery.js"></script>
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <title>Hakkımızda</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
    </style>



</head>
<body>

    <div class="row" style="background-image:url('/images/back.jpg'); padding:0px; margin:0px;">
        <div class="col-sm-12">
            <div style="height: 150px; float:left;">
                <a href="index.aspx">
                    <img src="/images/logo.png" />
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
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Minik Kalpler </a>
            </div>
            
                
                <ul class="nav navbar-nav">
                    <li><a href="/index.aspx">Ana Sayfa</a></li>
                    <li><a href="/hakkimizda.aspx">Hakkımızda</a></li>
                    <li><a href="/galeri.aspx">Foto Galeri</a></li>
                    <li><a href="/iletisim.aspx">İletişim</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="loginPanel.aspx"><span class="glyphicon glyphicon-log-in" style="margin-right:5px"></span>Login</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid text-center">
        <div class="row content">
            <div class="col-sm-2 sidenav" style="background-color: rgba(255, 255, 255, 0);">
                
            </div>
            <div class="col-sm-8 text-left" style="background-color: rgba(255, 255, 255, 0.5);">
                <h1>HAKKIMIZDA</h1>
                <p>      İnsan yaşamının en önemli dönemi olan 0-6 yaş döneminin gelişim özelliklerine hakim, geleceği şekillendirme sorumluluğunun bilincinde olan donanımlı ekibimizle, ulusal ve evrensel değerleri içselleştirmiştir.Değerli Anneler ve babalar, Toplumumuzda okul öncesi eğitim ile çocuk bakımı birbirine karıştırılmakta ve genelde çalışmayan anneler ile torunlarına bakabilme imkanına sahip aile büyükleri çocuklarını okul öncesi eğitime göndermemektedir. Çocukların zihinsel ve kişilik gelişimi üzerine yapılan araştırmalarda, bazı bilim adamları çocukların 0-1 yaş arasında, bazıları 0-3 yaş, bazılarının ise 0-6 yaş arasında tüm zihinsel ve kişilik gelişimini tamladığını belirtmektedir. Üç görüşün de ortak yanı çocukların zihinsel ve kişilik gelişimlerinin okul öncesi eğitim çağından önce ve okulöncesi eğitim sürecinde tamamladıklarını belirtmeleridir. Atatürk ilkelerine bağlı, kendisinin farkında, özgüven, gelişmiş, bilimsel düşünebilen, yaratıcı, araştırma ve öğrenmeye meraklı, insana ve doğaya saygılı bireyler olarak hayata hazırlamak üzere sürekli gelişen eğitim ve öğrenme ortamlarını, sevginin sıcaklığında çocuklarımıza sunmaktır. Vizyonumuz ülke değerleriyle evrensel ilkeleri birleştirmiş, İnsan ve doğayı bir bütün olarak kavrayan, Kendinin ve yeteneklerinin farkında olarak geleceğine yön veren, Kendisi ve içinde bulunduğu toplumla barışık, Bilimin öncülüğünü ilke edinmiş, Sorgulayan, sorun üreten değil sorun çözen, Hayata haır bireylerin yetişmesine MİNİK KALPLER KREŞ öncülük etmektedir.
<br /><br />
    Doğumdan bir ay sonra ona canlı renklerden oluşan görsel objelerin oyuncakların, resimlerin gösterilmesi, ileriki aylarda bol resimli kitapların okunması (kitap okurken çocukların resimleri göreceği şekilde olunmalıdır), onunla küçük oyunların oynanmaya başlanması, başardığında çoşkulu bir şekilde kucaklanması kısacası sevgi ve şefkat ortamında büyütülmeleri çocukların özgüveni yüksek, kendini ifade edebilen bireyler olarak yetiştirilmesine büyük katkı sağlamaktadır. Biz anaokulumuzda tüm bu hususları göz önün de bulundurduğumuzdan sevgieğitmeni temele alıyoruz. Anaokulumuzda sevgi eğitimini temele alarak bugünün özgüvenliçoçuklarını, yarının ise Özgüven bireylerini birlikte işbirliği içerisinde yetiştirmek istiyoruz. Felsefemiz.... Sevgi ve hoşgörü temeline dayanan eğitim anlayışımızla uzman ve güvenilir ellerde olduğunu bilmenin huzuru çocuklarımıza ve siz velilerimize yansır. Bizim için araştırıcı ve sorgulayıcı bir zihne sahip olmak herhangi bir bilgiye sahip olmaktan çok daha önemlidir. Bu bilinçle çocuklarımızı hayata hazırlıyor ve sağlıklı kişilik temelleri olan bireyler olarak yetiştiriyoruz. İlkelerimiz.... Özgüven Çocuk; Çocuklara yetişkinlerin küçük bir kopyası gibi değil, kendine özgü gelişimsel özellikleri ve bireysel farklılıkları olan bir birey olarak yaklaşır. Çocukların; öncelikli olarak kendilerini ve başkalarını tanımaları, anlamaları ve farklı yollarla (beden dili, sözcükler, hareketler, çizim...) duygu ve düşüncelerini ifade etmelerini sağlar. Çocukların ilgi ve ihtiyaçlarının belirlenmesini ve daha sonra –eğitim programları dahilinde- karşılanmasını benimser. Çocukların yaş, gelişim özellikleri, cinsiyet farklılıklarını gözönünde bulundurarak eğitimde özgüven-özsaygı-yeterlilik duygularını kazandırır ve gelişmesini sağlar. Çocukların yaparak-yaşayarak öğrenme, keşfetme ve araştırma becerilerini kazanmalarına fırsat sağlar. Çocukların yalnızca bir değil tüm gelişim alanlarının (motor, dil, bilişsel, sosyal-duygusal, kişisel, özbakım, yaratıcılık) desteklenmesi için çaba sarfeder. Çocuklara ırk, dil, din sosyal statü ayırımı yapmaksızın insana insan olduğu için değer verme olgusuyla yaklaşır.
</p>
                <hr />
                
            </div>
            <div class="col-sm-2 sidenav" style="background-color: rgba(255, 255, 255, 0);">
                
            </div>
        </div>
    </div>

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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="web_prog.iletisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/bootstrap.js"></script>
    <script src="js/Jquery.js"></script>
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />

    <title>İletişim Sayfası</title>
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


        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

            input[type=submit]:hover {
                background-color: #45a049;
            }

        .container {
            width: 100%;
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            float: left;
        }
    </style>



</head>
<body >
    <form runat="server">
        
        <div class="row" style="background-image: url('/images/back.jpg'); padding: 0px; margin: 0px;">
            <div class="col-sm-12">
                <div style="height: 150px; float: left;">
                    <a href="index.aspx"/>
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
            <div class="collapse navbar-collapse" id="myNavbar" >
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

        <div class="container-fluid text-center" runat="server">
            <div class="row content" runat="server">
                <div class="col-sm-2 sidenav" style="background-color: rgba(255, 255, 255, 0);" >
                </div>

                <div class="col-sm-8 text-left" style="background-color: rgba(255, 255, 255, 0.5);">
                    <div class="container" style="background-color: rgba(255, 255, 255, 0);" >
                        <div class="container" style="float: right; width: 50%; background-color: rgba(255, 255, 255, 0);">
                            <div style="background-color: rgba(255, 255, 255, 0);">
                                <label for="fname">Ad</label>
                                <asp:TextBox ID="txtAd" runat="server" ></asp:TextBox>

                                <label for="lname">Soyad</label>
                                <asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>

                                <label for="mail_adres">E-Mail</label>
                                <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>

                                <label for="">Mesaj</label>
                                
                                <asp:TextBox ID="txtmesaj" runat="server" style="height: 200px" TextMode="MultiLine"></asp:TextBox>
                                <asp:Button ID="btnKaydet" runat="server" Text="Gönder" OnClick="btnKaydet_Click" />
                            </div>
                        </div>
                        <div class="container" style="float: left; width: 50%; background-color: rgba(255, 255, 255, 0);">
                            <div >
                                <h2>İletişim Bilgilerimiz</h2>
                                <p>
                                    <br />
                                    Düzce Üniversitesi Konuralp Yerleşkesi Konuralp
                            <br />
                                    Merkez/Düzce<br />
                                    81620
                                </p>
                                <br />
                                <br />
                                <hr />
                                <h3>Harita</h3>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d2846.232066719074!2d31.18036591130162!3d40.90527139033073!3m2!1i1024!2i768!4f13.1!5e0!3m2!1str!2str!4v1493755324929" width="100%" height="300" frameborder="0" style="border: 0" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-2 sidenav" style="background-color: rgba(255, 255, 255, 0);">
                </div>
            </div>
        </div>

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
   </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VeliPanel.aspx.cs" Inherits="web_prog.VeliPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Veli Panel</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/sb-admin.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.metisMenu.js"></script>
    <script src="js/sb-admin.js"></script>
</head>
<body>
    <form runat="server">
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="margin-bottom: 0">
                <div style="width: 350px; height: auto; float: left;">
                    <img src="images/logo.png" />
                </div>
                <div style="width: 200px; height: auto; float: right;">
                    Logo
                </div>
                <div class="navbar-default navbar-static-side" role="navigation" style="margin-top: 150px">
                    <div class="sidebar-collapse">
                        <ul class="nav" id="side-menu">
                            <li>
                                <a href="index.aspx"><i></i>ANA SAYFAYA DÖN</a>
                            </li>
                            <li class="">
                                <a href="loginPanel.aspx"><i></i>GÜVENLİ ÇIKIŞ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div id="page-wrapper">
                <div class="col-lg-12" style="margin-top: 150px">
                    <div class="col-lg-12">
                        <div class="form-group row">

                            <div class="col-xs-4">
                                <label for="ex2">AD</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliAd" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtVeliAd" runat="server" CssClass="form-control" placeholder=" Ad"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <label for="ex3">SOYAD</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliSoyad" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtVeliSoyad" runat="server" CssClass="form-control" placeholder=" Soyad"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-xs-4">
                                <label for="ex1">CEP TEL.</label><asp:RegularExpressionValidator Style="margin-left: 5px" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Hatalı Giriş Yaptınız" ValidationGroup="Ekle" ValidationExpression="^[0-9]{11}$" ControlToValidate="txtVeliCepTel"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="txtVeliCepTel" runat="server" CssClass="form-control" placeholder="Örnek = 05556668899"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <label for="ex2">ADRES</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliAdres" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtVeliAdres" runat="server" CssClass="form-control" placeholder=" Adres"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <label for="ex3">MEDENİ HAL</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtMedeniHal" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtMedeniHal" runat="server" CssClass="form-control" placeholder="Örnek = Evli veya Bekar"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-xs-4">
                                <label for="ex3">DOĞUM TARİHİ</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliDogumTarih" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtVeliDogumTarih" runat="server" CssClass="form-control" placeholder="Örnek = 0000.00.00"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <label for="ex3">CİNSİYET</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliCinsiyet" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtVeliCinsiyet" runat="server" CssClass="form-control" placeholder="Örnek = E veya K"></asp:TextBox>
                            </div>
                            <div class="col-xs-4">
                                <label for="ex3">Şifre</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliSifre" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="txtVeliSifre" runat="server" CssClass="form-control" placeholder="Örnek = Şifre"></asp:TextBox>
                            </div>
                        </div>
                        <br />

                        <label for="ex1">VELİ BİLGİLERİ</label>
                        <table class="col-lg-12">
                            <asp:Repeater ID="dlVeli" runat="server">
                                <HeaderTemplate>
                                    <tr>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">TC</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Adı</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Soyadı</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Cep Tel.</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Adres</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Medeni Hal</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Dogum Tarihi</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Cinsiyet</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Şifre</td>
                                        
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Güncelle</td>
                                    </tr>

                                </HeaderTemplate>
                                <ItemTemplate>

                                    <tr class="table .warning">
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("TcNo") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Adi") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Soyadi") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("CepTel") %></td>
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Adres") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("MedeniHali") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("DogumTarihi") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Cinsiyet") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Sifre") %></td>

                                       
                                        <td class="col-lg-1" style="background-color: #fcf8e3;">

                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("TcNo") %>'><img src="images/guncelle.png" style="width:25px; height:25px;" /></asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class="table .succes">
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("TcNo") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Adi") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Soyadi") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("CepTel") %></td>
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Adres") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("MedeniHali") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("DogumTarihi") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Cinsiyet") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Sifre") %></td>
                                        
                                        <td class="col-lg-1" style="background-color: #dff0d8;">
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("TcNo") %>'><img src="images/guncelle.png" style="width:25px; height:25px;"/></asp:LinkButton>
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>

                        </table>

                    </div>







                    <div class="col-sm-12" style="margin-top: 10px">
                        <label for="ex1">ÇOCUK BİLGİSİ</label>
                        <table class="col-lg-12">
                            <asp:Repeater ID="dlCocuk" runat="server">
                                <HeaderTemplate>
                                    <tr>
                                        <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">TC</td>
                                        <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">Veli TC</td>
                                        <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">Adı</td>
                                        <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">Soyadı</td>
                                        <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">DOĞUM TARİHİ</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">SAĞLIK DURUMU</td>
                                        <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">BOY</td>
                                        <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">KİLO</td>
                                        <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">Cinsiyet</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">AÇIKLAMA</td>

                                    </tr>

                                </HeaderTemplate>
                                <ItemTemplate>

                                    <tr class="table .warning">
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Tcno") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("VeliTcNo") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Adi") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Soyadi") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("DogumTarihi") %></td>
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("SaglikDurumu") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Boyu") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Kilosu") %></td>
                                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Cinsiyet") %></td>
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Aciklama") %></td>




                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class="table .succes">
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Tcno") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("VeliTcNo") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Adi") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Soyadi") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("DogumTarihi") %></td>
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("SaglikDurumu") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Boyu") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Kilosu") %></td>
                                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Cinsiyet") %></td>
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Aciklama") %></td>

                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>

                        </table>




                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>

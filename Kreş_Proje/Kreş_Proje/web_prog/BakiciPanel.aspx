<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BakiciPanel.aspx.cs" Inherits="web_prog.BakiciPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Bakıcı Paneli</title>

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
        <div id="wrapper" >
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

            <div id="page-wrapper" >
                <div class="col-lg-12" style="margin-top:150px">
                    <div class="col-sm-12">
                        <div class="col-lg-12" style="margin-bottom: 10px;">
                            <div class="col-lg-12">
                                <div class="form-group row">
                                    
                                    <div class="col-xs-6">
                                        <label for="ex2">AD</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Style="margin-left: 5px" ErrorMessage="Boş Geçilemez" ControlToValidate="txtBakiciAd" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtBakiciAd" runat="server" CssClass="form-control" placeholder="Örnek = Ahmet"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <label for="ex1">SOYAD</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Style="margin-left: 5px" ErrorMessage="Boş Geçilemez" ControlToValidate="txtBakiciSoyad" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtBakiciSoyad" runat="server" CssClass="form-control" placeholder="Örnek = Murat"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    
                                    <div class="col-xs-6">
                                        <label for="ex1">CEP TEL.</label><asp:RegularExpressionValidator Style="margin-left: 5px" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Hatalı Giriş Yaptınız" ValidationGroup="Ekle" ValidationExpression="^[0-9]{11}$" ControlToValidate="txtCepTel"></asp:RegularExpressionValidator>
                                        <asp:TextBox ID="txtCepTel" runat="server" CssClass="form-control" placeholder="Örnek = 05056809977"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                        <label for="ex1">ADRES</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Style="margin-left: 5px" ErrorMessage="Boş Geçilemez" ControlToValidate="txtAdres" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" placeholder="Örnek = Kiraz Sk. Kadıköy/İstanbul"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-xs-6">
                                        <label for="ex1">ŞİFRE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Style="margin-left: 5px" ErrorMessage="Boş Geçilemez" ControlToValidate="txtSifre" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" placeholder="Örnek = 123456"></asp:TextBox>
                                    </div>
                                    <div class="col-xs-6">
                                    </div>
                                </div>
                            </div>

                        </div>
                        <br />

                        <label for="ex1">BAKICI BİLGİLERİ</label>
                        <table class="col-lg-12">
                            <asp:Repeater ID="dlBakici" runat="server">
                                <HeaderTemplate>
                                    <tr>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">TC</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Adı</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Soyadı</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Cep Tel.</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Adres</td>
                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Şifre</td>

                                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Güncelle</td>
                                    </tr>

                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr class="table .warning">
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("TcNo") %></td>
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Adi") %></td>
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Soyadi") %></td>
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("CepTel") %></td>
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Adres") %></td>
                                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Sifre") %></td>

                                        <td class="col-lg-2" style="background-color: #fcf8e3;">
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("TcNo") %>'><img src="images/guncelle.png" style="width:25px; height:25px;" /></asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr class="table .succes">
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("TcNo") %></td>
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Adi") %></td>
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Soyadi") %></td>
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("CepTel") %></td>
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Adres") %></td>
                                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Sifre") %></td>

                                        <td class="col-lg-2" style="background-color: #dff0d8;">
                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("TcNo") %>'><img src="images/guncelle.png" style="width:25px; height:25px;"/></asp:LinkButton>
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                            </asp:Repeater>
                        </table>

                    </div>







                    <div class="col-sm-12" style="margin-top:10px">
                        <label for="ex1">BAKICIYA TANIMLI ÇOCUKLAR</label>
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


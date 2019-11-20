<%@ Page Title="" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="VeliListesi.aspx.cs" Inherits="web_prog.VeliListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <title>Veri Listesi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="col-lg-12" style="margin-bottom: 10px;">
            <div class="col-lg-12">
                <div class="form-group row">
                    <div class="col-xs-4">
                        <label for="ex1">TC</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliTC" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVeliTC" runat="server" CssClass="form-control" placeholder="Örnek = 11111111111"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex2">AD</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliAd" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVeliAd" runat="server" CssClass="form-control" placeholder=" Ad"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex3">SOYAD</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliSoyad" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVeliSoyad" runat="server" CssClass="form-control" placeholder=" Soyad"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-4">
                        <label for="ex1">CEP TEL.</label><asp:RegularExpressionValidator style="margin-left:5px" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Hatalı Giriş Yaptınız" ValidationGroup="Ekle" ValidationExpression="^[0-9]{11}$" ControlToValidate="txtVeliCepTel"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtVeliCepTel" runat="server" CssClass="form-control" placeholder="Örnek = 05556668899"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex2">ADRES</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliAdres" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVeliAdres" runat="server" CssClass="form-control" placeholder=" Adres"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex3">MEDENİ HAL</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtMedeniHal" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtMedeniHal" runat="server" CssClass="form-control" placeholder="Örnek = Evli veya Bekar"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-4">
                        <label for="ex3">DOĞUM TARİHİ</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliDogumTarih" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVeliDogumTarih" runat="server" CssClass="form-control" placeholder="Örnek = 0000.00.00"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex3">CİNSİYET</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliCinsiyet" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVeliCinsiyet" runat="server" CssClass="form-control" placeholder="Örnek = E veya K"></asp:TextBox>
                    </div>
                    <div class="col-xs-4">
                        <label for="ex3">Şifre</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliSifre" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVeliSifre" runat="server" CssClass="form-control" placeholder="Örnek = Şifre"></asp:TextBox>
                    </div>
                </div>


            </div>
            <div class="col-lg-1">
                <asp:LinkButton ID="btnVeliEle" CssClass="btn btn-info" runat="server" ValidationGroup="Ekle"  OnClick="btnVeliEkle_Click">EKLE</asp:LinkButton>
            </div>
        </div>
        <br />
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
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Sil</td>
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

                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("TcNo") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
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
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil"  CommandArgument='<%# Eval("TcNo") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                        <td class="col-lg-1" style="background-color: #dff0d8;">
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("TcNo") %>'><img src="images/guncelle.png" style="width:25px; height:25px;"/></asp:LinkButton>
                        </td>
                    </tr>
                </AlternatingItemTemplate>
            </asp:Repeater>

        </table>
    </form>

</asp:Content>

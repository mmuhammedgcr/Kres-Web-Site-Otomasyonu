<%@ Page Title="" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="BakiciListesi.aspx.cs" Inherits="web_prog.BakiciListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <title>Bakıcı Listesi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server">
        <div class="col-lg-12" style="margin-bottom: 10px;">
            <div class="col-lg-12">
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex1">TC</label> <asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtBakiciTC" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtBakiciTC" runat="server" CssClass="form-control" placeholder="Örnek = 12345678901"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex2">AD</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" style="margin-left:5px" ErrorMessage="Boş Geçilemez" ControlToValidate="txtBakiciAd" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtBakiciAd" runat="server" CssClass="form-control" placeholder="Örnek = Ahmet"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex1">SOYAD</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" style="margin-left:5px" ErrorMessage="Boş Geçilemez" ControlToValidate="txtBakiciSoyad" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtBakiciSoyad" runat="server" CssClass="form-control" placeholder="Örnek = Murat"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex1">CEP TEL.</label><asp:RegularExpressionValidator style="margin-left:5px" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Hatalı Giriş Yaptınız" ValidationGroup="Ekle" ValidationExpression="^[0-9]{11}$" ControlToValidate="txtCepTel"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtCepTel" runat="server" CssClass="form-control" placeholder="Örnek = 05056809977"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex1">ADRES</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" style="margin-left:5px" ErrorMessage="Boş Geçilemez" ControlToValidate="txtAdres" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" placeholder="Örnek = Kiraz Sk. Kadıköy/İstanbul"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex1">ŞİFRE</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" style="margin-left:5px" ErrorMessage="Boş Geçilemez" ControlToValidate="txtSifre" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtSifre" runat="server" CssClass="form-control" placeholder="Örnek = 123456"></asp:TextBox>
                    </div>
                </div>
            </div>
        <div class="col-lg-1">
            <asp:LinkButton ID="btnBakiciEkle" CssClass="btn btn-info" runat="server" OnClick="btnBakiciEkle_Click" ValidationGroup="Ekle">EKLE</asp:LinkButton>
        </div>
        </div>
        <br />
    
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
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Sil</td>
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
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("TcNo") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
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
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("TcNo") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                        <td class="col-lg-2" style="background-color: #dff0d8;">
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("TcNo") %>'><img src="images/guncelle.png" style="width:25px; height:25px;"/></asp:LinkButton>
                        </td>
                    </tr>
                </AlternatingItemTemplate>
            </asp:Repeater>
        </table>
    </form>
</asp:Content>

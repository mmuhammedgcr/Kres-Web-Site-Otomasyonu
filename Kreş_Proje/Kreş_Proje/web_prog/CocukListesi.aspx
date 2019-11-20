<%@ Page Title="" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="CocukListesi.aspx.cs" Inherits="web_prog.CocukListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <title>Çocuk Listesi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server">
        <div class="col-lg-12" style="margin-bottom: 10px;">
            <div class="col-lg-12">
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex1">TC</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtCocukTc" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtCocukTc" runat="server" CssClass="form-control" placeholder="Örnek = 11111111111"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex2">Veli TC</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtVeliTc" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtVeliTc" runat="server" CssClass="form-control" placeholder="Örnek = 12345678912"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex3">AD</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtCocukAd" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtCocukAd" runat="server" CssClass="form-control" placeholder="AD"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex1">SOYAD</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtCocukSoyad" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtCocukSoyad" runat="server" CssClass="form-control" placeholder="SOYAD"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex2">DOĞUM TARİHİ</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtCocukDogumTarih" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtCocukDogumTarih" runat="server" CssClass="form-control" placeholder="Örnek = 0000.00.00"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex3">SAĞLIK DURUMU</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtSaglik" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtSaglik" runat="server" CssClass="form-control" placeholder="SAĞLIK DURUMU"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex3">BOY</label><asp:RangeValidator ID="RangeValidator1" runat="server" Style="margin-left: 5px" ErrorMessage="150 DEN BÜYÜK DEĞER GİRİLEMEZ" ValidationGroup="Ekle" ControlToValidate="txtCocukBoy" MinimumValue="0" MaximumValue="150" Type="Integer"></asp:RangeValidator>
                        <asp:TextBox ID="txtCocukBoy" runat="server" CssClass="form-control" placeholder="Örnek = 80"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex3">KİLO</label><asp:RangeValidator ID="RangeValidator2" runat="server" Style="margin-left: 5px" ErrorMessage="99 DAN BÜYÜK DEĞER GİRİLEMEZ" ValidationGroup="Ekle" ControlToValidate="txtCocukKilo" MinimumValue="0" MaximumValue="150" Type="Integer"></asp:RangeValidator>
                        <asp:TextBox ID="txtCocukKilo" runat="server" CssClass="form-control" placeholder="Örnek = 25"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <label for="ex3">CİNSİYET</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtCocukCinsiyet" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtCocukCinsiyet" runat="server" CssClass="form-control" placeholder="Örnek = E veya K"></asp:TextBox>
                    </div>
                    <div class="col-xs-6">
                        <label for="ex3">AÇIKLAMA</label><asp:RequiredFieldValidator Style="margin-left: 5px" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtCocukAciklama" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtCocukAciklama" runat="server" CssClass="form-control" placeholder="AÇIKLAMA"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-2">
                        <label for="ex3">BAKICI SEÇ</label>
                    </div>
                    <div class="col-xs-4">
                       <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                    </div>
                    <div class="col-xs-6">
                        <asp:LinkButton ID="btnCocukEkle" CssClass="btn btn-info" runat="server" ValidationGroup="Ekle" OnClick="btnCocukEkle_Click">EKLE</asp:LinkButton>
                    </div>
                </div>
            </div>

        </div>
        <br />
        <table class="col-lg-12">
            <asp:Repeater ID="dlCocuk" runat="server">
                <HeaderTemplate>
                    <tr>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">TC</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Veli TC</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Adı</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Soyadı</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">DOĞUM TARİHİ</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">SAĞLIK DURUMU</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">BOY</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">KİLO</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Cinsiyet</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">AÇIKLAMA</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Sil</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Güncelle</td>
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
                        <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("Aciklama") %></td>
                        


                        <td class="col-lg-1" style="background-color: #fcf8e3;">

                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("Tcno") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                        <td class="col-lg-1" style="background-color: #fcf8e3;">

                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("Tcno") %>'><img src="images/guncelle.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
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
                        <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("Aciklama") %></td>
                        <td class="col-lg-1" style="background-color: #dff0d8;">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("Tcno") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                        <td class="col-lg-1" style="background-color: #dff0d8;">
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("Tcno") %>'><img src="images/guncelle.png" style="width:25px; height:25px;"/></asp:LinkButton>
                        </td>
                    </tr>
                </AlternatingItemTemplate>
            </asp:Repeater>

        </table>
    </form>

</asp:Content>

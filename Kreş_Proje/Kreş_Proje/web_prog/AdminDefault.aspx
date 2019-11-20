<%@ Page Title="" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="web_prog.AdminDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <title>Panel Ana Sayfa</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server">
        <div class="col-lg-12" style="margin-top: 10px">
            <div class="col-sm-8">
                <label for="ex1">BAKICI LİSTESİ</label>
                <table>

                    <asp:Repeater ID="dlBakici" runat="server">
                        <HeaderTemplate>
                            <tr>
                                <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">TC</td>
                                <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Adı</td>
                                <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Soyadı</td>
                                <td class="col-lg-1" style="background-color: #f2dede; font-weight: bold; color: White;">Cep Tel.</td>
                                <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Adres</td>


                            </tr>

                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="table .warning">
                                <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("TcNo") %></td>
                                <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Adi") %></td>
                                <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Soyadi") %></td>
                                <td class="col-lg-1" style="background-color: #fcf8e3;"><%#Eval("CepTel") %></td>
                                <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Adres") %></td>


                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr class="table .succes">
                                <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("TcNo") %></td>
                                <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Adi") %></td>
                                <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Soyadi") %></td>
                                <td class="col-lg-1" style="background-color: #dff0d8;"><%#Eval("CepTel") %></td>
                                <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Adres") %></td>


                            </tr>
                        </AlternatingItemTemplate>
                    </asp:Repeater>
                </table>
            </div>
            <!--BAKICI LİSTESİ-->
            <div class="col-sm-4">
                <label for="ex1">SINIF LİSTESİ</label>
                <table>

                    <asp:Repeater ID="dlSinif" runat="server">
                        <HeaderTemplate>
                            <tr>

                                <td class="col-lg-4" style="background-color: #f2dede; font-weight: bold; color: White;">Sınıf Adı</td>
                            </tr>

                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="table .warning">

                                <td class="col-lg-4" style="background-color: #fcf8e3;"><%#Eval("SinifAdi") %></td>

                            </tr>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <tr class="table .succes">

                                <td class="col-lg-4" style="background-color: #dff0d8;"><%#Eval("SinifAdi") %></td>

                            </tr>
                        </AlternatingItemTemplate>
                    </asp:Repeater>

                </table>
            </div>
            <!--SINIF LİSTESİ-->
            <div class="col-sm-12" style="margin-top: 10px">
                <label for="ex1">VELİ LİSTESİ</label>
                <table>
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

                            </tr>
                        </AlternatingItemTemplate>
                    </asp:Repeater>

                </table>
            </div>
            <!--VELİ LİSTESİ-->
            <div class="col-sm-12" style="margin-top:10px">
                <label for="ex1">ÇOCUK LİSTESİ</label>
                <table>
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
            <!--ÇOCUK LİSTESİ-->

        </div>
    </form>






</asp:Content>

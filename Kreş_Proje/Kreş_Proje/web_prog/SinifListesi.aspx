<%@ Page Title="" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="SinifListesi.aspx.cs" Inherits="web_prog.SinifListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <title>Sınıf Listesi</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" >
        <div class="col-lg-12" style="margin-bottom: 10px;">
            <div class="col-lg-8">
                <div class="form-group row">
                    <div class="col-xs-8">
                        <label for="ex1">SINIF ADI</label><asp:RequiredFieldValidator style="margin-left:5px" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="txtSinifAdi" type="text" ValidationGroup="Ekle" Font-Bold="False"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="txtSinifAdi" runat="server" CssClass="form-control" placeholder="Örnek = Kelebekler"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-1">
                      <asp:LinkButton ID="btnSinifEkle2" CssClass="btn btn-info" runat="server" ValidationGroup="Ekle" OnClick="btnSinifEkle2_Click">EKLE</asp:LinkButton>
                </div>
            </div>
            

        </div>
        
        <br />
        <table class="col-lg-8">
            <asp:Repeater ID="dlSinif" runat="server">
                <HeaderTemplate>
                    <tr>
                        
                        <td class="col-lg-6" style="background-color: #f2dede; font-weight: bold; color: White;">Sınıf Adı</td>
                        <td class="col-lg-6" style="background-color: #f2dede; font-weight: bold; color: White;">Sil</td>
                        <td class="col-lg-6" style="background-color: #f2dede; font-weight: bold; color: White;">Güncelle</td>
                    </tr>

                </HeaderTemplate>
                <ItemTemplate>
                    <tr class="table .warning">
                        
                        <td class="col-lg-6" style="background-color: #fcf8e3;"><%#Eval("SinifAdi") %></td>
                        <td class="col-lg-6" style="background-color: #fcf8e3;">

                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("SinifID") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                        <td class="col-lg-6" style="background-color: #fcf8e3;">

                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("SinifID") %>'><img src="images/guncelle.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr class="table .succes">
                        
                        <td class="col-lg-6" style="background-color: #dff0d8;"><%#Eval("SinifAdi") %></td>
                        <td class="col-lg-6" style="background-color: #dff0d8;">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("SinifID") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                        <td class="col-lg-6" style="background-color: #dff0d8;">
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Guncelle" CommandArgument='<%# Eval("SinifID") %>'><img src="images/guncelle.png" style="width:25px; height:25px;"/></asp:LinkButton>
                        </td>
                    </tr>
                </AlternatingItemTemplate>
            </asp:Repeater>

        </table>
    </form>
</asp:Content>

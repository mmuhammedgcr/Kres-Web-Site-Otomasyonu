<%@ Page Title="" Language="C#" MasterPageFile="~/Panel.Master" AutoEventWireup="true" CodeBehind="GelenMesaj.aspx.cs" Inherits="web_prog.GelenMesaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <title>Gelen Mesaj</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form runat="server">    
        <table class="col-lg-12">
            <asp:Repeater ID="dlMesaj" runat="server">
                <HeaderTemplate>
                    <tr>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">AD</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">SOYAD</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">E-MAİL</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">MESAJ</td>
                        <td class="col-lg-2" style="background-color: #f2dede; font-weight: bold; color: White;">Sil</td>
                        
                    </tr>

                </HeaderTemplate>
                <ItemTemplate>
                    <tr class="table .warning">
                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Ad") %></td>
                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("Soyad") %></td>
                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("email") %></td>
                        <td class="col-lg-2" style="background-color: #fcf8e3;"><%#Eval("mesaj") %></td>
  
                        <td class="col-lg-2" style="background-color: #fcf8e3;">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("ID") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                        
                    </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                    <tr class="table .succes">
                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Ad") %></td>
                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("Soyad") %></td>
                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("email") %></td>
                        <td class="col-lg-2" style="background-color: #dff0d8;"><%#Eval("mesaj") %></td>

                        <td class="col-lg-2" style="background-color: #dff0d8;">
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Sil" CommandArgument='<%# Eval("ID") %>'><img src="images/delete.png" style="width:25px; height:25px;" /></asp:LinkButton>
                        </td>
                        
                    </tr>
                </AlternatingItemTemplate>
            </asp:Repeater>
        </table>
    </form>

</asp:Content>

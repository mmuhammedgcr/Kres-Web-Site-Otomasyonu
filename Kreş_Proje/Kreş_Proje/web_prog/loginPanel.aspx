<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPanel.aspx.cs" Inherits="web_prog.loginPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<style>
    body {
        width: 50%;
        margin: 200px auto;
        height: auto;
    }

    form {
        border: 3px solid #f1f1f1;
    }

    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    .Lbutton {
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

        .Lbutton:hover {
            opacity: 0.8;
        }

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }



    .container {
        padding: 16px;
    }

    span.psw {
        float: right;
        padding-top: 16px;
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }

        .cancelbtn {
            width: 100%;
        }
    }
</style>
<body>

    <h2>Giriş Ekranı</h2>

    <form runat="server">


        <div class="container">
            <label><b>TC</b></label>
            <asp:TextBox ID="txtTcNo" runat="server"></asp:TextBox>
            

            <label><b>Şifre</b></label>
            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
           

            <asp:Button ID="Button1" CssClass="Lbutton" runat="server" Text="Button" OnClick="Button1_Click" />

        </div>


    </form>

</body>

</html>

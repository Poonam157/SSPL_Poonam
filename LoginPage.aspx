<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SSPL_Poonam.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-decoration: underline;
            text-align: left;
        }
        .auto-style2 {
            width: 77%;
        }
        .auto-style3 {
            width: 89px;
        }
        .auto-style4 {
            width: 29px;
        }
        .auto-style5 {
            width: 588px;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style6">
        <div class="auto-style1">
            <strong>Login Page</strong></div>
        <table class="auto-style2" align="left">
            <tr>
                <td class="auto-style3">User Name</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtUserName" runat="server" TabIndex="1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter User Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style4">:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" TabIndex="2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" TabIndex="3" />
                    </td>
                <td class="auto-style5">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

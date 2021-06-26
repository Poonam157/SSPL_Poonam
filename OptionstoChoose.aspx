<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptionstoChoose.aspx.cs" Inherits="SSPL_Poonam.OptionstoChoose" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 23%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnEmpReg" runat="server" OnClick="btnEmpReg_Click" Text="Employee Registration" Width="248px"   />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="BtnPrime" runat="server" OnClick="BtnPrime_Click" Text="Prime Numbers" Width="248px" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>

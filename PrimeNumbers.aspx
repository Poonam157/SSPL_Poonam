<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrimeNumbers.aspx.cs" Inherits="SSPL_Poonam.PrimeNumbers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style2 {
            width: 71%;
        }
        .auto-style3 {
            width: 295px;
        }
        .auto-style4 {
            width: 74px;
        }
        .auto-style5 {
            height: 103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            Prime Numbers</div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Enter the maximum number</td>
                <td class="auto-style4">:</td>
                <td>
                    <asp:TextBox ID="txtMaxNumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Prime numbers:</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="btnDisplayPrime" runat="server" Text="Display" OnClick="btnDisplayPrime_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="3">
                    <asp:TextBox ID="txtResult" runat="server" TextMode="MultiLine" Width="695px" Height="77px"></asp:TextBox>
                    <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Back" />
                    <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click" Text="Close" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

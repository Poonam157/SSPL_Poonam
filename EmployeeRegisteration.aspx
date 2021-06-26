<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeRegisteration.aspx.cs" Inherits="SSPL_Poonam.EmployeeRegisteration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 173px;
        }
        .auto-style3 {
            width: 30px;
        }
        .auto-style4 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style5 {
            width: 173px;
            height: 26px;
        }
        .auto-style6 {
            width: 30px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style8 {
            width: 173px;
            height: 34px;
        }
        .auto-style9 {
            width: 30px;
            height: 34px;
        }
        .auto-style10 {
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
            width: 882px;
        }
        .auto-style12 {
            height: 26px;
            width: 882px;
        }
        .auto-style13 {
            width: 882px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style4">
            <strong>Employee Registeration Form</strong></div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">Name*</td>
                <td class="auto-style9">:</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ForeColor="Red" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="Enter String only" ForeColor="Red" ValidationExpression="^([a-zA-Z]+|[a-zA-Z]+\s[a-zA-Z]+)$" ValidationGroup="vg"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style10"></td>
            </tr>
            <tr>
                <td class="auto-style5">Date of Birth*</td>
                <td class="auto-style6">:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDOB" ForeColor="Red" ErrorMessage="Enter DOB"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style2">Email*</td>
                <td class="auto-style3">:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtemail" runat="server" TabIndex="2" TextMode="Email"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="vg" ErrorMessage="Format Exception"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" ForeColor="Red" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">MobileNo*</td>
                <td class="auto-style3">:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtmobile" runat="server" TabIndex="3" TextMode="Phone"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtmobile" ForeColor="Red" ValidationExpression="^[6-9]\d{9}$" ValidationGroup="vg" ErrorMessage="Format Exception"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobile" ForeColor="Red" ErrorMessage="Enter Valid Phone number"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Designation*</td>
                <td class="auto-style3">:</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="dropdesig" runat="server" DataSourceID="SqlDataDesignation" DataTextField="DesignationDesc" DataValueField="DesignationId" TabIndex="4">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataDesignation" runat="server" ConnectionString="<%$ ConnectionStrings:Employee_PoonamConnectionString %>" SelectCommand="SELECT [DesignationId], [DesignationDesc] FROM [TblDesignation]"></asp:SqlDataSource>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dropdesig" ForeColor="Red" ErrorMessage="Select Designation"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnSave" runat="server" Text="Save" TabIndex="5" OnClick="btnSave_Click" />
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" TabIndex="6" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:GridView ID="GridEmpDetails" runat="server" AllowPaging="True" Width="314px" BackColor="#FFCCFF" BorderColor="#003366" BorderStyle="Double" Caption="Employee Detail" CaptionAlign="Top">
            
        </asp:GridView>
    </form>
</body>
</html>

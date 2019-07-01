<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintBill.aspx.cs" Inherits="Admin_PrintBill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 90%;
            background-color:#DCDCDC;
            box-shadow:5px 5px 5px black;
            text-align:center;
            height:500px;
            color:black;
            font-size:18px;
            text-shadow:1px 1px 1px green;
            border:1px solid black;
        }
        .auto-style2
        {
            height: 4px;
        }
        input
        {
            width:230px;
            height:37px;
            margin:5px;
        }
        #Button1,#BtnGenerate
        {
            background-color:green;
            border-radius:10px;
            box-shadow:3px 3px 25px black inset;
            color:#99CC00;
            font-size:20px;
            text-shadow:2px 2px 2px black;
            height:40px;
            width:150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center>
        <h1 style="text-shadow:2px 2px 2px gray;">Details Of Your Booking and Bill</h1><hr />
        <br />
    <table align="center" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>Bill Number</td>
            <td>
                <asp:TextBox ID="TxtBillNo" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="BtnGenerate" runat="server" OnClick="BtnGenerate_Click" Text="Bill Generate" />
            </td>
        </tr>
        <tr>
            <td>Customer Name</td>
            <td>
                <asp:TextBox ID="TxtCName" runat="server" Height="40px" Width="230px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Customer Address</td>
            <td>
                <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox>
            </td>
            <td>Connection Type</td>
            <td>
                <asp:TextBox ID="TxtConnType" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Contact Number</td>
            <td>
                <asp:TextBox ID="TxtContact" runat="server"></asp:TextBox>
            </td>
            <td>Rate of Cylinder</td>
            <td>
                <asp:TextBox ID="TxtRateOfCylinder" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>VAT of Amount</td>
            <td>
                <asp:TextBox ID="TxtVATAmount" runat="server"></asp:TextBox>
            </td>
            <td>Weight of Cylinder</td>
            <td>
                <asp:TextBox ID="TxtWeightOfCylinder" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>Total Amount</td>
            <td>
                <asp:TextBox ID="TxtTotalAmount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>Signature<br />
&nbsp;of 
                <br />
                Customer</td>
            <td>
                <asp:Label ID="LblCustName" runat="server" Text="Label"></asp:Label>
                </td>
            <td>Issued By</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Print Now" OnClientClick="window.print()" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


    </center>
    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="RequestForGas.aspx.cs" Inherits="ConsumerMaster_RequestForGas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width:600px;
            background-color: #99CC00;
            border-radius:10px 0px 10px 0px;
            box-shadow:10px 10px 10px black;
            font-size:25px;
            font-weight:bold;
            padding-left:50px;
            text-shadow:2px 2px 2px green;
            margin-top:80px;
            height:250px;
        }
        .auto-style2
        {
            height: 28px;
        }
        .txt
        {
            height:40px;
            width:230px;
            border-radius:0px 7px 0px 7px;
            margin:7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <h1 style="text-align:center; text-shadow:2px 2px 2px green;">Request For Gas</h1><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <center>
<br />
        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Customer Name</td>
                <td>
                    <asp:TextBox ID="TxtCName" runat="server" CssClass="txt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Connection Type</td>
                <td>
                    <asp:DropDownList ID="DDLConType" runat="server" CssClass="txt">
                        <asp:ListItem Value="">..Select..</asp:ListItem>
                        <asp:ListItem>CNG</asp:ListItem>
                        <asp:ListItem>PNG</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DDLConType" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Cylinder Weight</td>
                <td>
                    <asp:DropDownList ID="DDLCWeight" runat="server" CssClass="txt">
                        <asp:ListItem>..Select..</asp:ListItem>
                        <asp:ListItem>5 Kg</asp:ListItem>
                        <asp:ListItem>14 Kg</asp:ListItem>
                        <asp:ListItem>20 Kg</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <center><asp:Button ID="Button1" runat="server" style="box-shadow:3px 3px 30px black inset; background-color:green; color:#99CC00; font-size:20px; text-shadow:2px 2px 2px black; border-radius:7px;" Text="SUBMIT" height="40px" Width="130px" OnClick="Button1_Click" /></center>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2" style="text-align: left">
                    <asp:Label ID="LblMsg" runat="server" style="color: #FF0066" ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />

</center>
</asp:Content>


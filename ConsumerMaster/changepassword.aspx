<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="ConsumerMaster_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width:580px;
           font-size:25px;
            border-radius:10px 0px 10px 0px;
            background-color:#99CC00;
            margin:0px auto;
            margin-top:70px;
               box-shadow:10px 10px 10px black; 
               text-shadow:2px 2px 2px green;
               padding:10px;
        }
        input
        {
            width:250px;
            height:40px;
            font-size:18px;
            margin:5px;
            border-radius:5px 0px 5px 0px;
        }
        .auto-style2
        {
            width: 330px;
        }
        .btn
        {
            height:40px;
            width:160px;
            background-color:green;
            color:#99CC00;
            text-shadow:2px 2px 2px black;
            box-shadow:3px 3px 30px black inset;
            border-radius:7px;
            margin-left:-20px;
        }
        .auto-style3
        {
            width: 330px;
            height: 79px;
        }
        .auto-style4
        {
            height: 79px;
        }
        .auto-style5
        {
            width: 330px;
            height: 94px;
        }
        .auto-style6
        {
            height: 94px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <h1 style="text-align:center; text-shadow:2px 2px 2px green; color:black">Change Your Password here</h1><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style5">Enter Old Password</td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtOldPasswd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequirdFieldValidator" runat="server" ControlToValidate="TxtOldPasswd" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Enter New Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="TxtNewPasswd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNewPasswd" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password</td>
            <td>
                <asp:TextBox ID="TxtCPasswd" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtCPasswd" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPasswd" ControlToValidate="TxtCPasswd" ErrorMessage="Password is not match" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Change Password" OnClick="Button1_Click" CssClass="btn" />
            </td>
        </tr>
        </table>
</asp:Content>


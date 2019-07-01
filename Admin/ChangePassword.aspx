<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    #box
    {
    height:300px;
    width:440px;
    background-color:#DCDCDC;
    box-shadow:3px 3px 3px black;
    margin-left:80px;
    margin-top:70px;
    padding-left:60px;
    padding-top:70px;
    }
        #box:hover
        {
            background-color:#99CC00;
            -moz-transition:background-color 2s;
                 -webkit-transition:background-color 2s;
        }
        .txt
        {
            height:40px;
            width:300px;
            border:1px solid gray;
            padding-left:8px;
        }
        .btn
        {
            height:40px;
            width:150px;
            background-color:green;
            box-shadow:3px 3px 3px black;
            border-radius:8px;
            color:#99CC00;
            text-shadow:2px 2px 2px black;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <asp:TextBox ID="TxtCurPassword" runat="server" CssClass="txt" TextMode="Password" placeholder="Enter Current Password"></asp:TextBox >
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtCurPassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="TxtNewPassword" runat="server" CssClass="txt" TextMode="Password" placeholder="Enter New Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNewPassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="TxtConfPassword" runat="server" CssClass="txt" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtConfPassword" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtNewPassword" ControlToValidate="TxtConfPassword" ErrorMessage="Password is not match" ForeColor="#CC0000" Font-Size="Large"></asp:CompareValidator>
        <br /><br />
        <asp:Button ID="BtnChangePassword" runat="server" CssClass="btn" Text="CHANGE PASSWORD" OnClick="BtnChangePassword_Click"/>
    </div>
</asp:Content>


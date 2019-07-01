<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../images/download (1).jpg" rel="icon" />
    <title>Green Gas Limited</title>
    <style>
        body
        {
            background-color:black;
        }
        #box
        {
            margin-top:25px;
            margin-left:200px;
        }
        h1
        {
            color:#99CC00;
            text-shadow:1px 1px 1px green ;
        }
        .txt1
        {
            height:45px;
            width:400px;
            border:2px solid #99CC00;
            padding-left:8px;
            color:#99CC00;
            font-weight:bold;
        }
        .txt2
        {
            width:320px;
            height:45px;
            border:2px solid #99CC00;
            padding-left:8px;
            color:#99CC00;
            font-weight:bold;
        }
        .btn
        {
            height:51px;
            background-color:#99CC00;
            width:80px;
            font-weight:bold;
            border:none;
            color:white;
            margin-left:-8px;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
            <div id="box">
        <h1 style="margin:0px auto;">Admin Login..</h1><hr /><br />
        <asp:TextBox ID="TxtEmail" runat="server" placeholder="Enter Your Email.." CssClass="txt1"></asp:TextBox><br /><br />
        <asp:TextBox ID="TxtPasswd" runat="server" placeholder="Enter Your Password..." TextMode="Password" CssClass="txt2"></asp:TextBox>
        <asp:Button ID="BtnLogin" runat="server" Text="Login"  CssClass="btn" OnClick="BtnLogin_Click"/><br />
                </div>
    </form>
</body>
</html>

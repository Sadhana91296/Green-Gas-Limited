<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .login
        {
            height:40px;
            width:220px;
            margin-left:150px;
            border-radius:5px 0px 5px 0px;
            padding-left:8px;
        }
        #base
        {
            height:380px;
            width:550px;
            background-color:azure;
            padding:25px;
            margin-left:80px;
            border-radius:10px;
        }
        #box
        {
            height:270px;
            width:500px;
            margin:0px auto;
            border-radius:10px 0px 10px 0px;
            background-color:#DCDCDC;
            padding:20px;
            margin-top:30px;
            box-shadow:10px 10px 10px green;
            text-shadow:2px 2px 2px green;
        }
            #box:hover
            {
                background-color:#99CC00;
                color:black;
                text-shadow:2px 2px 2px green;
                -moz-transition:background-color 2s,color 2s;
                      -webkit-transition:background-color 2s,color 2s;
            }
        .button
        {
            height:40px;
            width:223px;
            background-color:green;
            box-shadow:2px 2px 2px black;
            color:#99CC00;
            text-shadow:2px 2px 2px black;
            border-radius:7px;
            font-size:20px;
            margin-left:150px;
        }
        #newuser
        {
            height:230px;
            width:560px;
            background-color:azure;
            margin-left:90px;
            margin-top:30px;
            padding-top:5px;
            border-radius:10px;
        }
        #newuser1
        {
            height:160px;
            width:500px;
            margin:10px;
            background-color:#DCDCDC;
            border-radius:10px 0px 10px 0px;
            box-shadow:7px 7px 7px green;
            color:black;
            text-shadow:2px 2px 2px green;
            padding:20px;
        }
         #newuser1:hover
            {
                background-color:#99CC00;
                color:black;
                text-shadow:2px 2px 2px green;
                      -webkit-transition:background-color 2s,color 2s;
                -moz-transition:background-color 2s,color 2s;
            }
        .buttonReg
        {

            height:15px;
            width:130px;
            background-color:green;
            box-shadow:2px 2px 2px black;
            color:#99CC00;
            text-shadow:2px 2px 2px black;
            border-radius:7px;
            font-size:15px;
            margin-left:170px;
            padding:12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="base">
    <div id="box">
        <h2 style="color:black;">EXISTING USER</h2>
        <hr /><br /><br />
    <asp:TextBox ID="TxtEmail" runat="server" placeholder="Enter Your User Id.." CssClass="login"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br /><br />
    <asp:TextBox ID="TxtPass" runat="server" placeholder="Enter your password" TextMode="Password"  CssClass="login"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtPass" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br /><br />
    <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="button" OnClick="BtnLogin_Click" />
        </div>
        </div>
    <div id="newuser">
        <div id="newuser1">
            <h2>NEW USER</h2><hr /><br />
            <center><a href="whyRegistration.aspx" target="_blank" style="color:black; text-shadow:2px 2px 2px green;">Why Registration ?</a><br />
            <a href="Instruction.aspx" target="_blank" style="color:black; text-shadow:2px 2px 2px green;" >Instruction</a></center><br />
            <div class="buttonReg"><a href="ConsumerRegistration.aspx" target="_blank" style="text-decoration:none; color:#99CC00; text-shadow:2px 2px 2px black;">REGISTER NOW</a></div>
        </div>
    </div>
</asp:Content>


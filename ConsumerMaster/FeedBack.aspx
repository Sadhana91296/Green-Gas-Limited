<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="ConsumerMaster_FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 70%;
            background-color:#99CC00;
            border-radius:10px 0px 10px 0px;
            font-family:'Times New Roman';
            font-size:x-large;
           font-weight:bold;
           margin-left:100px;
           padding-left:70px;
           margin-top:70px;
          color:black;
          text-shadow:1px 1px 1px green;
          box-shadow:10px 10px 10px black;
        }
        .txt
        {
        width:80%;
        height:50px;
       margin:5px;
       border-radius:5px 0px 5px 0px;
        }
        textarea
        {
        width:80%;
        height:90px;
        margin:5px;
        resize:none;
        font-size:large; 
        border-radius:7px 0px 7px 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <h1 style="text-align:center; text-shadow:2px 2px 2px green;">Give Your Valuable Feedback</h1><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Subject</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TxtSubject" runat="server" CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Message</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="TxtMsg" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <center><asp:Button ID="BtnFeed" runat="server"  style="color:#99CC00; border-radius:7px; text-shadow:2px 2px 2px black; background:green; box-shadow:3px 3px 30px black inset; height:40px; width:130px; font-size:20px; " Text="SUBMIT" OnClick="BtnFeed_Click" /></center>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


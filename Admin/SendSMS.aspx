<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="SendSMS.aspx.cs" Inherits="Admin_SendSMS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
    #box
    {
    height:300px;
    width:440px;
    background-color:#DCDCDC;
    border:1px solid gray;
    margin-left:80px;
    margin-top:70px;
    padding-left:60px;
    padding-top:70px;
    box-shadow:3px 3px 3px black;
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
            resize:none;
        }
        .btn
        {
            height:40px;
            width:150px;
            background-color:green;
            border-radius:8px;
            box-shadow:3px 3px 20px black inset;
            color:#99CC00;
            text-shadow:2px 2px 2px black;
            margin-left:100px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
     <div id="box">
        <asp:TextBox ID="TxtMobNo" runat="server" CssClass="txt" placeholder="Enter Your Mobile Number"></asp:TextBox ><br /><br />
        <asp:TextBox ID="TxtMsg" runat="server" CssClass="txt" TextMode="MultiLine" placeholder="Type Your Message Here.." Height="60px"></asp:TextBox><br /><br />
        <asp:Button ID="BtnSendSMS" runat="server" CssClass="btn" Text="SEND SMS" OnClick="BtnSendSMS_Click"/>
    </div>
</asp:Content>


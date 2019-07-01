<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style>
      #box
      {
          height:670px;
          width:800px;
      }
      #top
      {
          height:250px;
          width:796px;
      }
      .left
      {
          height:390px;
          width:375px;
          float:left;
          border:1px solid gray;
          box-shadow:3px 3px 3px gray;
          padding-left:10px;
          padding-top:20px;
      }
  </style>  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
<div id="top"><img src="images/contact.jpg" height="250px" width="796px" /></div><br />
        <div class="left">
         <center>
             <br /><br />
             <h3><u>Lucknow Office</u></h3><br /></center>
             Green Gas Limited Fortuna Towers,2nd floor<br />
             10,Rana Pratab Marg.<br /><br />
             <h3><u>Lucknow</u></h3> 226001<br /><br />
             <h3><u>Telephone</u></h3> 0522-4088530.<br /><br />
             <h3><u>Fax</u></h3>0522-4088529.  
        </div>
        <div class="left" style="margin-left:18px;">
    <br />
    <br />
    <center><h3><u>Agra Office</u></h3><br /></center>
        Green Gas Limited,2nd floor<br />
        Jeevan Prakash Buildind, Sanjay Place.<br /><br />
        <h3><u>Agra</u></h3>282002(U.P.)<br /><br />
    <h3><u>Telephone</u></h3> 0562-4061634.

        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
        #box
        {
            width:90%;
            height:auto;
            background-color:azure;
            margin-left:70px;
            margin:0px auto;
            border-radius:20px;
        }
        .row
        {
            width:100%;
            height:150px;
        }
        .col
        {
            width:25%;
            height:150px;
            border-radius:10px;
            box-shadow:10px 10px 10px green;
            font-weight:bold;
            text-align:center;
            background-color:#DCDCDC;
            color:black;
            padding:5px;
          
        }
        #tab1
        {
            margin:0px auto;
        }
            #tab1 tr td a
            {
                height:150px;
                text-decoration:none;
                color:black;
                font-size:20px;
                font-family:'Times New Roman'; 
                 text-shadow:2px 2px 2px green;
            }
                #tab1 tr td:hover 
                {
                    background-color:#99CC00;
                    color:black;
                    text-shadow:2px 2px 2px green;
                font-size:22px;
                    -moz-transition:background-color 2s,color 2s,font-size 2s;
                        -webkit-transition:background-color 2s,color 2s,font-size 2s;
                }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
    <table id="tab1" cellspacing="23px">
        <tr class="row">
            <td class="col"><a href="ConsumerMgmt.aspx">CONSUMER MANAGEMENT</a></td>
            <td class="col"><a href="ReviewMgmt.aspx"> REVIEW MANAGEMENT </a></td>
       <td class="col" ><a href="BookingMgmt.aspx">BOOKING MANAGEMENT</a></td>
        </tr>
        <tr class="row">
            <td class="col"><a href="PrintBill.aspx" >BILL GENERATION</a></td>
            <td class="col"><a href="LoginInfo.aspx">LOGIN INFO</a></td>
            <td class="col"><a href="EnquiryMgnt.aspx">ENQUIRY MANAGEMENT</a></td>
        </tr>
        <tr class="row">
            <td class="col"><a href="SendSMS.aspx">SEND SMS</a></td>
            <td class="col"><a href="Notification.aspx"> NOTIFICATION</a></td>
            <td class="col"><a href="Logout.aspx">LOGOUT</a></td>
        </tr>
    </table>
        </div>
</asp:Content>


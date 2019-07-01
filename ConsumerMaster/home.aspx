<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="ConsumerMaster_home" %>

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
            box-shadow:7px 7px 7px green;
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
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <h1 style="text-align:center; text-shadow:1px 1px 1px green">DashBoard</h1><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <div id="box">
    <table id="tab1" cellspacing="23px">
        <tr class="row">
            <td class="col"><a href="consumerreview.aspx">CONSUMER REVIEW</a></td>
            <td class="col"><a href="FeedBack.aspx"> FEEDBACK </a></td>
       <td class="col" ><a href="MyProfile.aspx">MY PROFILE</a></td>
        </tr>
        <tr class="row">
            <td class="col"><a href="changepassword.aspx" >CHANGE PASSWORD</a></td>
            <td class="col"><a href="BookingStatus.aspx">BOOKING STATUS</a></td>
            <td class="col"><a href="ViewReview.aspx">VIEW REVIEW</a></td>
        </tr>
        <tr class="row">
            <td class="col"><a href="RequestForGas.aspx">REQUEST FOR GAS</a></td>
            <td class="col"><a href="Answer.aspx"> GIVE ANSWER</a></td>
            <td class="col"><a href="Logout.aspx">LOGOUT</a></td>
        </tr>
    </table>
        </div>
</asp:Content>


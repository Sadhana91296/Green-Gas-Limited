<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="Answer.aspx.cs" Inherits="ConsumerMaster_Answer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 70%;
            background-color: #99CC00;
            font-family:'Times New Roman';
            font-size:22px;
            text-shadow:2px 2px 2px green;
            color:black;
            padding-left:20px;
            margin-left:100px;
            margin-top:80px;
            border-radius:10px 0px 10px 0px;
            padding-top:30px;
            margin-bottom:10px;
            box-shadow:10px 10px 10px black;
            border-radius:5px 0px 5px 0px;
        }
        textarea
        {
            height:50px;
            width:250px;
            border-radius:5px 0px 5px 0px;
            resize:none;
            margin:10px;
        }
        input
        {
            height:40px;
            width:180px;
            border-radius:5px 0px 5px 0px;
            margin-left:150px;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <h1 style="text-align:center; text-shadow:1px 1px 1px green;">Give Your Answer</h1><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">

    <table align="center" class="auto-style1">
        <tr>
            <td>Give Your Answer</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TxtAnswer" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnAnswer" runat="server" style="font-weight: 700; font-size: large; color: #FFFFFF; background-color: #009900" Text="Post Answer" OnClick="BtnAnswer_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>


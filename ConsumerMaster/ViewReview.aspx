<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="ViewReview.aspx.cs" Inherits="ConsumerMaster_ViewReview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <center>
        <br />


        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Question Number</td>
                <td>
                    <asp:Label ID="LblQNo" runat="server" Text="Label"></asp:Label>
                </td>
                <td colspan="2" rowspan="2">
                    <asp:Image ID="ImgUser" runat="server" Width="60px" />
                </td>
            </tr>
            <tr>
                <td>Answer</td>
                <td>
                    <asp:Label ID="LblAnswer" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Comment on Date </td>
                <td>
                    <asp:Label ID="LblDate" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="LblName" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>Given By </td>
                <td>
                    <asp:Label ID="Lbluid" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>


    </center>
</asp:Content>


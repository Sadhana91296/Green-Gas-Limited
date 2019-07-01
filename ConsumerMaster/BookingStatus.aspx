<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="BookingStatus.aspx.cs" Inherits="ConsumerMaster_BookingStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 70%;
            background-color:#99CC00;
            box-shadow:10px 10px 10px black;
            font-size:x-large;
            font-weight:bold;
            text-align:center;
            margin-top:90px;
            height:250px;
            border-radius:10px 0px 10px 0px;
            text-shadow:2px 2px 2px green;
        }
        .txt
        {
            height: 35px;
            width:100px;
            font-size:25px;
            text-align:center;
            font-family:'Times New Roman';
            text-shadow:2px 2px 2px green;
            color:#99CC00;
            background-color:green;
            box-shadow:3px 3px 30px black inset;
            margin-top:20px;
            border-radius:5px 0px 5px 0px;
        }
        .bill
        {
            border-radius:5px 0px 5px 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <h1 style="text-align:center; text-shadow:2px 2px 2px green;">Check Booking Status Here</h1><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <center>
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Enter Your Bill Number</td>
                <td>
                    <asp:TextBox ID="TxtBooking" runat="server" Height="40px" Width="270px" CssClass="bill"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="TxtBooking"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server"  Text="Submit" OnClick="Button1_Click" CssClass="txt" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <asp:GridView ID="Grid1" runat="server" Width="90%" Font-Bold="True" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </center>
</asp:Content>


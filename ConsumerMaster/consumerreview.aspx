<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="consumerreview.aspx.cs" Inherits="ConsumerMaster_consumerreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 67%;
            background-color: #99CC00;
            font-family:'Times New Roman';
            font-size:25px;
            color:black;
            text-shadow:2px 2px 2px green;
            padding:10px;
            margin-left:100px;
            border-radius:10px 0px 10px 0px;
            margin-top:60px;
            box-shadow:10px 10px 10px black;
            padding-left:60px;
        }
        input
        {
            height:40px;
            width:252px;
            border-radius:5px 0px 5px 0px;
            padding-left:5px;
            margin:5px;
        }
        textarea
        {
            height:40px;
            width:250px;
            border-radius:5px 0px 5px 0px;
            padding:5px;
            margin:5px;
            resize:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <h1 style="text-align:center; text-shadow:2px 2px 2px green;">Consumer's Review</h1><hr />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table align="center" class="auto-style1">
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td>Topic</td>
            <td>
                <asp:TextBox ID="TxtTopic" runat="server" placeholder="Enter Topic" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtTopic" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Message</td>
            <td>
                <asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine" placeholder="Enter Your Message" Height="55px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMessage" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
               <asp:Button ID="BtnPostReview" runat="server" style="font-size:20px; color:#99CC00; background-color:green; text-shadow:2px 2px 2px black; box-shadow:3px 3px 30px black inset; height:40px; width:180px;" Text="POST REVIEW" OnClick="BtnPostReview_Click"/>
            </td>
        </tr>
        </table>
    <br />
    <br />
    <br />
<center><asp:GridView ID="GV" runat="server" Width="90%" BackColor="#CCCCCC" BorderColor="#999999"  BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:HyperLinkField DataNavigateUrlFields="Reviewid" DataNavigateUrlFormatString="Answer.aspx?Reviewid={0}" HeaderText="Post Reviews" Text="Give Answer" />
                        <asp:HyperLinkField DataNavigateUrlFields="Reviewid" DataNavigateUrlFormatString="ViewReview.aspx?Reviewid={0}" HeaderText="View Reviews" Text="View Review" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView></center>
      
    
</asp:Content>


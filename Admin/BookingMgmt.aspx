<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="BookingMgmt.aspx.cs" Inherits="Admin_BookingMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
<center>
    <br /><br />
    <h2 style="text-shadow:2px 2px 2px gray;"><u>Booking Management of Cylinders</u></h2><br /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="18" DataKeyNames="CID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CName" HeaderText="CName" SortExpression="CName" />
            <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="ConType" HeaderText="ConType" SortExpression="ConType" />
            <asp:BoundField DataField="CylinderWeight" HeaderText="CylinderWeight" SortExpression="CylinderWeight" />
            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
            <asp:HyperLinkField DataNavigateUrlFields="CID" DataNavigateUrlFormatString="SendSMS.aspx?CID={0}" HeaderText="Send SMS" Text="Send" />
            <asp:HyperLinkField DataNavigateUrlFields="CID" DataNavigateUrlFormatString="PrintBill.aspx?CID={0}" HeaderText="For Bill Genrate" Text="Click here" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [CName], [ContactNo], [Address], [ConType], [CylinderWeight], [CID] FROM [TblBooking]"></asp:SqlDataSource>

    </center>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ConsumerMgmt.aspx.cs" Inherits="Admin_ConsumerMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <center>
        <br />
             <h2 style="text-shadow:2px 2px 2px gray;"><u>About Consumer</u></h2><br />
        <div id="div1" style="overflow:scroll; width:90%;">
        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False" DataKeyNames="EmailID" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="693px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ConnectionType" HeaderText="ConnectionType" SortExpression="ConnectionType" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" ReadOnly="True" SortExpression="EmailID" />
                <asp:BoundField DataField="PostalAddress" HeaderText="PostalAddress" SortExpression="PostalAddress" />
                <asp:ImageField DataImageUrlField="ProfilePic" DataImageUrlFormatString="~/UserPics/{0}" ControlStyle-Height="80px" ControlStyle-Width="80px" HeaderText="User Pictures">
<ControlStyle Height="80px" Width="80px"></ControlStyle>
                </asp:ImageField>
                <asp:BoundField DataField="RegDate" HeaderText="RegDate" SortExpression="RegDate" />
            </Columns>

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
              </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Registration] ORDER BY [EmailID] DESC"></asp:SqlDataSource>
 
             </center>
</asp:Content>


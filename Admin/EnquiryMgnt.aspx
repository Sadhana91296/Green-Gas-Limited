<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="EnquiryMgnt.aspx.cs" Inherits="Admin_EnquiryMgnt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <center><br /><br />
        <h2><u style="color:black; text-shadow:2px 2px 2px gray;">Consumer's Enquiry</u></h2><br /><br />
        <asp:GridView ID="grid1" runat="server" Width="80%" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="Eid" InsertVisible="False" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                <asp:BoundField DataField="EDate" HeaderText="EDate" SortExpression="EDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Enquiry] ORDER BY [Eid] DESC"></asp:SqlDataSource>
    </center>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ReviewMgmt.aspx.cs" Inherits="Admin_ReviewMgmt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <center>
        <br /><br />
        <h2><u style="text-shadow:2px 2px 2px gray;">Consumer's Review</u></h2>
        <br /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="8" DataKeyNames="Reviewid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="90%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Reviewid" HeaderText="Reviewid" InsertVisible="False" ReadOnly="True" SortExpression="Reviewid" />
            <asp:BoundField DataField="userid" HeaderText="userid" SortExpression="userid" />
            <asp:BoundField DataField="topic" HeaderText="topic" SortExpression="topic" />
            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
            <asp:BoundField DataField="ReviewDT" HeaderText="ReviewDT" SortExpression="ReviewDT" />
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
        </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblReview] WHERE [Reviewid] = ?" InsertCommand="INSERT INTO [TblReview] ([Reviewid], [userid], [topic], [message], [ReviewDT]) VALUES (?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblReview] ORDER BY [Reviewid] DESC" UpdateCommand="UPDATE [TblReview] SET [userid] = ?, [topic] = ?, [message] = ?, [ReviewDT] = ? WHERE [Reviewid] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Reviewid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Reviewid" Type="Int32" />
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="topic" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="ReviewDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="userid" Type="String" />
            <asp:Parameter Name="topic" Type="String" />
            <asp:Parameter Name="message" Type="String" />
            <asp:Parameter Name="ReviewDT" Type="String" />
            <asp:Parameter Name="Reviewid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="LoginInfo.aspx.cs" Inherits="Admin_LoginInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <center>
        <br /><br />
        <h2 style="text-shadow:3px 3px 3px gray; color:black;"><u>Consumer's Login Information</u></h2><br /><br />
        <asp:GridView ID="grid" runat="server" Width="85%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="8" DataKeyNames="UserID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID" />
                <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="LCount" HeaderText="LCount" SortExpression="LCount" />
                <asp:BoundField DataField="LoginTime" HeaderText="LoginTime" SortExpression="LoginTime" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="DELETE FROM [TblLogin] WHERE [UserID] = ?" InsertCommand="INSERT INTO [TblLogin] ([UserID], [Status], [LCount], [LoginTime]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT [UserID], [Status], [LCount], [LoginTime] FROM [TblLogin] ORDER BY [UserID] DESC" UpdateCommand="UPDATE [TblLogin] SET [Status] = ?, [LCount] = ?, [LoginTime] = ? WHERE [UserID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="String" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="LCount" Type="Int32" />
                <asp:Parameter Name="LoginTime" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="LCount" Type="Int32" />
                <asp:Parameter Name="LoginTime" Type="String" />
                <asp:Parameter Name="UserID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Notification.aspx.cs" Inherits="Admin_Notification" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    #box
    {
    height:200px;
    width:440px;
    background-color:#DCDCDC;
    margin-left:80px;
    margin-top:70px;
    padding-left:60px;
    padding-top:20px;
    box-shadow:3px 3px 3px black;
    }
        #box:hover
        {
            background-color:#99CC00;
            -moz-transition:background-color 2s;
               -webkit-transition:background-color 2s;
        }
        .txt
        {
            height:50px;
            width:300px;
            border:1px solid gray;
            padding-left:8px;
            resize:none;
        }
        .btn
        {
            height:40px;
            width:150px;
            background-color:green;
            box-shadow:3px 3px 15px black inset;
            color:#99CC00;
            text-shadow:2px 2px 2px black;
            border-radius:8px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="box">
        <asp:TextBox ID="TxtNotification" runat="server" CssClass="txt" placeholder="Enter Events Message"></asp:TextBox ><br /><br />
        <asp:Button ID="BtnChangePassword" runat="server" CssClass="btn" Text="ADD NOTIFICATION" OnClick="BtnChangePassword_Click"/>
    </div>
    <center><br /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="NID" DataSourceID="SqlDataSource1" Width="90%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="NID" HeaderText="NID" InsertVisible="False" ReadOnly="True" SortExpression="NID" />
            <asp:BoundField DataField="NotificationMsg" HeaderText="NotificationMsg" SortExpression="NotificationMsg" />
            <asp:BoundField DataField="NDT" HeaderText="NDT" SortExpression="NDT" />
        </Columns>
    </asp:GridView>
        </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TblNotification] WHERE [NID] = ?" InsertCommand="INSERT INTO [TblNotification] ([NID], [NotificationMsg], [NDT]) VALUES (?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [TblNotification] ORDER BY [NID] DESC" UpdateCommand="UPDATE [TblNotification] SET [NotificationMsg] = ?, [NDT] = ? WHERE [NID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="NID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NID" Type="Int32" />
            <asp:Parameter Name="NotificationMsg" Type="String" />
            <asp:Parameter Name="NDT" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NotificationMsg" Type="String" />
            <asp:Parameter Name="NDT" Type="String" />
            <asp:Parameter Name="NID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/ConsumerMaster/ConsumerMaster.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="ConsumerMaster_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width: 90%;
            background-color:rgba(128, 128, 128, 0.56);
            font-size:large;
            font-family:'Times New Roman';
            text-align:center;
            border-radius:10px;
            font-weight:bold;
            box-shadow:5px 5px 5px 5px black;
            margin:0px auto;
            height:450px;
            text-shadow:1px 1px 1px green;
            transform:rotate(15deg);
            margin-left:50px;
            margin-top:50px;
            -moz-transform:rotate(15deg);
            -webkit-transform:rotate(15deg);
        }
        .txt
        {
            width:200px;
            height:33px;
            margin:5px;
            padding:5px;
            border-radius:10px 0px 10px 0px;
        }
        #tableback1
        {
            height:450px;
            width:700px;
            background-color:#99CC00;
            transform:rotate(-10deg);
            margin-left:50px;
            border-radius:100px 0px 100px 0px;
            -webkit-transform:rotate(-10deg);
             -moz-transform:rotate(-10deg);
     }
        #tableback2
        {
            height:450px;
            width:700px;
            background-color:rgba(30, 250, 196, 0.60);
            transform:rotate(-5deg);
            margin-left:50px;
             border-radius:100px 0px 100px 0px; 
             -webkit-transform:rotate(-5deg);
              -moz-transform:rotate(-5deg);
         }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    <center><h2 style="color:black; text-shadow:2px 2px 2px green; font-size:30px;"><marquee width="100px" >&lt;&lt;&lt;&lt;&lt;</marquee>Change Your Profile<marquee direction="right" width="100px" >&gt;&gt;&gt;&gt;&gt;</marquee></h2></center>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <br />
    <div id="tableback1">
    <div id="tableback2">
    <table align="center" class="auto-style1">
        <tr>
            <td>Connection Type</td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtConnectionType" runat="server" CssClass="txt"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Name</td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtName" runat="server" CssClass="txt"></asp:TextBox>
            </td>
            <td class="auto-style5">Profile Picture</td>
            <td rowspan="3">
                <asp:Image ID="ImgUser" runat="server" Height="100px" Width="100px" CssClass="txt"/>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td class="auto-style2">
                <asp:RadioButton ID="RdbMale" runat="server" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="RdbFemale" runat="server" GroupName="Gender" Text="Female" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td>Mobile Number</td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtMobNo" runat="server" CssClass="txt"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email ID</td>
            <td class="auto-style2">
                <asp:Label ID="LblEmail" runat="server" Text="Label" CssClass="txt"></asp:Label>
            </td>
            <td>Upload Your New Picture</td>
            <td>
                <asp:FileUpload ID="FUPicture" runat="server" CssClass="txt" />
            </td>
        </tr>
        <tr>
            <td>Postal Address</td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtPAddress" runat="server" CssClass="txt"></asp:TextBox>
            </td>
            <td>Date of Registration</td>
            <td>
                <asp:Label ID="LblRegDate" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnEdit" runat="server" style="font-size:20px;text-shadow:2px 2px 2px black; background-color:green; color:#99CC00; box-shadow:3px 3px 30px black inset; height:40px; width:100px; border-radius:7px;" Text="EDIT" OnClick="BtnEdit_Click" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="BtnUpdate" runat="server" style="font-size:20px;text-shadow:2px 2px 2px black; background-color:green; color:#99CC00; box-shadow:3px 3px 30px black inset; height:40px; width:100px; border-radius:7px;" Text="UPDATE" OnClick="BtnUpdate_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
        </div>
    <br />
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ConsumerRegistration.aspx.cs" Inherits="ConsumerRegistration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1
        {
            width:800px;
            background-color: #008000;
        }
        #t1 
        {
           height:680px;
           margin-top:10px;
           margin-bottom:10px;
           margin:5px;
           background-color:#eae9e9;
           font-size:20px;
           color:black;
           padding:10px;
           font-family:Century; 
           text-shadow:1px 1px 1px green ;
           border-radius:0px 10px 0px 10px;
           border:2px solid green;
           box-shadow:10px 10px 10px black;
        }
        .txt
         {
            border-radius:0px 5px 0px 5px;
            border:2px solid gray;
            height:32px;
        }
        
                .auto-style3
        {
            height: 67px;
            width: 113px;
        }
        .auto-style4
        {
            height: 64px;
            width: 113px;
        }
        .auto-style5
        {
            height: 60px;
            width: 113px;
        }
        .auto-style6
        {
            height: 64px;
            width: 268px;
        }
        .auto-style7
        {
            height: 60px;
            width: 268px;
        }
        .auto-style8
        {
            height: 67px;
            width: 268px;
        }
        .auto-style10
        {
            width: 268px;
        }
        .auto-style11
        {
            height: 64px;
            width: 237px;
        }
        .auto-style12
        {
            height: 60px;
            width: 237px;
        }
        .auto-style13
        {
            height: 67px;
            width: 237px;
        }
        .auto-style15
        {
            width: 237px;
        }

        .auto-style16
        {
            height: 51px;
            width: 113px;
        }
        .auto-style17
        {
            height: 51px;
            width: 237px;
        }
        .auto-style18
        {
            height: 51px;
            width: 268px;
        }

        .auto-style19
        {
            height: 64px;
            width: 170px;
        }
        .auto-style20
        {
            height: 60px;
            width: 233px;
        }
        .auto-style21
        {
            height: 67px;
            width: 233px;
        }
        .auto-style22
        {
            height: 51px;
            width: 233px;
        }
        .auto-style23
        {
            width: 233px;
        }
        .auto-style24
        {
            width: 113px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
 
    <table align="center" class="auto-style1" id="t1" >
        <tr >
            <td colspan="4" ><center><u style="text-align:center; font-size:30px; color:black; text-shadow:1px 1px 1px green; font-family:Century;">Registration Form</u></center></td>
            
        </tr>
        <tr>
            <td class="auto-style4">Connection Type</td>
            <td class="auto-style11">
                <asp:DropDownList ID="DDLConnection" runat="server" CssClass="txt" Height="32px" Width="170px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>PNG</asp:ListItem>
                    <asp:ListItem>CNG</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DDLConnection" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style6">Profile Picture</td>
            <td class="auto-style19">
                <asp:FileUpload ID="TxtFile" runat="server" CssClass="txt" Width="180px"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtFile" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Name</td>
            <td class="auto-style12">
                <asp:TextBox ID="TxtName" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style7">Password</td>
            <td class="auto-style20">
                <asp:PasswordStrength ID="PassStr" runat="server" TargetControlID="TxtPasswd" DisplayPosition="BelowLeft"></asp:PasswordStrength>
                <asp:TextBox ID="TxtPasswd" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtPasswd" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                 
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Gender</td>
            <td class="auto-style13">
                <asp:RadioButton ID="RdbMale" runat="server" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="RdbFemale" runat="server" GroupName="Gender" Text="Female" />
            </td>
            <td class="auto-style8">Confirm Password</td>
            <td class="auto-style21">
                <asp:TextBox ID="TxtCPasswd" runat="server" CssClass="txt" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFV1" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="TxtCPasswd"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPasswd" ControlToValidate="TxtCPasswd" ErrorMessage="Password is not match" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">Mobile Number</td>
            <td class="auto-style17">
                <asp:TextBox ID="TxtMobNo" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMobNo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style18">Captcha Code</td>
           
            <td class="auto-style22"> 
                  <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                     <ContentTemplate>
                  &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="ImgCaptcha" runat="server" BackColor="#99FF99" Height="30px" style="margin-top: 0px;" Width="130px" />
                         <asp:ImageButton src="images/43-128.png" runat="server" ID="imgbtn" style="border-radius:50px; margin-top: 18px;" OnClick="imgbtn_Click" Height="41px"/>
                         </ContentTemplate>
                  </asp:UpdatePanel>   
            </td>
           
        </tr>
        <tr>
            <td class="auto-style24">Email ID</td>
            <td class="auto-style15">
                <asp:TextBox ID="TxtEmailID" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmailID" ErrorMessage="*" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style10">Enter Captcha Code</td>
            <td class="auto-style23">
                <asp:TextBox ID="TxtEnterCaptcha" runat="server" CssClass="txt"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style24">Postal Address</td>
            <td class="auto-style15">
                <asp:TextBox ID="TxtPAddress" runat="server" CssClass="txt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPAddress" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                <center><asp:Button ID="btnReg" runat="server" Text="Register" style="color:#99CC00; background-color:green; box-shadow:3px 3px 3px black; text-shadow:2px 2px 2px black; font-size:20px; border-radius:7px; height:40px; width:150px;" OnClick="btnReg_Click"/></center>
            </td>
        </tr>
    </table>
    
</asp:Content>


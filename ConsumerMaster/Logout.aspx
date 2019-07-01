<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="ConsumerMaster_Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Logout()
        {
            window.history.forward();
            window.setTimeout("window.location.href='../login.aspx'", 1500);
        }
    </script>
</head>
<body onload="Logout()" style="background-color:aqua;">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

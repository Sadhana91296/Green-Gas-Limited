﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Admin_Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Logout()
        {
            window.history.forward();
            window.setTimeout("window.location.href='../Admin/AdminLogin.aspx'", 1000);
        }
    </script>
</head>
<body onload="Logout()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>

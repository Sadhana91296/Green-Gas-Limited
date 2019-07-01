<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Green Gas Limited</title>
    <link href="css/GeneralMaster.css" rel="stylesheet" type="text/css" />
    <link href="images/download (1).jpg" rel="icon" />
    <script>
        var allimage = ["21.jpg", "a.jpg", "GreenBus.jpg", "c.jpg", "d.jpg", "e.jpg", "7.jpg", "f.jpg"];
        var imagenumber = 0;
        function MySlider() {
            var img = document.getElementById("image");
            img.src = "images/" + allimage[imagenumber];
            imagenumber++;
            if (imagenumber == allimage.length) {
                imagenumber = 0;
            }
            window.setTimeout("MySlider()", 2000);
        }


        function popUp() {
            var a = document.getElementById("div1");
            var btn = document.getElementById("btnEnquiry");
            var status = a.style.display;
            if (status != "block") {
                a.style.display = "block";
                btn.style.color = "#99CC00";
            }
            else {
                a.style.display = "none";
                btn.style.color = "white";
            }

        }
    </script>
    <style>
        #div1
        {
            width:300px;
            /*height:0px auto;*/
            background:-moz-repeating-linear-gradient(gray,#DCDCDC,#99CC00);
             background:-webkit-repeating-linear-gradient(gray,#DCDCDC,#99CC00);
            font-size:x-large;
            z-index:2;
            min-height:400px;
           display:none;
            padding:10px;
            position:absolute;
            top:200px;
            right:50px;
            z-index:2;
            padding-bottom:20px;
            border:5px solid white;
            border-radius:10px 0px 10px 0px;
            color:white;
            text-shadow:1px 1px 1px #99CC00;
        }
        .txt
        {
            width:250px;
            height:30px;
            border-radius:5px 0px 5px 0px;
            margin:5px;
            padding:5px;
        }
        body
        {
            background-color:green;
        }
       
       
        #main1
        {
            height:515px;
            width:1000px;
            float:left;
        }
        #main11
        {
            height:505px;
            width:600px;
            float:left;
            color:gray;        
        }
        #main11Left
        {
            height:505px;
            width:163px;
            float:left;
            border:1px solid gray;
            color:black;
            padding-left:5px;
            text-shadow:2px 2px 2px gray;
            box-shadow:3px 3px 3px gray;
        }
        #main11Right
        {
            height:505px;
            width:370px;
        float:left;
        padding-left:15px;
        border:1px solid gray;
        margin-left:20px;
        padding-right:20px;
         box-shadow:3px 3px 3px gray;
        }
        pre:hover
        {
            background-color:#99CC00;
            color:white;
            text-shadow:2px 2px 2px green;
            -moz-transition:background-color 2s,color 2s;
                -webkit-transition:background-color 2s,color 2s;
        }
        #main12
        {
            height:485px;
            width:300px;
            float:left;
           border:1px solid #DCDCDC;
           padding:15px;
           color:gray;
           text-align:justify;
           font-size:15px;
           margin-left:50px;
            box-shadow:3px 3px 3px gray;
        }
         #main12:hover
        {
            background-color:#99CC00;
            color:white;
            text-shadow:2px 2px 2px green;
            -moz-transition:background-color 2s,color 2s;
                -webkit-transition:background-color 2s,color 2s;
        }
        .btn
        {
            height:40px;
            width:150px;
            background-color:green;
            color:#99CC00;
            font-size:20px;
            text-shadow:2px 2px 2px black;
            box-shadow:3px 3px 30px black inset;
            border-radius:7px;
        }
    </style>


    <!--Start of Zopim Live Chat Script-->
<script type="text/javascript">
    window.$zopim || (function (d, s) {
        var z = $zopim = function (c) {
            z._.push(c)
        }, $ = z.s =
        d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o) {
            z.set.
            _.push(o)
        }; z._ = []; z.set._ = []; $.async = !0; $.setAttribute('charset', 'utf-8');
        $.src = '//v2.zopim.com/?47S84u7BXs51mLutFkiy7EH4Vja3HMqR'; z.t = +new Date; $.
        type = 'text/javascript'; e.parentNode.insertBefore($, e)
    })(document, 'script');
</script>
<!--End of Zopim Live Chat Script-->




</head>
<body onload="MySlider()">
    <form id="form1" runat="server">
   <div id="outer">
            <div id="heading"><b>Tel:+7080102006,7080102007 || Email:www.softproindia.org</b></div>
    <div id="container" style="min-height:1150px;">
        <div id="header">
            <div id="logo" >
                <img src="images/download (1).jpg" height="130px" width="150px" />
            </div>
            <div id="sitetitle" style="font-size:60px;"><i>Welcome To Green Gas Limited</i></div>
        </div>
        <div id="menu">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" StaticEnableDefaultPopOutImage="False">
                <DynamicHoverStyle BackColor="#99CC00" ForeColor="Black" />
                <DynamicMenuItemStyle BackColor="Black" Font-Bold="True" Font-Size="Small" ForeColor="White" HorizontalPadding="38px" VerticalPadding="8px" />
                <Items>
                    <asp:MenuItem Text="HOME" Value="Home" NavigateUrl="~/Index.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="AREA &amp; INFRASTRUCTURE" Value="Area &amp; Infrastructure">
                        <asp:MenuItem NavigateUrl="~/CNGAgra.aspx" Text="CNG OUTLET AGRA" Value="CNG OUTLET AGRA"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/CNGLucknow.aspx" Text="CNG OUTLET LUCKNOW" Value="CNG OUTLET LUCKNOW"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="CONSUMER REGISTRATION" Value="Consumer Registration" NavigateUrl="~/ConsumerRegistration.aspx"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Enquiry.aspx" Text="CONTACT US" Value="CONTACT US"></asp:MenuItem>
                    <asp:MenuItem Text="IMAGE GALLARY" Value="Image Gallery" NavigateUrl="~/ImageGallary.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="LOGIN" Value="Login" NavigateUrl="~/login.aspx"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#99CC00" ForeColor="black" />
                <StaticMenuItemStyle Font-Bold="True" ForeColor="White" HorizontalPadding="30px" VerticalPadding="14px" Font-Size="Smaller" />
            </asp:Menu>
        </div>
  <div id="slider">
            <div id="slider1"><img src="21.jpg" id="image" height="300px" width="1000" /></div>
  </div>
<div id="main" style="padding-left:5px; padding-top:15px; "> <br />
    <h2 style="text-shadow:2px 2px 2px gray;">Three Ways GreenGas Is Part Of Your Life...</h2>
    <hr /><br />
    <div id="main1">
        <div id="main11">
            <div id="main11Left">
                <marquee direction="up" onmouseover="stop();" onmouseout="start();" height="500px">
              <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" GridLines="None">
                  <Columns>
                      <asp:TemplateField>
                          <ItemTemplate>
                              <%#Eval("NotificationMsg") %><br />
                              <asp:Label ID="lbldate" runat="server" Text='<%#Eval("NDT") %>' ForeColor="Red"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                   </Columns>
                  </asp:GridView></marquee> 
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [NotificationMsg], [NDT] FROM [TblNotification]"></asp:SqlDataSource>
                      
            </div>
            <div id="main11Right">
<b style="color:black; font-size:15px"> Transportation</b><br /><pre style="font-family:'Times New Roman'; font-size:16px; border:1px solid gray; height:120px; width:370px;  box-shadow:3px 3px 3px gray;"><br />   Green   Gas will take you beyond  petrol and diesel
   with CNG. CNG is more cost  effective than  petrol-
   CNG is even  cheaper by  46% from the subsidized
   petrol.
            </pre><br />
<b style="color:black;  font-size:15px">Domestic Affairs</b><br /><pre style="font-family:'Times New Roman'; font-size:16px; border:1px solid gray; height:120px; width:370px;  box-shadow:3px 3px 3px gray;"><br />   Domestic Affairs: PNG will  improve the  quality of 
   your  life by  brining comfort into your  home . PNG
   is  the  most  cost    effective    and  safest  way    of
   cooking. It  is  even  more  flexible  than  LPG.</pre>
<b style="color:black;  font-size:15px"><br />Industrial Energy Consumers</b><br /><pre style="font-family:'Times New Roman'; font-size:16px; border:1px solid gray; height:125px; width:370px;  box-shadow:3px 3px 3px gray;">  Piped  Natural  Gas(PNG)  from  Green  Gas Limited               
  can       be      utilized      for   energy   consumers  as:-
<b>  Industries :  </b> In    order  to     sustain        continuous
  production     many    manufacturing  companies  have
  establish      their  own  captive    power     plants  to
  overcome     the  epileptic  public    power       supply.</pre>
        </div>
            </div>
        <div id="main12">
          
            Green Gas Limited(GGL) is a joint venture of GAIL and Indian Oil Corporation Limited(IOCL).It has been incorporated for the implementation of
            city Gas.Project for supply of Piped Natural Gas(PNG) to domestic,commercial and industrial Consumers.There are large number of commercial/domestic/industrial
            CNG gas suppliers offering a suite of commercial/domestic/industrial services tailored to the national and local needs of the customers.These
            marketplaces have thousands of commercial/domestic/industrial branches for sales of CNG gas.Their purpose it to attract cutomers and give them
            better way of booking and delivery.<br />
            <img src="images/pipe.jpg" width="300px" height="200px" />
        </div>
    </div>
 
</div>
        </div>
        <div id="footer">
            <div class="footer1">
                <center>
                    <span style="color:white;font-family:Georgia;font-size:22px; padding-top:20px;"><b>Social Media</b></span><br />
                    <a href="http://www.facebook.com"><img src="images/1.png" class="a"/></a>
                    <a href="http://www.twitter.com"><img src="images/2.png" class="a"/></a>
                    <a href="http://www.liked.com"><img src="images/3.png" class="a"/></a>
                    <a href="http://www.youtube.com"><img src="images/4.png" class="a"/></a>
                </center>
            </div>
            <div class="footer1">
                <div class="footerSelf" style="padding-top:40px;">Developed By:<a href="mailto:sadhanasingh91296@gmail.com" style="color:#b2ee30; text-decoration:none;"> Sadhana Singh</a></div>
                <div class="footerSelf"><img src="images/IMG_20160708_164351 - Copy.jpg" style="height:135px;border:2px solid green;
                    border-radius:2px 2px 2px 2px;"/></div>
            </div>
        </div>
        <div id="footerbase">
            <div class="footerbase1"></div>
                <div class="footerbase1">
                   Copyright &copy; To : <a href="http://www.softproindia.org" style="text-decoration:none; color:#b2ee30;">Softpro India Computer Technologies (P) Ltd.</a>
                </div>
        </div>

            </div>
          <!---Enuiry is started--->
        <div id="div1">
   <h1>Enquiry Form</h1><br />
            <asp:TextBox ID="TxtName" runat="server" CssClass="txt" placeholder="Enter Your Name "></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TxtEmail" runat="server" CssClass="txt" placeholder="Enter Your Email ID"></asp:TextBox>     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Wrong Pattern" Font-Size="Large" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
       
            <br />
            <asp:TextBox ID="TxtMobNo" runat="server" CssClass="txt" placeholder="Enter Your Mobile Number"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtMobNo" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />
              <br />
            <asp:TextBox ID="TxtMsg" runat ="server" CssClass="txt" placeholder="Enter Your Message"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtMsg" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br /><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server"  Text="Click Here" CssClass="btn" OnClick="Btn_Click"/>
            </div>
        <a onclick="popUp()" id="btnEnquiry" href="#" style="font-size:17px; width:30px; height:230px; position:absolute; top:200px; z-index:3; border-radius:10px 0px 0px 10px; right:0px; text-decoration:none; padding:10px; background:black; color:white; position:fixed;">E<br />N<br />Q<br />U<br />I<br />R<br />Y<br /><br />N<br />O<br />W</a>
        <!---End of Enquiry form--->  
    </form>
</body>
</html>

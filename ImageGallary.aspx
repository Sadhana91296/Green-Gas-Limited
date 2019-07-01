<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ImageGallary.aspx.cs" Inherits="ImageGallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #box
        {
            height:570px;
            width:740px;
            background-color:#DCDCDC;
            box-shadow:10px 10px 10px green;
            border-radius:10px;
            margin-top:22px;
            padding-top:50px;
            padding-left:50px;
        }
        #box1
        {
           
            height:570px;
            width:740px;
            background-color:#DCDCDC;
            box-shadow:10px 10px 10px green;
            border-radius:10px;
            margin-top:22px;
                 padding-top:50px;
                 padding-left:50px; 
                 display:none;
        }
        .row
        {
            height:200px;
            width:800px;
        }
        .col
        {
            height:150px;
            width:173px;
            float:left;
            padding:5px;
            border:5px double black;
            border-radius:10px 0px 10px 0px;
            margin:15px;
            background:black;
            -moz-transition:border 2s,border-radius 2s;   
                -webkit-transition:border 2s,border-radius 2s;


        }
            .col:hover
            {
                border-radius:20px;
                border:5px solid #99CC00;
                -moz-transition:border 2s,border-radius 2s; 
                      -webkit-transition:border 2s,border-radius 2s;
            }
            
        .imgG
        {
            height:148px;
            width:171px;
            border-radius:10px;
            border:1px solid black;
        }
        #lnkNP
        {
            height:40px;
            width:120px;
            padding:5px;
            border-radius:7px;
            background-color:green;
            color:#99CC00;
            text-shadow:2px 2px 2px black;
            text-decoration:none;
            position:relative;
            left:700px;
            bottom:50px;
            box-shadow:3px 3px 23px black inset;
        }
    </style>
    <script>
        function NextPrev()
        {
            var dv1 = document.getElementById("box1");
            var dv2 = document.getElementById("box");
            var lnk = document.getElementById("lnkNP");
            var a = dv1.style.display;
            var b = dv2.style.display;
            if (a == "block" && b == "none")
            {
                dv1.style.display = "none";
                dv2.style.display = "block";
                lnk.innerHTML = "Next";
            }
            else
            {
                dv1.style.display = "block";
                dv2.style.display = "none";
                lnk.innerHTML = "Previous";
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
<div id="box">
    <h2 style="font-family:Monotype Corsiva; text-align:center; color:black; font-size:50px; text-shadow:2px 2px 2px green;">Image Gallery</h2>
    <hr />
    <div class="row">
        <div class="col"><a href="images/image1.jpg" target="_blank"><img src="images/image1.jpg" class="imgG"/></a></div>
        <div class="col"><a href="images/image2.jpg" target="_blank"><img src="images/image2.jpg" class="imgG"/></a></div>
        <div class="col"><a href="images/image3.jpg" target="_blank"><img src="images/image3.jpg" class="imgG"/></a></div>
    </div>
    <div class="row">
        <div class="col"><a href="images/image4.jpg" target="_blank"><img src="images/image4.jpg" class="imgG"/></a></div>
        <div class="col"><a href="images/image5.jpg" target="_blank"><img src="images/image5.jpg" class="imgG"/></a></div>
        <div class="col"><a href="images/image6.jpg" target="_blank"><img src="images/image6.jpg" class="imgG"/></a></div>
    </div>
</div>
    <div id="box1">
        <h2 style="font-family:Monotype Corsiva; text-align:center; color:black; font-size:50px; text-shadow:2px 2px 2px green;">Image Gallery</h2>
        <hr />
    <div class="row">
        <div class="col"><a href="images/image7.png" target="_blank"><img src="images/image7.png" class="imgG"/></a></div>
        <div class="col"><a href="images/image8.jpg" target="_blank"><img src="images/image8.jpg" class="imgG"/></a></div>
        <div class="col"><a href="images/image9.jpg" target="_blank"><img src="images/image9.jpg" class="imgG"/></a></div>
    </div>
    <div class="row">
        <div class="col"><a href="images/image10.jpg" target="_blank"><img src="images/image10.jpg" class="imgG"/></a></div>
        <div class="col"><a href="images/image11.jpg" target="_blank"><img src="images/image11.jpg" class="imgG"/></a></div>
        <div class="col"><a href="images/image12.jpg" target="_blank"><img src="images/image12.jpg" class="imgG"/></a></div>
    </div>
</div>
    <a href="#box" id="lnkNP" onclick="NextPrev()">Next</a>
</asp:Content>


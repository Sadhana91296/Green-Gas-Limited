<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="CNGLucknow.aspx.cs" Inherits="CNGLucknow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #OUTER
        {
            height:650px;
            width:775px;
            float:left;
        }
        #TOP
        {
            height:300px;
            width:775px;
            float:left;
        }
        .TOP1
        {
            height:300px;
            width:387px;
            float:left;
        }
        #BOTTOM
        {
            margin-top:6px;
            height:350px;
            width:775px;
            float:left;
        }
        .auto-style1
        {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color:#DCDCDC;
        }
        .auto-style2
        {
            font-size: small;
        }
        .auto-style3
        {
            font-size: medium;
            font-weight: bold;
            background-color:rgba(75, 199, 33, 0.44);
        }
        .auto-style5
        {
            background-color: rgba(75, 199, 33, 0.44);
        }
        .auto-style6
        {
            background-color: #FFFFFF;
        }
        .auto-style7
        {
            font-size: small;
            background-color: #FFFFFF;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="OUTER">
        <div id="TOP">
            <div class="TOP1">
                <img src="images/LKO_S5.jpg" height="300px" width="387px" />
            </div>
            <div class="TOP1"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14234.67795370525!2d80.94821!3d26.88224!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x730fe46201abc68a!2sSoftpro+India!5e0!3m2!1sen!2sin!4v1411887056855" height="298px" width="387px"></iframe></div>
        </div>
        <div id="BOTTOM">
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="3" style="text-align: center; font-size: medium; font-weight: 700">CNG OUTLETS IN LUCKNOW</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="font-size: medium; font-weight: 700">LOCATION</td>
                    <td class="auto-style5" style="font-size: medium; font-weight: 700">ADDRESS</td>
                    <td class="auto-style5" style="font-size: medium; font-weight: 700">TYPE OF OUTLET</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="font-size: small">Amausi</td>
                    <td class="auto-style6" style="font-size: small">Plot No.A-4,Industrial Area,Nadarganj Amausi,Lucknow</td>
                    <td class="auto-style7">Mother Station</td>
                </tr>
                <tr>
                    <td class="auto-style7">Gomati Nagar</td>
                    <td class="auto-style7">Commercial Plot No.-4,Vibhuti Khand,Lucknow</td>
                    <td class="auto-style7">Mother Station</td>
                </tr>
                <tr>
                    <td class="auto-style7">Ring Road</td>
                    <td class="auto-style7">Verma Automobile,Ring Road,Lucknow</td>
                    <td class="auto-style7">Daughter Booster Station(DBS)</td>
                </tr>
                <tr>
                    <td class="auto-style7">Madion</td>
                    <td class="auto-style7">Standard Fuel Center,Sitapur Road,Madion,Lucknow</td>
                    <td class="auto-style7">Daughter Booster Station(DBS)</td>
                </tr>
                <tr>
                    <td class="auto-style7">Gomati Nagar</td>
                    <td class="auto-style7">COCO Vibhuti Khand,Near Madhurima Restaurent Gomati Nagar,Lucknow</td>
                    <td class="auto-style7">DaughterBooster Station(DBS)</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Faizabad Road</td>
                    <td class="auto-style6">Saket Filling Center,Chinhat Faizabad Road,Lucknow</td>
                    <td class="auto-style6">On-Line Station</td>
                </tr>
                <tr>
                    <td class="auto-style7">Ashiana</td>
                    <td class="auto-style6"><span class="auto-style2">Indra Automobile PP-1,Sector-M Ashiana,Lucknow</td>
                    <td class="auto-style7">On-Line Station</span></td>
                </tr>
                <tr>
                    <td class="auto-style7">Kanpur Hardoi By Pass</td>
                    <td class="auto-style7">Trikuta Filling Station Kanpur Hardoi Bypass Near<br />
                        Buddeshwar Crossing,Lucknow</td>
                    <td class="auto-style7">On-Line Station</span></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3" style="font-size: medium; text-align: center; font-weight: 700">LIST OF UPCOMING CNG STATION- LUCKNOW</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-size: medium; font-weight: 700">LOCATION</td>
                    <td class="auto-style5" style="font-size: medium; font-weight: 700">ADDRESS</td>
                    <td class="auto-style5" style="font-size: medium; font-weight: 700">TYPES OF CNG STATION</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Sector-6</td>
                    <td class="auto-style6">Vrindavan Yojana MS,Sector-6</td>
                    <td class="auto-style6">Mother Station</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Sector-18</td>
                    <td class="auto-style6">Vrindavan Yojana MS,Sector-18</td>
                    <td class="auto-style6">Mother Station</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Kanpur Road</td>
                    <td class="auto-style6">M/s SS Filling Station,Kanpur Road</td>
                    <td class="auto-style6">On-Line Station</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Sultanpur Road</td>
                    <td class="auto-style6">M/s Kalawati Filling Station,Sultanpur Road</td>
                    <td class="auto-style6">Daughter Booster Station(DBS)</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                </table>
        </div>
    </div>
</asp:Content>


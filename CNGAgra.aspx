<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="CNGAgra.aspx.cs" Inherits="CNGAgra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #OUTER
        {
            height:600px;
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
            height:300px;
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
        .auto-style4
        {
            font-size: medium;
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
                <img src="images/Agra_S2.jpg" height="300px" width="387px" />
            </div>
            <div class="TOP1">
                <iframe src=" https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14234.67795370525!2d80.94821!3d26.88224!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x730fe46201abc68a!2sSoftpro+India!5e0!3m2!1sen!2sin!4v1411887056855" height="298px" width="387px" > </iframe>

            </div>
        </div>
        <div id="BOTTOM">
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="3" style="text-align: center; font-size: medium; font-weight: 700">CNG OUTLETS IN AGRA</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="font-size: medium; font-weight: 700">LOCATION</td>
                    <td class="auto-style5" style="font-size: medium; font-weight: 700">ADDRESS</td>
                    <td class="auto-style5" style="font-size: medium; font-weight: 700">TYPE OF OUTLET</td>
                </tr>
                <tr>
                    <td class="auto-style6" style="font-size: small">Transport Nagar</td>
                    <td class="auto-style6" style="font-size: small">ISBT Compound,Transport Nagar,Agra</td>
                    <td class="auto-style7">Mother Station</td>
                </tr>
                <tr>
                    <td class="auto-style7">Taj Nagari</td>
                    <td class="auto-style7">Sector B-1,Taj Nagari,Phase-II Agra</td>
                    <td class="auto-style7">Mother Station</td>
                </tr>
                <tr>
                    <td class="auto-style7">Lohamandi</td>
                    <td class="auto-style7">Bhagwati Filling Station,Lohamandi,Agra</td>
                    <td class="auto-style7">Daughter Booster Station(DBS)</td>
                </tr>
                <tr>
                    <td class="auto-style7">Khwaja Ki Sarai</td>
                    <td class="auto-style7">Modern Service Station,Nr. Edgah,Agra</td>
                    <td class="auto-style7">Daughter Booster Station(DBS)</td>
                </tr>
                <tr>
                    <td class="auto-style7">Sikandra</td>
                    <td class="auto-style7">Vyom Premium Fuel 4235/5,Mauja Sikandra,Bahistabaad,<br />
                        Sikandra,NH-2,Agra</td>
                    <td class="auto-style7">On-Line Station</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Water Works Chauraha</td>
                    <td class="auto-style6">Yamuna Automobile Belanganj,Near Water Works,Jeoni Mandi,Agra</td>
                    <td class="auto-style6">On-Line Station</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3" style="font-size: medium; text-align: center; font-weight: 700">LIST OF UPCOMING CNG STATION- AGRA</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="font-size: medium;"><b>LOCATION</b></td>
                    <td class="auto-style5" style="font-size: medium;"><b>ADDRESS</b></td>
                    <td class="auto-style5" style="font-size: medium;"><b>TYPES OF CNG STATION</b></td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Kalindi Vihar</td>
                    <td class="auto-style6">Kalindi Vihar</td>
                    <td class="auto-style6">Mother Station</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Metro Filling Station</td>
                    <td class="auto-style6">Metro Filling Station,Fatehabad Road</td>
                    <td class="auto-style6">Daughter Booster Station</td>
                </tr>
                <tr class="auto-style2">
                    <td class="auto-style6">Bhagwan Filling Station</td>
                    <td class="auto-style6">Bhagwan Filling Station,Etmadpur</td>
                    <td class="auto-style6">Daughter Booster Station</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                </table>
        </div>
    </div>
</asp:Content>


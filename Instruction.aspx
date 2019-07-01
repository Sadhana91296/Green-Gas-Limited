<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Instruction.aspx.cs" Inherits="Instruction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #main
        {
            color:gray;
            font-family:'Times New Roman';
            font-size:15px;
        }
        b, h3
        {
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHMain" Runat="Server">
    <div id="main"><h3><u>Instruction</u></h3><br /><pre>
<b>1.</b>Vendors must complete all relevant fields. Fields marked with
  red asterisk (*) are mandatory fields.

<b>2.</b>Verify all entries before submitting the application.

<b>3.</b>For qualification and eligibility criteria for online registration
  click on General Eligibility Guidelines.

<b>4.</b>For categories/ sub-categories open for registration click on Categories.

<b>5.</b>While filling technical parameters for any item vendors may input details
  like Capacity, Rating, Grade, Size, Diameter, Thickness, Length etc.

<b>6.</b>While filling technical parameters for any services/works contractors may
  provide the details like client, order value of work, executed volume of 
  work etc.

<b>7.</b>Techno-commercially qualified vendors against GGL’s open tendering will
  be listed as “Empanelled Vendors” for seeking bids under GGL’s limited
  tendering for specific category / sub-category and up to specified 
  monetary limit.

<b>8.</b>It will be the responsibility of the vendor to update all time dependant
  data.However, data regarding name of the company, address and Bank details
  cannot be updated. For updating the same vendors have to apply to GGL,
  along with relevant documentary evidence.

<b>9.</b>Vendors who don’t respond continuously to any of GGL’s enquiry for a 
  period of three years will be deleted from the list of Registered vendors.

<b>10.</b>Vendors who are already registered with GAIL/IOCL/MECON/EIL shall be 
  directly registered and empanelled with GGL for that specific item 
  specification only.
</pre>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="RealMadrid.aspx.cs" Inherits="Football.aspx_pgs.RealMadrid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
.header {
  background-color: #B7950B;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  
}

/* Create three unequal columns that floats next to each other */
.column {
  float: left;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Left and right column */
.column.side {
    background-color: red;
  width: 25%;
  text-align:center;
  
}

/* Middle column */
.column.middle {
    background-color: red;
  width: 50%;
  
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
.footer {
  background-color: #B7950B;
  padding: 10px;
  text-align: center;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
  .column.side, .column.middle {
       background-color:red;
    width: 100%;
  }
}
</style>




<div class="header">
  <h2>Real Madrid</h2>
</div>

<div class="row">
  <div class="column side" style="background-color:#FDF2E9;">
      <img src="../pic/og-image-removebg-preview.png" width="450" height="300" />
  </div>
  <div class="column middle" border="1" style="background-color:#FAE5D3;">
<p> Real Madrid Club de Fútbol, commonly referred to as Real Madrid, is a Spanish professional football club based in Madrid.

        Founded in 1902 as Madrid Football Club, the club has traditionally worn a white home kit since its inception. The honorific title real is Spanish for "royal" and was bestowed to the club by King Alfonso XIII in 1920 together with the royal crown in the emblem. Real Madrid have played their home matches in the 81,044-capacity Santiago Bernabéu Stadium in downtown Madrid since 1947. Unlike most European sporting entities, Real Madrid's members (socios) have owned and operated the club throughout its history.

       </p>
      <table border ="1">
        <tr>
            <th>Cup Name</th>
            <th>Number Of Championships</th>
        </tr>
        <tr>
        <th>La liga</th>
            <th>35</th>
        </tr>
        <tr>
            <th>Champions League</th>
            <th>14</th>
        </tr>

    </table>
  </div>
  <div class="column side" style="background-color:#FEF5E7;">
      <img src="../pic/16592710224860.jpg" width="350" height="270" />
  </div>
</div>

<div class="footer">
  <a href="https://instagram.com/realmadrid?igshid=YmMyMTA2M2Y="><img src="../pic/1200x600wa-removebg-preview.png" alt="HTML tutorial" style="width:100px;height:60px;"></a>
    <a href="https://www.facebook.com/RealMadrid/?mibextid=LQQJ4d"><img src="../pic/fb_icon_325x325.png" alt="HTML tutorial" style="width:60px;height:60px;"></a>
</div>


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChampionsLeague.aspx.cs" Inherits="Football.aspx_pgs.stam" %>
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
  background-color: #D1F2EB;
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
  width: 25%;
  text-align:center;
}

/* Middle column */
.column.middle {
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
  background-color: #D1F2EB;
  padding: 10px;
  text-align: center;
}

/* Responsive layout - makes the three columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
  .column.side, .column.middle {
    width: 100%;
  }
}
table.center{
            
            margin-left: auto;
            margin-right: auto;
        }
        th{
            border: 2px solid;
        }
        div.center{
            margin-left: auto;
            margin-right: auto;
        }
</style>

<div class="header">
  <h2>Champions League</h2>
</div>

<div class="row">
  <div class="column side" style="background-color:#FDF2E9;">
      <audio style="float:left;" controls src="../Audio/UEFA-Champions-League-Theme-Song-On-Screen.mp3"></audio>
<p >
    <br />
    <br />
         "They are the best teams
    <br />
    <br />
          The main event
    <br />
    <br />
          The master
    <br />
    <br />
          The best
    <br />
    <br />
          The great teams
    <br />
    <br />
          The champions"
</p>
  </div>
  <div class="column middle" style="background-color:#FAE5D3;">
      <table class="center" style ="height:100px; width:100px">
        <tr>
           
            <th>Club Name</th>
            <th>Number Of Championships</th>
        </tr>
        <tr>
        <th>Real Madrid</th>
            <th>14</th>
        </tr>
        <tr>
            <th>AC Milan</th>
            <th>7</th>
        </tr>
        <tr>
            <th>Liverpool</th>
            <th>6</th>
        </tr>
         <tr>
            <th>FC Bayern</th>
            <th>6</th>
        </tr>
         <tr>
            <th>Fc Barcelona</th>
            <th>5</th>
        </tr>
         <tr>
             
            <th>Ajax</th>
            <th>4</th>
        </tr>
         <tr>
            <th>Manchester United</th>
            <th>3</th>
        </tr>
    </table>

  </div>
  <div class="column side" style="background-color:#FEF5E7;">
      <img src="../pic/unnamed.png" style="float:left;"  width="350" height="280" />
  </div>
</div>

<div class="footer">
<a href="https://instagram.com/championsleague?igshid=YmMyMTA2M2Y="><img src="../pic/1200x600wa-removebg-preview.png" alt="HTML tutorial" style="width:100px;height:60px;"></a>
    <a href="https://www.facebook.com/ChampionsLeague/?mibextid=LQQJ4d"><img src="../pic/fb_icon_325x325.png" alt="HTML tutorial" style="width:60px;height:60px;"></a>
</div>


</asp:Content>

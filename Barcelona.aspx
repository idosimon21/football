<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Barcelona.aspx.cs" Inherits="Football.aspx_pgs.Barcelona" %>
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
      background-color: #943126;
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
      background-color: #943126;
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
  <h2>Barcelona</h2>
</div>

<div class="row">
  <div class="column side" style="background-color:#FDF2E9;">
      <img src="../pic/3.png" width="300" height="270" />
  </div>
  <div class="column middle" style="background-color:#FAE5D3;">
<p> Futbol Club Barcelona , commonly referred to as Barcelona and colloquially known as Barça , is a professional football club based in Barcelona, Catalonia, Spain, that competes in La Liga, the top flight of Spanish football.

        Founded in 1899 by a group of Swiss, Catalan, German, and English footballers led by Joan Gamper, the club has become a symbol of Catalan culture and Catalanism, hence the motto "Més que un club" ("More than a club"). Unlike many other football clubs, the supporters own and operate Barcelona. It is the fourth-most valuable sports team in the world, worth $4.76 billion, and the world's fourth richest football club in terms of revenue, with an annual turnover of €582.1 million. The official Barcelona anthem is the "Cant del Barça", written by Jaume Picas and Josep Maria Espinàs. Barcelona traditionally play in dark shades of blue and garnet stripes, hence nicknamed Blaugrana.</p>
  </div>
  <div class="column side" style="background-color:#FEF5E7;">
      <img src="../pic/FOS-PM-22-6.17-FC-Barcelona-Rights.jpg" width="350" height="270" />
  </div>
</div>

<div class="footer">
  <a href="https://instagram.com/fcbarcelona?igshid=YmMyMTA2M2Y="><img src="../pic/1200x600wa-removebg-preview.png" alt="HTML tutorial" style="width:100px;height:60px;"></a>
    <a href="https://www.facebook.com/fcbarcelona/?mibextid=LQQJ4d"><img src="../pic/fb_icon_325x325.png" alt="HTML tutorial" style="width:60px;height:60px;"></a>
</div>

</>
</asp:Content>

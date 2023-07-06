<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Football.aspx_pgs.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .imgCell{
            width: 150px;
            height: 100px;
            border: 1px solid gray;
        }
        .bigPicImgCell{
            width:310px;
            height:210px;
            border:1px solid gray;
        }
    </style>
    <script>
        function showPic(pic) {
            bigPic.src = pic;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /> <br /> <br />
    <center>
        <table>
            <tr>
                <td> <img class="imgCell" src="../pic/220610_Teampresentation_2022_KV_Header.jpg" onmouseover="showPic('../pic/220610_Teampresentation_2022_KV_Header.jpg')" /> </td>
                <td> <img class="imgCell" src="../pic/Man United squad list.jpg" onmouseover="showPic('../pic/Man United squad list.jpg')" /> </td>
                <td> <img class="imgCell" src="../pic/FTYqcrKXsAE9f6L.jpg" onmouseover="showPic('../pic/FTYqcrKXsAE9f6L.jpg')" /> </td>
                <td> <img class="imgCell" src="../pic/FOS-PM-22-6.17-FC-Barcelona-Rights.jpg" onmouseover="showPic('../pic/FOS-PM-22-6.17-FC-Barcelona-Rights.jpg')" /> </td>
            </tr>
            <tr>
                <td> <img class="imgCell" src="../pic/16592710224860.jpg" onmouseover="showPic('../pic/16592710224860.jpg')" /> </td>
                <td colspan ="2" rowspan="2" ><img class="bigPicImgCell" id="bigPic" src="../pic/220610_Teampresentation_2022_KV_Header.jpg" /> </td>
                <td> <img class="imgCell" src="../pic/download-removebg-preview.png" onmouseover="showPic('../pic/download-removebg-preview.png')" /> </td>
            </tr>
            <tr>
            <td> <img class="imgCell" src="../pic/football-removebg-preview.png" onmouseover="showPic('../pic/football-removebg-preview.png')" /> </td>
            <td> <img class="imgCell" src="../pic/3.png" onmouseover="showPic('../pic/3.png')" /> </td>           
            </tr>
            <tr>
            <td> <img class="imgCell" src="../pic/og-image-removebg-preview.png" onmouseover="showPic('../pic/og-image-removebg-preview.png')" /> </td>
            <td> <img class="imgCell" src="../pic/Manchester_United_FC_crest.svg-removebg-preview.png" onmouseover="showPic('../pic/Manchester_United_FC_crest.svg-removebg-preview.png')" /> </td>
            <td> <img class="imgCell" src="../pic/Logo_of_AC_Milan.svg.png" onmouseover="showPic('../pic/Logo_of_AC_Milan.svg.png')" /> </td>
            <td> <img class="imgCell" src="../pic/Logo_Bayern_Munchen(1954-1996).svg.png" onmouseover="showPic('../pic/Logo_Bayern_Munchen(1954-1996).svg.png')" /> </td>
            </tr>
        </table>
    </center>
</asp:Content>

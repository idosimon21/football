<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="simpleQuery.aspx.cs" Inherits="Football.simpleQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="simpleQuery.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
    <h1>Simple Query</h1>
    <form method="post" runat="server">
        <select onclick ="detectedField();" name="field" id="field">
            <option value="fName">First Name</option>
            <option value="lName">Last Name</option>
            <option value="email">Email</option>
            <option value="gender">Gender</option>
            <option value="yearBorn">Year Born</option>
            <option value="prefix">Prefix</option>
            <option value="hobby">Hobbi</option>
        </select>
        <div id="query"> </div>
        <br /> <br />
        <input type="submit" name="submit" value="Search" />
    </form>
   <h2 style="direction:ltr;">
       <%= sql %>

   </h2>
    <table style="border:1px solid black; margin:0px auto; color:aliceblue"">
        <%= st %>
    </table>
    <h3 style="color:aliceblue">
        <%= msg %>

    </h3>
</center>
</asp:Content>

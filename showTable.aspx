<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="showTable.aspx.cs" Inherits="Football.showTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    h1{text-align:center;}
    h2{direction:ltr;text-align:center;}
    table,th,td{border:1px solid black}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טבלת משתמשים</h1>
    
    <table style="margin:0px auto;color:aliceblue"">
    <%=st %>   
    </table>

    <h3 style="text-align:center; color:rebeccapurple;">
        <%= msg %>
    </h3>
</asp:Content>

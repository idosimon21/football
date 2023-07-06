<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="deleteUser.aspx.cs" Inherits="Football.deleteUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    h1{text-align:center;}
    h2{direction:ltr;text-align:center}
    table,th,td {border:1px solid black;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1> Users table</h1>
    <%=msg %>
    <h2> <%=sqlDelete%></h2>
    <table style="margin:0px auto;color:aliceblue"">
        <%= st %>
    </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="complexQuery.aspx.cs" Inherits="Football.complexQuery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src ="complexQuery.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2 style="color:rebeccapurple; text-align:center"> Complex Query</h2>
<center>
<form id="form1" method="post" runat="server">
    <table border="1">
        <tr>
            <td style="width:20px;">
                 <select onclick ="detectedField1();" name="field1" id="field1">
            <option value="fName">First Name</option>
            <option value="lName">Last Name</option>
            <option value="email">Email</option>
            <option value="gender">Gender</option>
            <option value="yearBorn">Year Born</option>
            <option value="fromYear">From Year</option>
            <option value="prefix">Prefix</option>
            <option value="hobby">Hobbi</option>
        </select>
            </td>
            <td style="width:150px;">
                <div id="query1" style="text-align:center"> </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;direction:ltr;">
                <input type="radio" name="operator" value="and" checked="checked" /> AND
                &nbsp&nbsp&nbsp&nbsp
                <input type="radio" name="operator" value="or" checked="checked" /> OR
            </td>

        </tr>
        <tr>
            <td style="width:20px;">
                 <select onclick ="detectedField2();" name="field2" id="field2">
            <option value="fName">First Name</option>
            <option value="lName">Last Name</option>
            <option value="email">Email</option>
            <option value="gender">Gender</option>
            <option value="yearBorn">Year Born</option>
            <option value="fromYear">From Year</option>
            <option value="prefix">Prefix</option>
            <option value="hobby">Hobbi</option>
        </select>
            </td>
            <td style="width:150px;">
                <div id="query2" style="text-align:center"> </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <input type="submit" name="submit" value="Search" />
            </td>
        </tr>
    </table>
</form>
    <h2 style="direction:ltr;">
       

   </h2>
    <table style="border:1px solid black; margin:0px auto; color:aliceblue">
        <%= st %>
    </table>
    <h3 style="color:aliceblue;font-size:20px;">
        <%= msg %>

    </h3>
    </center>
</asp:Content>

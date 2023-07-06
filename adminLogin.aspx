<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="Football.adminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
       <h1> admin login</h1>
   </center>
    <form method ="post" runat="server">
        <table class="table">
<tr>
    <td style="color:aliceblue""> User Name</td>
<td> <input type ="text" name="mName" id="mName" size ="40" /> </td>
        </tr>
<tr>
<td style="color:aliceblue"> Password</td>
<td> <input type ="password" name="pw" id="pw" size ="40" /> </td>
</tr>
<tr>
     <td colspan="2" style="text-align:center;">
                    <input type ="submit" name ="submit" value="Log In" />
                </td>
</tr>
            </table>

        <h2> <%=sqlLogin %></h2>
        <h3> <%=msg %></h3>
    </form>
</asp:Content>

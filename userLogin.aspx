<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="userLogin.aspx.cs" Inherits="Football.userLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.table{
    border:1px solid purple;
    margin:0px auto;
    direction: rtl;
    text-align:center;
}
h2{text-align:center;direction:ltr;}
h3{text-align:center;color:maroon;}
</style>
    <script src ="userLogin.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h1>Log in</h1>
    </center>
    <form method="post" runat="server">
        <table class ="table">
            <tr>
                <td style="color:aliceblue" >User Name</td>
                <td><input type ="text" name ="uName" id="uName" size="40" /></td>
            </tr>
               <tr>
                <td style="color:aliceblue">Password</td>
                <td><input type ="text" name ="password" id="password" size="40" /></td>
            </tr>
            <tr>
                <td style="color:aliceblue">Password Verification</td>
                <td><input type ="text" name ="password2" id="password2" size="40" /></td>
            </tr>
               <tr>
                <td colspan="2" style="text-align:center;">
                    <input type ="submit" name ="submit" value="Log In" onclick="return checkPasswordsMatch();" />
                </td>
                
            </tr>
        </table>
        
        <h3><%=msg %></h3>
    </form>
</asp:Content>

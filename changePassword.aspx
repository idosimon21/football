<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeFile="changePassword.aspx.cs" Inherits="changePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src ="userLogin.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Change Password</h1>
    <form runat="server">
        <div>
            <label for="currentPassword" style="color:aliceblue">Current Password:</label>
            <input type="password" id="currentPassword" name="currentPassword" />
        </div>
        <div>
            <label for="newPassword" style="color:aliceblue">New Password:</label>
            <input type="password" id="password" name="password" />
        </div>
        <div>
            <label for="confirmPassword" style="color:aliceblue">Confirm Password:</label>
            <input type="password" id="password2" name="password2" />
        </div>
        <div>
            <input type="submit" value="Change Password" onclick="return checkPasswordsMatch();"/>
        </div>
    </form>
    <h3 style="color:aliceblue"><%=msg %></h3>
</asp:Content>



<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="updateUser2.aspx.cs" Inherits="Football.updateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .ftable{
           

           
            margin:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Update User</h1>
    <form method="post" runat="server">
        <table class="ftable">
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue">User Name </td>
                <td> <input type="text" name="uName" disabled="disabled" value="<%=uName %>" /> </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> First Name </td>
                <td> <input type="text" name="fName" id="fName" size="40" value="<%=fName %>" /></td>
                <td> <input type="text" id="mfName" size="50" style="display:none; background-color:silver;
                      font-weight:bold;" disabled="disabled" />
                </td>
            </tr>
           
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> Last Name </td>
                <td> <input type="text" name="lName" id="lName" size="40" value="<%=lName %>"/></td>
                <td> <input type="text" id="mlName" size="50" style="display:none; background-color:silver;
                      font-weight:bold;" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> Email </td>
                <td> <input type="email" name="email" id="email" size="40" value="<% =email %>"/> </td>
                <td> <input type="email" id="mEmail" size="50" style="display:none; background-color:silver;
                      font-weight:bold;" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue">Year Born </td>
                <td> 
                    <select name="yearBorn" id="yearBorn">
                        <%=YearList %>
                    </select>
                </td>
            </tr>
           
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue" colspan="2" >Gender </td>
            </tr>
            <tr>
               <td style="font-size:15px; font:italic; color:aliceblue"> <% if (gender == "male")
                        { %>
                   <input type="radio" name="gender" value="male" checked /> Male
                   <input type="radio" name="gender" value="female" /> Female
                   <% } else { %>
                   <input type="radio" name="gender" value="male" /> Male
                   <input type="radio" name="gender" value="female" checked /> Female
                   <%} %>
                </td>
            </tr>

            <tr>
                <td style="font-size:25px; font:italic; color:aliceblue"> Phone Number</td>
                <td> 
                    <input type="text" name="phone" size="7" <%=phone %> /> </td>
                <td> <select name="prefix" id="prefix">
                    <%=prefixs %>    
                    </select>
                </td>
                <td> <input type="text" id="mPhone" style="display:none; background-color:silver;
                      font-weight:bold;" disabled="disabled" />
                </td>
            </tr>
             <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> City </td>
                <td>
                    <select name="city" id="city">
                        <option value="other" selected>other</option>
                        <option value="Haifa">Haifa</option>
                        <option value="Tel Aviv">Tel Aviv</option>
                        <option value="Jerusalem">Jerusalem</option>
                        <option value="Hod Hasharon">Hod Hasharon</option>
                        <option value="Beer Sheva">Beer Sheva</option>
                        <option value="Netanya">Netanya</option>
                        <option value="Rishon Letzion">Rishon Letzion</option>
                    </select>
                </td>
                 <td> <input type="text" id="mcity" style="display:none; background-color:silver;
                      font-weight:bold;" disabled="disabled" />
                </td>
            </tr>

             <tr>
                 <td style="font-size:35px; font:italic; color:aliceblue"> Hobies </td>
                 <td>
                     <table style="width:550px;">
                         <tr>
                             <td class="cdHob" style="color:aliceblue">
                                 <% if (hobi1 == "T")
                                     { %>
                                 <input type="checkbox" name="hobies" value="football" style="color:aliceblue" checked="checked" />
                                 <% }
                                     else
                                     { %>
                                 <input type="checkbox" name="hobies" style="color:aliceblue" value="football" />
                                 <%} %> Football
                             </td>
                             <td class="cdHob" style="color:aliceblue">
                                  <% if (hobi2 == "T")
                                     { %>
                                 <input type="checkbox" name="hobies" style="color:aliceblue" value="tennis" checked="checked" />
                                 <% }
                                     else
                                     { %>
                                 <input type="checkbox" name="hobies" style="color:aliceblue" value="tennis" />
                                 <%} %> Tennis
                             </td>
                             <td class="cdHob" style="color:aliceblue">
                                  <% if (hobi3 == "T")
                                     { %>
                                 <input type="checkbox" name="hobies" style="color:aliceblue" value="compgame" checked="checked" />
                                 <% }
                                     else
                                     { %>
                                 <input type="checkbox" name="hobies" style="color:aliceblue" value="conpgame" />
                                 <%} %> Computer Games
                             </td>
                             <td class="cdHob" style="color:aliceblue">
                                  <% if (hobi4 == "T")
                                     { %>
                                 <input type="checkbox" name="hobies" style="color:aliceblue" value="dance" checked="checked" />
                                 <% }
                                     else
                                     { %>
                                 <input type="checkbox" name="hobies" style="color:aliceblue" value="dance" />
                                 <%} %> Dance
                             </td>
                         </tr>
                      </table>
                   </td>
             </tr>
            
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> Password</td>
                <td>
                    <input type="password" name="password" id="password" value="<%= password %>" />
                    <span style="color:red; font-size:2pt;"> until 10 chars</span>
                </td>
                <td>
                    <input type="text" name="mpassword" id="mpassword" style="display: none;
                     background-color:black; color:white; font-weight:bold;" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> Password verification </td>
                <td>
                    <input type="password" name="password1" id="password1" value="<%= password %>" />
                </td>
        <td>
            <input type="text" name="mpassword1" id="mpassword1" style="display:none;
                background-color: black; color:white; font-weight:bold;" disabled="disabled" />
        </td>
        </tr>
          
        <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" name="submit" value=" Submit " />
                </td>
            </tr>

        </table>
    </form>
    <br />
    <!--- הצגת השאילתה לאיתור המשתמש -->
    <!--<h3> <%=sqlSelect %></h3>-->
     <!--- הצגת השאילתה עדכון ותוצאה -->
    <!--<h3> <%=sqlUpdate %></h3>-->

    <h3 style="color:aliceblue"> <%=msg %></h3>

    <center>
        <h2> <a href="updateUser.aspx"> Refresh </a></h2>
    </center>
</asp:Content>

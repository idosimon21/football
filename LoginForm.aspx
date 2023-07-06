<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Football.aspx_pgs.LoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src ="loginForm.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <form method="post" runat="server" onsubmit="return checkForm();">
            <h1>Sign Up</h1>
            <fieldset>
        <table class ="ftable">
         <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> User Name</td>
                <td> <input type ="text" name="uName" id="uName" size ="40" /></td>
                <td> <input type="text"  id="muName" size="50" style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled"/> </td>
                
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue">First Name</td>
                <td> <input type ="text" name="fName" id="fName" size ="40" /></td>
                <td> <input type="text"  id="mfName" size="50" style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled" /> </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> Last Name</td>
                <td> <input type ="text" name="lName" id="lName" size ="40" /></td>
                <td> <input type="text" id="mlName" size="50" style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled" /> </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> Email</td>
                <td> <input type ="email" name="email" id="email" size ="40" /></td>
                <td> <input type="email" id="memail" size="50" style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled" /> </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue">Year Born</td>
                <td>
                    <select name="yearBorn" id ="yearBorn">
                     <%=yearB %>
                    </select>
                </td>

            </tr>
            <tr>
 
                <td colspan="2" style="font-size:35px; font:italic; color:aliceblue"> Gender </td>
            </tr>
            <tr>
                <td style="font-size:25px; font:italic; color:aliceblue"> <input type="radio" name="gender"  value="male" /> Male </td>
                <td style="font-size:25px; font:italic; color:aliceblue"> <input type="radio" name="gender"  value="female" /> Female </td>
                 <td> <input type="text"  id="mgender"  style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled"/> </td>
            </tr>
            <tr>
                <td style="font-size:20px; font:italic; color:aliceblue"> Phone Number </td>
                <td>
                    <select name ="prefix" id ="prefix">
                        <%=prefixs %>
                    </select>
                </td>

                
                 <td> <input type="text" name="phone" id="phone" size="7" />
                     </td>
                 <td> <input type="text"  id="mphone"  style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled"/> </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> City </td>
                <td>
                    <select name ="city" id ="city">
                        <option value ="other" selected>other</option>
                        <option value ="Haifa" >Haifa</option>
                        <option value ="Tel Aviv" >Tel Aviv</option>
                        <option value ="Jerusalem" >Jerusalem</option>
                        <option value ="Hod Hasharon" >Hod Hasharon</option>
                        <option value ="Beer Sheva" >Beer Sheva</option>
                        <option value ="Netanya" >Netanya</option>
                        <option value ="Rishon Letzion" >Rishon Letzion</option>

                    </select>
                </td>
                <td> <input type="text" id="mcity" style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled"/> </td>
            </tr>
            <tr>
                <td colspan="2" style="font-size:35px; font:italic; color:aliceblue">Hobies</td>
            </tr>
            <tr>
                
            <td style="font-size:15px; font:italic; color:aliceblue"> <input type ="checkbox" name="hobies" value="comgame" />Computer games</td>
            <td style="font-size:15px; font:italic; color:aliceblue"> <input type ="checkbox" name="hobies" value="dance" />Dance</td>
            </tr>
            <tr>
            <td style="font-size:15px; font:italic; color:aliceblue"> <input type ="checkbox" name="hobies" value="Football" />Football </td>
            <td style="font-size:15px; font:italic; color:aliceblue"> <input type ="checkbox" name="hobies" value="Tennis" />Tennis</td>
                 <td> <input type="text" id="mhobies"  style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled"/> </td>
            </tr>
            <tr>
                <td style="font-size:35px; font:italic; color:aliceblue"> Password </td>
                <td> <input type="password" name="password" id="password" value="" /></td>
                <td> <input type="password" id="mpassword" style="display:none;background-color:silver;
                font-weight:bold;" disabled="disabled"/> </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" name="submit" value=" Submit " />
                </td>
            </tr>
        </table>
      </fieldset>
    </form>
    <h2 style="color:aliceblue;font-size:20px;">
    <%=st %>
  </h2>
</asp:Content>

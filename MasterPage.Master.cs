using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Football
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string loginMsg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg += "<h3 style='color:aliceblue''> Hello ";
            loginMsg += Session["fName"].ToString();
            loginMsg += "</h3>";

            if (Session["uName"].ToString() == "אורח")
            {
                loginMsg += "<a href = 'loginForm.aspx'> Sign Up</a> <br/>";
                loginMsg += "<a href = 'userLogin.aspx'> Log in</a>";
                loginMsg += "<a href =\"adminLogin.aspx\">Admin Login</a>";

            }
            else if (Session["admin"].ToString()=="yes")
            {
                loginMsg += "<a href = 'adminPage.aspx'> Admin Page</a> <br/>";
                loginMsg += "<a href = 'logOut.aspx'> Log out</a>";
            }
            else
            {
                loginMsg += "[<a href=\"changePassword.aspx\">changePassword</a> ]";
                loginMsg += "[<a href = 'Contact2.aspx'>Contact</a> <br/>]";
                loginMsg += "[<a href = 'updateUser2.aspx'> Update data</a> <br/>]";
                loginMsg += "[<a href = 'logOut.aspx'> Log out</a> <br/>]";
                

            }
        }
    }
}
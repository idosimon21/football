using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Football
{
    public partial class adminPage : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString()=="no")
            {
                msg += "<h3>";
                msg += "You are not admin";
                msg += "</h3>";
                msg += "<a href ='Home3.aspx'><img src = 'pic/3.png' /> </a>";

            }
            else
            {
                msg += "<h3> <a href='showTable.aspx'>[Users table] </a> </h3>";
                msg += "<h3> <a href='deleteUser.aspx'>[Delete user] </a> </h3>";
                msg += "<h3> <a href='simpleQuery.aspx'>[simple Query] </a> </h3>";
                msg += "<h3> <a href='complexQuery.aspx'>[complex Query] </a> </h3>";
            }
        }
    }
}
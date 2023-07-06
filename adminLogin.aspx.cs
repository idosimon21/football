using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Football
{
    public partial class adminLogin : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string mName = Request.Form["mName"];
                string pw = Request.Form["pw"];

                string fileName = "MyDB.mdf";
                string tableName = "adminTbl";
                sqlLogin = "SELECT * FROM " + tableName + " WHERE mName = '" + mName + "' AND pw = '" + pw + "'";
                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg += "<div style='text-align:center;'>";
                    msg += "<h3> you are not admin</h3>";
                    msg += "<a href ='Home3.aspx'>[continue] </a>";
                    msg += "</div>";

                }
                else
                {
                    Session["uName"] = "admin";
                    Session["fName"] = "admin";
                    Session["admin"] = "yes";

                    Response.Redirect("adminPage.aspx");
                }
            }

        }
    }
}
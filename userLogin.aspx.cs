using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Football
{
    public partial class userLogin : System.Web.UI.Page
    {
        public string msg;
        public string sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string password = Request.Form["password"];

                string fileName = "MyDB.mdf";
                string tableName = "usersTbl";

                sqlLogin = "SELECT * FROM " + tableName + " WHERE uName = '" + uName + "' AND password = '" + password+"'";
               

                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = " User doesn't exist, try again";
                else
                {
                    Application.Lock();
                    Application["counter"] = (int)Application["counter"] + 1;
                    Application.UnLock();

                    Session["uName"] = table.Rows[0]["uName"];
                    Session["fName"] = table.Rows[0]["fName"];
                    Response.Redirect("Home3.aspx");

                }
            }

        }
    }
}
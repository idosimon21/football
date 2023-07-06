using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changePassword : System.Web.UI.Page
{
    public string uName;
    public string msg = "";
    public string sqlUpdate = "";
    public string sqlSelect = "";
    

    protected void Page_Load(object sender, EventArgs e)
    {
        string fileName = "MyDB.mdf";
        string tableName = "usersTbl";
        string currentPassword = Request.Form["currentPassword"];
        string newPassword = Request.Form["password"];
        string confirmPassword = Request.Form["password2"];

        // Retrieve the username from the Session object
        uName = Session["uName"].ToString();

        // Check if the user is logged in
        if (uName == "אורח")
        {
            msg = "You are not a registered user in the system";
            Response.Redirect("userLogin.aspx");
        }

        // Retrieve user details from the database table
        sqlSelect = "SELECT * FROM usersTbl WHERE uName= '" + uName + "'";
        DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
        // Verify the current password
        string storedPassword = table.Rows[0]["password"].ToString();
        if (currentPassword != storedPassword)
        {
            msg = "Incorrect current password";
            return;
        }

        // Check if the new password matches the confirmation
        if (newPassword != confirmPassword)
        {
            msg = "New password and confirmation password do not match";
            return;
        }

        // Update the password in the database
        sqlUpdate = "UPDATE usersTbl SET password='" + newPassword + "' WHERE uName='" + uName + "'";
        Helper.DoQuery(fileName, sqlUpdate);

        msg = "Password changed successfully";
    }

   
}

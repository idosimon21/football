using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
namespace Football
{
    public partial class simpleQuery : System.Web.UI.Page
    {
        public string st = "";
        public string msg = "";
        public string sql = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["admin"].ToString() == "no")
            {
                msg += "<h3>";
                msg += "You are not admin";
                msg += "</h3>";
                msg += "<a href ='Home3.aspx'><img src = 'pic/3.png' /> </a>";
            }
            else
            {
                if (Request.Form["submit"] != null)
                {
                    string field = Request.Form["field"];
                    string value = Request.Form["value"];

                    string fileName = "MyDB.mdf";
                    string tableName = "usersTbl";

                    string query = "";
                    if (value != null)
                    {
                        if (field == "gender" || field == "prefix")
                            query = field + " ='" + value + "'";
                        else if (field == "yearBorn")
                            query = field + " = " + value;
                        else if (field == "hobby")
                        {
                            var val = int.Parse(value);
                            switch (val)
                            {
                                case 1: field = "hobi1"; break;
                                case 2: field = "hobi2"; break;
                                case 3: field = "hobi3"; break;
                                case 4: field = "hobi4"; break;
                            }
                            query = field + " = 'T'";
                        }
                        else if (field == "email")
                            query = field + " like '%" + value + "%'";
                        else
                            query = field + " like N'" + value + "%'";
                    }
                    if (query != "")
                    {
                        string sqlSelect = "SELECT * FROM " + tableName + " where (" + query + ");";
                        DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                        int length = table.Rows.Count;
                        if (length == 0)
                            msg = "הטבלה ריקה -איו משתמשים";
                        else
                        {
                            // שורת כותבת הטבלה
                            st += "<tr>";
                            st += "<th> שם משתמש </th>";
                            st += "<th> שם פרטי </th>";
                            st += "<th> שם משפחה </th>";
                            st += "<th> אימייל </th>";
                            st += "<th> שנת לידה </th>";
                            st += "<th> מגדר </th>";
                            st += "<th> טלפון </th>";
                            st += "<th> עיר </th>";
                            st += "<th> כדורגל </th>";
                            st += "<th> טניס </th>";
                            st += "<th> מחשב </th>";
                            st += "</tr>";

                            // כל הרשומות מהטבלה
                            for (int i = 0; i < length; i++)
                            {
                                st += "<tr>";
                                st += "<td>" + table.Rows[i]["uName"] + "</td>";
                                st += "<td>" + table.Rows[i]["fName"] + "</td>";
                                st += "<td>" + table.Rows[i]["lName"] + "</td>";
                                st += "<td>" + table.Rows[i]["email"] + "</td>";
                                st += "<td>" + table.Rows[i]["yearBorn"] + "</td>";
                                st += "<td>" + table.Rows[i]["gender"] + "</td>";
                                st += "<td>" + table.Rows[i]["prefix"] + "</td>";
                                st += "<td>" + table.Rows[i]["city"] + "</td>";
                                st += "<td>" + table.Rows[i]["hobi1"] + "</td>";
                                st += "<td>" + table.Rows[i]["hobi2"] + "</td>";
                                st += "<td>" + table.Rows[i]["hobi3"] + "</td>";
                                st += "</tr>";
                            }
                            msg = "נרשמו:" + length + " אנשים ";
                        }
                    }
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Newtonsoft.Json.Linq;
using System.Collections;

namespace Football
{
    public partial class complexQuery : System.Web.UI.Page
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
                    string field1 = Request.Form["field1"];
                    string field2 = Request.Form["field2"];
                    string value1 = Request.Form["value1"];
                    string value2 = Request.Form["value2"];

                    string op = Request.Form["operator"];
                    string fileName = "MyDB.mdf";
                    string tableName = "usersTbl";

                    string query1 = "";
                    string query2 = "";


                    if (value1 != null)
                    {
                        if (field1 == "gender" || field1 == "prefix")
                            query1 = field1 + " ='" + value1 + "'";
                        else if (field1 == "yearBorn")
                            query1 = field1 + " = " + value1;
                        else if (field1 == "fromYear")
                            query1 = "yearBorn" + " >= " + value1;
                        else if (field1 == "hobby")
                        {
                            var val = int.Parse(value1);
                            switch (val)
                            {
                                case 1: field1 = "hobi1"; break;
                                case 2: field1 = "hobi2"; break;
                                case 3: field1 = "hobi3"; break;
                                case 4: field1 = "hobi4"; break;
                            }
                            query1 = field1 + " = 'T'";
                        }
                        else if (field1 == "email")
                            query1 = field1 + " like '%" + value1 + "%'";
                        else
                            query1 = field1 + " like N'" + value1 + "%'";
                    }
                    if (value2 != null)
                    {
                        if (field2 == "gender" || field2 == "prefix")
                            query2 = field2 + " ='" + value2 + "'";
                        else if (field2 == "yearBorn")
                            query2 = field2 + " = " + value2;
                        else if (field2 == "fromYear")
                            query2 = "yearBorn" + " >= " + value2;
                        else if (field2 == "hobby")
                        {
                            var val = int.Parse(value2);
                            switch (val)
                            {
                                case 1: field2 = "hobi1"; break;
                                case 2: field2 = "hobi2"; break;
                                case 3: field2 = "hobi3"; break;
                                case 4: field2 = "hobi4"; break;
                            }
                            query1 = field2 + " = 'T'";
                        }
                        else if (field2 == "email")
                            query2 = field2 + " like '%" + value2 + "%'";
                        else
                            query2 = field2 + " like N'" + value2 + "%'";
                    }

                    string sqlSelect = "";
                    if (query1 != "" || query2 != "")
                    {
                        if (query1 != "" && query2 == "")
                            sqlSelect = "SELECT * FROM " + tableName + " where (" + query1 + ");";
                        else
                        {
                            if (query1 == "" && query2 != "")
                                sqlSelect = "SELECT * FROM " + tableName + " where (" + query2 + ");";
                            else
                            {
                                if (op == "and")
                                    sqlSelect = "SELECT * FROM " + tableName + " where (" + query1 + "AND " + query2 + ");";
                                else
                                    sqlSelect = "SELECT * FROM " + tableName + " where (" + query1 + "OR " + query2 + ");";

                            }
                        }
                        sql = sqlSelect;
                        DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);
                        int length = table.Rows.Count;
                        if (length == 0)
                            msg = "לא נמצאו רשומות תואמות לחיפוש";
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
                            msg =  + length + " אנשים העונים לתוצאת החיפוש";
                        }
                    }
                
                }
                }
            }
        }
    }

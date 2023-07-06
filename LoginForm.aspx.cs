using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Football.aspx_pgs
{
    public partial class LoginForm : System.Web.UI.Page
    {
        public string yearB = "";
        public string prefixs = "";
        public string hob = "";
        public string st = "";
        public string sqlMsg = "";
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            int year = DateTime.Now.Year;
            int start = year - 60;
            int end = year - 12;
            for(int i = start; i <= end; i++)
            {
                yearB += "<option value = '" + i + "'>" + i + "</option>";
            }

            String[] phonestarts = new string[11];
            phonestarts[0] = "02";
            phonestarts[1] = "03";
            phonestarts[2] = "04";
            phonestarts[3] = "08";
            phonestarts[4] = "09";
            phonestarts[5] = "050";
            phonestarts[6] = "052";
            phonestarts[7] = "053";
            phonestarts[8] = "054";
            phonestarts[9] = "055";
            phonestarts[10] = "077";

            for (int i = 0; i < phonestarts.Length; i++)
                prefixs += "<option value = '" + phonestarts[i] + "'>" + phonestarts[i] + "</option>";


            string fileName = "MyDB.mdf";
            string tableName = "usersTbl";

            if (Request.Form["submit"] !=null)
            {
                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];
                string yearBorn = Request.Form["yearBorn"];
                string gender = Request.Form["gender"];
                string prefix = Request.Form["prefix"];
                string phone = Request.Form["phone"];
                string city = Request.Form["city"];
                string hobies = Request.Form["hobies"].ToString();
                string password = Request.Form["password"];
               
                if (string.IsNullOrEmpty(uName) || string.IsNullOrEmpty(fName) || string.IsNullOrEmpty(lName) ||
                string.IsNullOrEmpty(email) || string.IsNullOrEmpty(yearBorn) || string.IsNullOrEmpty(gender) ||
                string.IsNullOrEmpty(prefix) || string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(city) ||
                string.IsNullOrEmpty(hobies) || string.IsNullOrEmpty(password))
                {
                    st = "Please fill in all required fields.";


                }

                else
                {
                    // add user to table
                    char hobi1 = 'F';
                    char hobi2 = 'F';
                    char hobi3 = 'F';
                    char hobi4 = 'F';

                    if (hobies.Contains("Football")) hobi1 = 'T';
                    if (hobies.Contains("Tennis")) hobi2 = 'T';
                    if (hobies.Contains("comgame")) hobi3 = 'T';
                    if (hobies.Contains("dance")) hobi4 = 'T';


                    string sqlSelect = "SELECT * FROM " + tableName + " Where uName = '" + uName + "'";
                    if (Helper.IsExist(fileName, sqlSelect))
                    {
                        st = "user name has been taken";
                        sqlMsg = sqlSelect;
                    }
                    else
                    {
                        string sqlInsert = "INSERT INTO " + tableName;
                        sqlInsert += " VALUES ('" + uName + "','" + fName + "','" + lName + "','";
                        sqlInsert += email + "'," + yearBorn + ",'" + gender + "','" + prefix + "','";
                        sqlInsert += phone + "',N'" + city + "','" + hobi1 + "','" + hobi2 + "','" + hobi3 + "','";
                        sqlInsert += hobi4 + "','" + password + "')";

                        Helper.DoQuery(fileName, sqlInsert);

                        st = "user name has been added";
                        sqlMsg = sqlInsert;
                    }
                }
            }
        }

    }
}
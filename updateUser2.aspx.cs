using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Football
{
    public partial class updateUser : System.Web.UI.Page
    {
        public string msg = "";
        public string sqlUpdate = "";
        public string sqlSelect = "";
        public string YearList = "";
        public string prefixs = "";
        public string uName, fName, lName, email, prefix, phone, gender, password;
        public string hobi1, hobi2, hobi3, hobi4;
        public int yearBorn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "MyDB.mdf";
            string tableName = "usersTbl";
            // את שם המשתמש Session נשלוף מאובייקט
            uName = Session["uName"].ToString();
            // בדיקה שאכן המשתתף מחובר
            if (uName == "אורח")
            {
                msg = "אינך משתמש רשום במערכת";
                Response.Redirect("userLogin.aspx");
            }

            // שליפת פרטי המשתמש מטבלת הנתונים
            sqlSelect = "SELECT * FROM usersTbl WHERE uName= '" + uName + "'";
            DataTable table = Helper.ExecuteDataTable(fileName, sqlSelect);

            // משתמש קיים במערכת 
            int lenght = table.Rows.Count;
            if (lenght == 0)
                msg = "אינך משתמש רשום במערכת";
            else
            {
                // שליפת הנתונים מהרשומה בשדות השונים
                fName = table.Rows[0]["fName"].ToString().Trim();
                // Trim() מסיר תאי רווח לפני ואחרי הערך
                lName = table.Rows[0]["lName"].ToString().Trim();
                email = table.Rows[0]["email"].ToString().Trim();
                prefix = table.Rows[0]["prefix"].ToString().Trim();
                phone = table.Rows[0]["phone"].ToString().Trim();
                gender = table.Rows[0]["gender"].ToString().Trim();
                yearBorn = Convert.ToInt16(table.Rows[0]["yearBorn"]);
                hobi1 = table.Rows[0]["hobi1"].ToString().Trim();
                hobi2 = table.Rows[0]["hobi2"].ToString().Trim();
                hobi3 = table.Rows[0]["hobi3"].ToString().Trim();
                //hobi4 = table.Rows[0]["hobi4"].ToString().Trim();
                password = table.Rows[0]["password"].ToString().Trim();
            }

            // שנת לידה ברשימה נגללת
            int year = (int)table.Rows[0]["yearBorn"];
            for (int i = 1960; i < 2011; i++)
            {
                if (i == year)
                    YearList += "<option value = '" + i + "'selected='selected'>" + i + "</option>";
                else
                    YearList += "<option value = '" + i + "'>" + i + "</option>";
            }

            // יצירת מחרוזת לקידומת
            string[] phonstarts = new string[11];
            phonstarts[0] = "02";
            phonstarts[1] = "03";
            phonstarts[2] = "04";
            phonstarts[3] = "08";
            phonstarts[4] = "09";
            phonstarts[5] = "050";
            phonstarts[6] = "052";
            phonstarts[7] = "053";
            phonstarts[8] = "054";
            phonstarts[9] = "055";
            phonstarts[10] = "058";

            for (int i = 0; i < phonstarts.Length; i++)
                prefixs += "<option value= '" + phonstarts[i] + "'>" + phonstarts[i] + "</option>";

            // אחזור פרטים מהטופס
            if (this.IsPostBack)
            {
                fName = Request.Form["fName"];
                lName = Request.Form["lName"];
                email = Request.Form["email"];
                prefix = Request.Form["prefix"];
                phone = Request.Form["phone"];
                string YearBorn = Request.Form["yearBorn"];
                gender = Request.Form["gender"];
                string city = Request.Form["city"];
                password = Request.Form["password"];

                string hobies = Request.Form["hobies"].ToString();
                hobi1 = "F";
                hobi2 = "F";
                hobi3 = "F";
                hobi4 = "F";

                if (hobies.Contains("football")) hobi1 = "T";
                if (hobies.Contains("tennis")) hobi2 = "T";
                if (hobies.Contains("compgame")) hobi3 = "T";
                if (hobies.Contains("dance")) hobi4 = "T";

                // בניית שאילתת העדכון
                // לכל שדה בטופס נבצע עדכון
                sqlUpdate = "UPDATE " + tableName + " SET fName = '" + fName + "',";
                sqlUpdate += "lName ='" + lName + "',";
                sqlUpdate += "email ='" + email + "',";
                sqlUpdate += "YearBorn ='" + YearBorn + "',";
                sqlUpdate += "gender ='" + gender + "',";
                sqlUpdate += "prefix ='" + prefix + "',";
                sqlUpdate += "phone ='" + phone + "',";
                sqlUpdate += "hobi1 ='" + hobi1 + "',";
                sqlUpdate += "hobi2 ='" + hobi2 + "',";
                sqlUpdate += "hobi3 ='" + hobi3 + "',";
                sqlUpdate += "hobi4 ='" + hobi4 + "',";
                sqlUpdate += "password ='" + password + "'";
                sqlUpdate += "WHERE uName = '" + uName + "'";

                // הוראה להפעלת שאילתה
               Helper.DoQuery(fileName,sqlUpdate);

                msg = "Succses";
            }
        }
    }
}

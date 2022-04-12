using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSC_410_Team_Project_Restaurant
{
    public partial class LoginPage : System.Web.UI.Page
    {
        private DataView dView;
        private DataRowView dRowView;
        string userType;
        string userName;
        string password;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Length > 0 && txtPassword.Text.Length > 0)
            {
                sdsLogin.SelectCommand = "SELECT CustomerID, UserName, Password FROM Customer WHERE UserName = '" + txtUserName.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS AND Password = '" + txtPassword.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS UNION SELECT CAST(EmployeeID AS varchar), UserName, Password FROM Employee WHERE UserName = '" + txtUserName.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS AND Password = '" + txtPassword.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS";
                //sdsLogin.DataBind();
                dView = (DataView)sdsLogin.Select(DataSourceSelectArguments.Empty);
                if (dView.Count > 0)
                {
                    dRowView = dView[0];

                    userName = (string)dRowView["UserName"];

                    password = (string)dRowView["Password"];

                    /* 
                     * If "CustomerID" is an int, then it's a Employee. If it is an email (varchar/string), then it is a Customer.
                     * 
                     * This if statement is written this way because the select statement above will associate CustomerID with both tables
                     * instead of EmployeeID for the Employee table only... this is because the column names are different in both tables
                     * when doing a merge of the tables.
                    */
                    if (int.TryParse((string)dRowView["CustomerID"], out int value))
                    {
                        userType = "Employee";
                    } else
                    {
                        userType = "Customer";
                    }

                    Session["UserName"] = userName;

                    Session["Password"] = password;

                    //if userType = Employee, go to admin page. Else, go to regular page.

                    if (userType == "Employee")
                    {
                        Response.Redirect("AdminPage.aspx");

                    }
                    else if (userType == "Customer")
                    {
                        Response.Redirect("MenuPage.aspx");
                    }
                }
                else
                {
                    lblStatus.Text = "Invalid Username or Password";
                }
            }
            else
            {
                lblStatus.Text = "Please enter both a Username and a Password";
            }
        }
    }
}
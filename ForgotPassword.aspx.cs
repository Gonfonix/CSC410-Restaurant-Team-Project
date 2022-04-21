using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CSC_410_Team_Project_Restaurant
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        private DataView dView;
        private DataRowView dRowView;
        string userType;
        string userName;
        string password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["RestaurantConnectionString"].ConnectionString;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Length > 0 && txtPassword.Text.Length > 0)
            {
                /////////
                sdsForgotPassword.SelectCommand = "SELECT CustomerID, UserName, Password FROM Customer WHERE UserName = '" + txtUsername.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS UNION SELECT CAST(EmployeeID AS varchar), UserName, Password FROM Employee WHERE UserName = '" + txtUsername.Text + "' COLLATE SQL_Latin1_General_CP1_CS_AS";
                //sdsLogin.DataBind();
                dView = (DataView)sdsForgotPassword.Select(DataSourceSelectArguments.Empty);
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
                    }
                    else
                    {
                        userType = "Customer";
                    }

                    Session["UserName"] = userName;

                    Session["Password"] = password;

                    //if userType = Employee, go to admin page. Else, go to regular page.

                    if (userType == "Employee")
                    {
                        sdsForgotPassword.UpdateCommand = "UPDATE Employee SET Password = '" + txtPassword.Text + "' WHERE UserName = '" + txtUsername.Text + "'";
                        //sdsLogin.DataBind();
                        dView = (DataView)sdsForgotPassword.Select(DataSourceSelectArguments.Empty);
                        if (dView.Count > 0)
                        {
                            Response.Write("Updated Password for Employee");

                        }

                    }
                    else if (userType == "Customer")
                    {
                        sdsForgotPassword.UpdateCommand = "UPDATE Customer SET Password = '" + txtPassword.Text + "' WHERE UserName = '" + txtUsername.Text + "'";
                        //sdsLogin.DataBind();
                        dView = (DataView)sdsForgotPassword.Select(DataSourceSelectArguments.Empty);
                        if (dView.Count > 0)
                        {
                            Response.Write("Updated Password for Customer");

                        }
                    }
                }
                else
                {
                    lblStatus.Text = "Invalid User Name or Password.";
                }
            }
            else
            {
                lblStatus.Text = "Please enter both a User Name and a Password.";
            }


        }
    }
}
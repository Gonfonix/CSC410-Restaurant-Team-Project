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
                sdsForgotPassword.SelectCommand = "UPDATE Customer SET Password = " + txtPassword.Text + "WHERE Username = " + txtUsername.Text;
                //sdsLogin.DataBind();
                dView = (DataView)sdsForgotPassword.Select(DataSourceSelectArguments.Empty);
                if (dView.Count > 0)
                {
                    dRowView = dView[0];

                    userName = (string)dRowView["UserName"];

                    password = (string)dRowView["Password"];

                    if (int.TryParse((string)dRowView["CustomerID"], out int value))
                    {
                        userType = "Employee";
                    }
                    else
                    {
                        userType = "Customer";
                    }

                }
            }
            else
            {
                lblStatus.Text = "Please enter both a User Name and a Password.";
            }


        }
    }
}
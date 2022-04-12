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
                dView = (DataView)sdsLogin.Select(DataSourceSelectArguments.Empty);
                if (dView.Count > 0)
                {
                    // successful login
                    dRowView = dView[0];
                    userType = (string)dRowView["UserType"];
                    userName = (string)dRowView["UserName"];
                    Session["UserType"] = userType;
                    Session["UserName"] = userName;

                    //if cookie = admin, go admin page, if not, go regular page
                    if(Session["UserName"] == "Administrator")
                    {
                        Response.Redirect("AdminPage.aspx");

                    }
                    else
                    {
                        Response.Redirect("MenuPage.aspx");
                    }
                }
                else
                {
                    lblStatus.Text = "Invalid User name or password";
                }
            }
            else
            {
                lblStatus.Text = "Please enter a User name and a Password";
            }
        }
    }
}
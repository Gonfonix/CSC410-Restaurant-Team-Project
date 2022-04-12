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
                sdsLogin.SelectCommand = "SELECT UserName FROM Customer WHERE UserName = '" + txtUserName.Text + "' UNION SELECT UserName FROM Employee WHERE UserName = '" + txtUserName.Text + "'";
                //sdsLogin.DataBind();
                dView = (DataView)sdsLogin.Select(DataSourceSelectArguments.Empty);
                if (dView.Count > 0)
                {
                    // successful login
                    dRowView = dView[0];
               
                    userName = (string)dRowView["UserName"];
                
                    Session["UserName"] = userName;

                    Response.Write(Session["UserName"]);

                    //if cookie = admin, go admin page, if not, go regular page

                    if((string)Session["UserName"] == "Administrator" || (string)Session["UserName"] == "cindricbb")
                    {
                        Response.Redirect("AdminPage.aspx");

                    }
                    else
                    {
                        //Response.Redirect("MenuPage.aspx");
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
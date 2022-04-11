using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSC_410_Team_Project_Restaurant
{
    public partial class CreateLoginPage : System.Web.UI.Page
    {
        private string username;
        private string password;
        private string email;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void btnAddUser_Click(object sender, EventArgs e)
        //{
        //    username = txtUsername.Text;
        //    password = txtPassword.Text;


        //    if (username.Length > 0 && password.Length > 0)
        //    {
        //        sdsRestaurant.InsertParameters["Username"].DefaultValue = username;
        //        sdsMajors.InsertParameters["Password"].DefaultValue = password;
        //        try
        //        {
        //            sdsMajors.Insert();
        //            lblStatus.Text = majorCode + ": " + majorDescription + " added.";
        //            txtNewMajorCode.Text = "";
        //            txtNewMajorDescription.Text = "";
        //        }
        //        catch (Exception ex)
        //        {
        //            lblStatus.Text = "Error: Duplicate major code." + majorCode + ": " + majorDescription + " not added.";
        //        }
        //    }
        //    else
        //    {
        //        lblStatus.Text = "Please enter a username and password to create an account.";
        //    }
        //}
    }
    
}
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
    public partial class CreateLoginPage : System.Web.UI.Page
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        private SqlDataReader dr;
        private int numRowsAffected;

        private string email;
        private string username;
        private string password;
        private string FirstName;
        private string LastName;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            email = txtEmail.Text;
            username = txtUsername.Text;
            password = txtPassword.Text;
            FirstName = txtFirstName.Text;
            LastName = txtLastName.Text;

            if(email.Length > 0 && username.Length > 0 && password.Length > 0)
            {
				conn = new SqlConnection(getConnectionString());
				cmd = new SqlCommand();
				cmd.Connection = conn;
				cmd.CommandType = CommandType.Text;
				cmd.CommandText = "INSERT INTO Customer (CustomerID, Username, Password, FirstName, LastName) VALUES ('"
					+ email + "','" + username + "','" + password + "','" + FirstName + "','" + LastName + "')";
				conn.Open();

				try
				{
					numRowsAffected = cmd.ExecuteNonQuery();
					if (numRowsAffected == 1)
					{
						lblStatus.Text = "Account created, thanks for joining.";
						txtEmail.Text = "";
						txtUsername.Text = "";
						txtPassword.Text = "";
						txtFirstName.Text = "";
						txtLastName.Text = "";
					}
					else
					{
						lblStatus.Text = "Not added.";
					}
				}
				catch (Exception ex)
				{
					lblStatus.Text = "Account not created. There is already an email associated with: " + email;
				}
				conn.Close();
			}
			else
			{
				lblStatus.Text = "Please enter a username, password, and email before trying to create an account.";
			}
		
        }
		private string getConnectionString()
		{
			return ConfigurationManager.ConnectionStrings["RestaurantConnectionString"].ConnectionString;
		}
	}
    
}
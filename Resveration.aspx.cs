using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSC_410_Team_Project_Restaurant
{
    public partial class Resveration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null && Session["Password"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            /*if (!IsPostBack) { 
            ddlTime.Items.Add(new ListItem("Choose A Time: ", "0"));
            ddlTime.Items.Add(new ListItem("9:00 AM - 10:00 AM", "1"));
            ddlTime.Items.Add(new ListItem("10:00 AM - 11:00 AM", "2"));
            ddlTime.Items.Add(new ListItem("11:00 AM - 12:00 PM", "3"));
            ddlTime.Items.Add(new ListItem("12:00 PM - 1:00 PM", "4"));
            ddlTime.Items.Add(new ListItem("1:00 PM - 2:00 PM", "5"));
            ddlTime.Items.Add(new ListItem("2:00 PM - 3:00 PM", "6"));
            ddlTime.Items.Add(new ListItem("3:00 PM - 4:00 PM", "7"));
            ddlTime.Items.Add(new ListItem("4:00 PM - 5:00 PM", "8"));
            ddlTime.Items.Add(new ListItem("5:00 PM - 6:00 PM", "9"));
            ddlTime.Items.Add(new ListItem("6:00 PM - 7:00 PM", "10"));
            ddlTime.Items.Add(new ListItem("7:00 PM - 8:00 PM", "11"));
            ddlTime.Items.Add(new ListItem("8:00 PM - 9:00 PM", "12"));
            }*/
        }
    }
}
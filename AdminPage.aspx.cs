using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSC_410_Team_Project_Restaurant
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblStatus.Text = "Unable to delete. " + e.Exception.Message;
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lblStatus.Text = "Delete failed. Someone else changed or deleted this student.";
            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblStatus.Text = "Unable to delete. " + e.Exception.Message;
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lblStatus.Text = "Delete failed. Someone else changed or deleted this student.";
            }
        }
    }
}
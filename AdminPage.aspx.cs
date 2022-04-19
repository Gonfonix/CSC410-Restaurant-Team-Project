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

      
        protected void btnInsert_Click(object sender, EventArgs e)
        {

            string itemName, itemDescription, itemID, itemPrice;
            int isThisAnInteger;
            itemName = txtItemName.Text;
            itemDescription = txtItemDescription.Text;
            itemID = txtItemID.Text;
            itemPrice = txtItemPrice.Text;

            try
            {
                isThisAnInteger = Convert.ToInt32(itemID);
                isThisAnInteger = Convert.ToInt32(itemPrice);

                try
                {
                    sdsAdmin.InsertParameters["ItemID"].DefaultValue = itemID;
                    sdsAdmin.InsertParameters["ItemDescription"].DefaultValue = itemDescription;
                    sdsAdmin.InsertParameters["ItemPrice"].DefaultValue = itemPrice;
                    sdsAdmin.InsertParameters["ItemName"].DefaultValue = itemName;

                    sdsAdmin.Insert();
                }
                catch (Exception insertException)
                {
                    Exception innerException = insertException.InnerException;
                    lblStatus.Text = "Insert failed: " + innerException.Message;
                }
            }catch (FormatException formatException)
            {
                lblStatus.Text = "You must enter integer values for itemPrice and itemID";
            }



        }
    }
}
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
        string itemName, itemDescription, itemID, itemPrice;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null && Session["Password"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
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
                lblStatus.Text = "Delete failed. Someone else changed or deleted this Menu Item.";
            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                lblStatus.Text = "Unable to update. " + e.Exception.Message;
                e.ExceptionHandled = true;
            }
            else if (e.AffectedRows == 0)
            {
                lblStatus.Text = "Update failed. Someone else changed or deleated this Menu Item.";
            }
        }

      
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int isThisAnInteger;

            itemID = txtItemID.Text;
            itemName = txtItemName.Text;
            itemDescription = txtItemDescription.Text;           
            itemPrice = txtItemPrice.Text;

            if(itemID.Length > 0 && itemName.Length > 0 && itemDescription.Length > 0 && itemPrice.Length > 0)
            {
                sdsAdmin.InsertParameters["ItemID"].DefaultValue = itemID;
                sdsAdmin.InsertParameters["ItemDescription"].DefaultValue = itemDescription;
                sdsAdmin.InsertParameters["ItemPrice"].DefaultValue = itemPrice;
                sdsAdmin.InsertParameters["ItemName"].DefaultValue = itemName;
                
                try
                {
                    isThisAnInteger = Convert.ToInt32(itemID);
                    isThisAnInteger = Convert.ToInt32(itemPrice);

                    try
                    {
                        sdsAdmin.Insert();

                        lblStatus.Text = itemName + " was added successfully.";
                        txtItemID.Text = "";
                        txtItemName.Text = "";
                        txtItemDescription.Text = "";
                        txtItemPrice.Text = "";
                    }
                    catch (Exception ie)
                    {
                        lblStatus.Text = "Insert failed: Duplicate ItemID " + itemID + ".";
                    }
                }
                catch (FormatException fe)
                {
                    lblStatus.Text = "You must enter integer values for ID and Price";
                }
            }
            else
            {
                lblStatus.Text = "Please enter information in every box.";
            }
        }
    }
}
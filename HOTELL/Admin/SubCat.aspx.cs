using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Admin
{
    public partial class SubCat : System.Web.UI.Page
    {
        private static string gcode;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                FillCombo.DropDownListItems(1, cmbmcat, AppTables.MCat_Tab);

        }
        protected void cmbmcat_SelectedIndexChanged(object sender, EventArgs e)
        {
            gcode = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.MCat_Tab, AppFields.MCat_Fld1b, cmbmcat.SelectedItem.Text, "string");
        }
        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (TxtCode.Text != string.Empty && TxtName.Text != string.Empty && gcode != string.Empty)
            {
                SaveRecord.Save_SubCat(gcode, TxtCode.Text, TxtName.Text);
                TxtCode.Text = "";
                TxtName.Text = "";
                cmbmcat.SelectedItem.Text = "";
                lblsuccess.Text = "Record Saved Successfully";
                lbldanger.Text = "";
                FillCombo.DropDownListItems(1, cmbmcat, AppTables.MCat_Tab);
            }
            else
            {
                lbldanger.Text = "Pls select a Category!!!";
            }
        }
        protected void deleteButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Delete_SubCat(TxtCode.Text);
            lblsuccess.Text = "";
            cmbmcat.SelectedItem.Text = "";
            lbldanger.Text = "Record Deleted Successfully";
            TxtCode.Text = "";
            TxtName.Text = "";
            FillCombo.DropDownListItems(1, cmbmcat, AppTables.MCat_Tab);

        }
        protected void TxtCode_TextChanged(object sender, EventArgs e)
        {
            TxtName.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.SubCat_Tab, AppFields.SubCat_Fld1a, TxtCode.Text, "string");
            gcode = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.SubCat_Tab, AppFields.SubCat_Fld1a, TxtCode.Text, "string");
            cmbmcat.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.MCat_Tab, AppFields.MCat_Fld1a, gcode, "string");

            lbldanger.Text = "";
            lblsuccess.Text = "";
        }

    }
}
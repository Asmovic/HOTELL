using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Admin
{
    public partial class PRODUCT_SERVICE : System.Web.UI.Page
    {
        private static string gcode,gscode;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                FillCombo.DropDownListItems(1, cmbmcat, AppTables.MCat_Tab);
            

        }
        protected void cmbmcat_SelectedIndexChanged(object sender, EventArgs e)
        {
            gcode = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.MCat_Tab, AppFields.MCat_Fld1b, cmbmcat.SelectedItem.Text, "string");
          if(gcode != string.Empty)
          {
              FillCombo.DropDownListItems_HasOneKey(2, cmbscat, AppTables.SubCat_Tab, AppFields.MCat_Fld1a, gcode);
          }
        }
        protected void submitButton_Click(object sender, EventArgs e)
        {
            if (TxtCode.Text != string.Empty && TxtName.Text != string.Empty && gcode != string.Empty)
            {
                SaveRecord.Save_ProdServ( TxtCode.Text, TxtName.Text,txtrate.Text,gcode,gscode);
                TxtCode.Text = "";
                TxtName.Text = "";
                cmbmcat.SelectedItem.Text = "";
                cmbscat.SelectedItem.Text = "";
                txtrate.Text = "";
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
            SaveRecord.Delete_ProdServ(TxtCode.Text);
            lblsuccess.Text = "";
            cmbmcat.SelectedItem.Text = "";
            cmbscat.SelectedItem.Text = "";
            lbldanger.Text = "Record Deleted Successfully";
            TxtCode.Text = "";
            TxtName.Text = "";
            txtrate.Text = "";
            FillCombo.DropDownListItems(1, cmbmcat, AppTables.MCat_Tab);

        }
        protected void TxtCode_TextChanged(object sender, EventArgs e)
        {
            txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.PS_Tab, AppFields.PS_Fld1a, TxtCode.Text, "string");
            TxtName.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.PS_Tab, AppFields.PS_Fld1a, TxtCode.Text, "string");
            gcode = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.PS_Tab, AppFields.PS_Fld1a, TxtCode.Text, "string");
            cmbmcat.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.MCat_Tab, AppFields.MCat_Fld1a, gcode, "string");
            FillCombo.DropDownListItems_HasOneKey(2, cmbscat, AppTables.SubCat_Tab, AppFields.MCat_Fld1a, gcode);
            gscode = RetrieveFields.retrieveByFieldIndex_HasOneKey(4, AppTables.PS_Tab, AppFields.PS_Fld1a, TxtCode.Text, "string");
            if (gcode != string.Empty && gscode != string.Empty)
                cmbscat.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasTwoKeys(2, AppTables.SubCat_Tab, AppFields.SubCat_Fld1a, gscode, AppFields.MCat_Fld1a, gcode, "string");
            else
                cmbscat.SelectedIndex = -1;
            lbldanger.Text = "";
            lblsuccess.Text = "";
        }

        protected void cmbscat_SelectedIndexChanged(object sender, EventArgs e)
        {
            gscode = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.SubCat_Tab, AppFields.SubCat_Fld1b, cmbscat.SelectedItem.Text, "string");
        }
    }
}
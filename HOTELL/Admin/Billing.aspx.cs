using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Admin
{
    public partial class Billing : System.Web.UI.Page
    {
        private static string gcode,gbill;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCombo.DropDownListItems(1, cmbcc, AppTables.CC_Tab);
                FillCombo.DropDownListItems(1, cmbps, AppTables.PS_Tab);
            }


        }
        protected void cmbcc_SelectedIndexChanged(object sender, EventArgs e)
        {
            gcode = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.CC_Tab, AppFields.CC_Fld1b, cmbcc.SelectedItem.Text, "string");
           
        }
        protected void submitButton_Click(object sender, EventArgs e)
        {
            if ( gbill != string.Empty && gcode != string.Empty)
            {
                SaveRecord.Save_Billing(gbill,gcode);
                
                cmbcc.SelectedItem.Text = "";
                lblsuccess.Text = "Record Saved Successfully";
                lbldanger.Text = "";
            }
            else
            {
                lbldanger.Text = "Pls select a Cost Center!!!";
            }
            //cmbcc.SelectedIndex = -1;
            //cmbps.SelectedIndex = -1;
            FillCombo.DropDownListItems(1, cmbcc, AppTables.CC_Tab);
            FillCombo.DropDownListItems(1, cmbps, AppTables.PS_Tab);
        }
        protected void deleteButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Delete_Billing(gbill,gcode);
            lblsuccess.Text = "";
            cmbcc.SelectedItem.Text = "";
            lbldanger.Text = "Record Deleted Successfully";
            //cmbcc.SelectedIndex = -1;
            //cmbps.SelectedIndex = -1;
            FillCombo.DropDownListItems(1, cmbcc, AppTables.CC_Tab);
            FillCombo.DropDownListItems(1, cmbps, AppTables.PS_Tab);

        }
        //protected void TxtCode_TextChanged(object sender, EventArgs e)
        //{

        //    //TxtName.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.BL_Tab, AppFields.BL_Fld1a, TxtCode.Text, "string");
        //    gcode = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.BL_Tab, AppFields.BL_Fld1a, TxtCode.Text, "string");
        //    cmbcc.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.CC_Tab, AppFields.CC_Fld1a, gcode, "string");
        //    gbill = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.BL_Tab, AppFields.BL_Fld1a, TxtCode.Text, "string");
        //    cmbps.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.PS_Tab, AppFields.PS_Fld1a, gbill, "string");

        //    lbldanger.Text = "";
        //    lblsuccess.Text = "";
        //}

        protected void cmbps_SelectedIndexChanged(object sender, EventArgs e)
        {
            gbill = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.PS_Tab, AppFields.PS_Fld1b, cmbps.SelectedItem.Text, "string");
        }

    }
}
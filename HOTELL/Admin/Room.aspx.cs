using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Admin
{
    public partial class Room : System.Web.UI.Page
    {
        private static string rt,rs;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            FillCombo.DropDownListItems(1, cmbrt, AppTables.RT_Tab);
        }

        protected void txtrno_TextChanged(object sender, EventArgs e)
        {
            txtrdesc.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
            rt = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
            cmbrt.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.RT_Tab, AppFields.RT_Fld1a, rt, "string");
            txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
           
                rs = RetrieveFields.retrieveByFieldIndex_HasOneKey(4, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
                if (rs == "O")
                {
                    cmbrs.SelectedItem.Text = "OCCUPIED";
                }
                else if (rs == "B")
                {
                    cmbrs.SelectedItem.Text = "BOOKED";
                }
                else if (rs == "V")
                {
                    cmbrs.SelectedItem.Text = "VACANT";
                }
                else if (rs == "R")
                {
                    cmbrs.SelectedItem.Text = "RESERVED";
                }
            
           

        }

        protected void cmbrt_SelectedIndexChanged(object sender, EventArgs e)
        {
            rt = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.RT_Tab, AppFields.RT_Fld1b, cmbrt.SelectedItem.Text, "string");
            txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2,AppTables.RT_Tab,AppFields.RT_Fld1b,cmbrt.SelectedItem.Text, "string");
        }
        protected void submitButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Save_Room(txtrno.Text,txtrdesc.Text,rt,txtrate.Text,rs);
            lblsuccess.Text = "Record Saved Successfully";
            lbldanger.Text = "";
            clear_Control();
            FillCombo.DropDownListItems(1, cmbrt, AppTables.RT_Tab);
            
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Delete_RoomType(txtrno.Text);
            clear_Control();
            lblsuccess.Text = "";
            lbldanger.Text = "Record Deleted Successfully";
        }

        protected void report_Click(object sender, EventArgs e)
        {

        }

        private void clear_Control()
        {
            txtrno.Text = "";
            txtrdesc.Text = "";
            cmbrt.SelectedItem.Text = "";
            cmbrs.SelectedIndex = -1;
            cmbrs.SelectedItem.Text = "";
            
            txtrate.Text = "";
        }

        protected void cmbrs_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmbrs.SelectedItem.Text == "OCCUPIED")
            {
                rs = "O";
            }
            else if (cmbrs.SelectedItem.Text == "BOOKED")
            {
               rs = "B" ;
            }
            else if (cmbrs.SelectedItem.Text == "VACANT")
            {
               rs = "V" ;
            }
            else if (cmbrs.SelectedItem.Text == "RESERVED")
            {
                rs = "R";
            }
        }
    }
}
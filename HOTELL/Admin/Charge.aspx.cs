using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Admin
{
    public partial class Charge : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TxtCode_TextChanged(object sender, EventArgs e)
        {
            TxtName.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.C_Tab, AppFields.C_Fld1a, TxtCode.Text, "string");
            txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.C_Tab, AppFields.C_Fld1a, TxtCode.Text, "string");
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Save_Charge(TxtCode.Text, TxtName.Text, txtrate.Text);
            lblsuccess.Text = "Record Saved Successfully";
            lbldanger.Text = "";
            clear_Control();
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Delete_Charge(TxtCode.Text);
            clear_Control();
            lblsuccess.Text = "";
            lbldanger.Text = "Record Deleted Successfully";
        }

        protected void report_Click(object sender, EventArgs e)
        {

        }

        private void clear_Control()
        {
            TxtCode.Text = "";
            TxtName.Text = "";
            txtrate.Text = "";
        }
    }
}
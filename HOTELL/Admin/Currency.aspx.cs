using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Admin
{
    public partial class Currency : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SaveRecord.Retrieve_CurrDet(gridview1);
        }
        protected void TxtCode_TextChanged(object sender, EventArgs e)
        {
            TxtName.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.CUR_Tab, AppFields.CUR_Fld1a, TxtCode.Text, "string");
            txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CUR_Tab, AppFields.CUR_Fld1a, TxtCode.Text, "string");
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Save_Currency(TxtCode.Text, TxtName.Text, txtrate.Text);
            lblsuccess.Text = "Record Saved Successfully";
            lbldanger.Text = "";
            clear_Control();
            SaveRecord.Retrieve_CurrDet(gridview1);
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Delete_Currency(TxtCode.Text);
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

        protected void gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {
           // var msno = gridview1.SelectedRow.Cells[1].Text;
            var ccode = gridview1.SelectedRow.Cells[1].Text;
            TxtCode.Text = ccode;
            TxtName.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.CUR_Tab, AppFields.CUR_Fld1a, ccode, "string");
            txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CUR_Tab, AppFields.CUR_Fld1a, ccode, "string");

           
          
        }
    }
}
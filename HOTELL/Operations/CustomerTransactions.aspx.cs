using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Operations
{
    public partial class CustomerTransactions : System.Web.UI.Page
    {
        private static string gcode, gbill,dbt,crt,cd,flag;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCombo.DropDownListItems(1, cmbcc, AppTables.CC_Tab);
                FillCombo.DropDownListItems(1, cmbps, AppTables.PS_Tab);
                txttransd.Text = DateTime.Now.ToString("d-M-yyyy");
        
            }
           
        }

        protected void txtrno_TextChanged(object sender, EventArgs e)
        {
            gscode.Text = RetrieveFields.retrieveByFieldIndex_HasTwoKeys(0, AppTables.CREG_Tab, AppFields.CREG_Fld1b, txtrno.Text, AppFields.CREG_Fld1c, "O", "string");
            Image1.ImageUrl = RetrieveFields.retrieveByFieldIndex_HasOneKey(12, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");

            string sur = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            string on = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            txtname.Text = sur + " " + on;
      //      txttransd.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(11,AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "date");
      //txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(4, AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //txtqty.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(5,AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //txtntotal.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(6, AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //flag = RetrieveFields.retrieveByFieldIndex_HasOneKey(7, AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //      if(flag == "Y")
      //      {
      //          txtyes.Checked = true;
      //          txtno.Checked = false;
      //          lblcr.Visible = true;
      //          txtcr.Visible = true;
      //          lblcd.Visible = true;
      //          cmbcd.Visible = true;
      //      }
      //      if (flag == "N")
      //      {
      //          txtyes.Checked =false;
      //          txtno.Checked = true;
      //          lblcr.Visible = false;
      //          txtcr.Visible = false;
      //          lblcd.Visible = false;
      //          cmbcd.Visible = false;
      //      }

      //  cd = RetrieveFields.retrieveByFieldIndex_HasOneKey(8, AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //      if(cd != string.Empty)
      //      {
      //          cmbcd.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.C_Tab, AppFields.C_Fld1a, cd, "string");
      //      }
       

      //  txtcr.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(9, AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //  txtgtotal.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(10,AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");

      //gcode = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //cmbcc.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.CC_Tab, AppFields.CC_Fld1a, gcode, "string");
      //gbill = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //cmbps.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.PS_Tab, AppFields.PS_Fld1a, gbill, "string");
      //cmbpm.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(12,AppTables.CustTrans_Tab, AppFields.CustTrans_Fld1a, txtrno.Text, "string");
      //if (cmbpm.SelectedItem.Text == "CREDIT")
      //{
      //    dbt = int.Parse(txtgtotal.Text).ToString();
      //    crt = (0).ToString();
      //}
      //else if (cmbpm.SelectedItem.Text == "CASH")
      //{
      //    dbt = int.Parse(txtgtotal.Text).ToString();
      //    crt = int.Parse(txtgtotal.Text).ToString();
      //}
        }

        protected void cmbcc_SelectedIndexChanged(object sender, EventArgs e)
        {
            gcode = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.CC_Tab, AppFields.CC_Fld1b, cmbcc.SelectedItem.Text, "string");

            if (gcode != string.Empty)
            {
                FillCombo.DropDownListItems_Services(0, cmbps, AppTables.BL_Tab, AppFields.CC_Fld1a, gcode);
            }
        }

        protected void cmbps_SelectedIndexChanged(object sender, EventArgs e)
        {
            gbill = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.PS_Tab, AppFields.PS_Fld1b, cmbps.SelectedItem.Text, "string");
            txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.PS_Tab, AppFields.PS_Fld1a, gbill, "string");
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
           // TimeSpan dt = DateTime.Today.TimeOfDay;
            //DateTime txtdate = DateTime.Parse(txttransd.Text);
            //DateTime txtdatee = DateTime.Parse(txttransd.Text);
        //    txttransd.Text = string.Format("{0:HH:mm:ss tt}", txttransd.Text);
          //  DateTime hj = DateTime.Parse(txttransd.Text);
            //string time = DateTime.Now.ToString("HH:mm:ss", System.Globalization.DateTimeFormatInfo.InvariantInfo);

            string time = DateTime.Now.GetDateTimeFormats('t')[0];
        
            
         //   string mytdate = txtdate.ToString("dd/MM/yyyy hh:mm tt",  System.Globalization.CultureInfo.InvariantCulture);
 
            SaveRecord.Save_CustTrans(txtrno.Text, gscode.Text,gcode, gbill, txtrate.Text, txtqty.Text,txtntotal.Text,flag,cd,txtcr.Text,txtgtotal.Text, txttransd.Text,cmbpm.SelectedItem.Text,dbt,crt,time);
            lblsuccess.Text = "Record Saved Successfully";
            lbldanger.Text = "";
            clear_Control();
            FillCombo.DropDownListItems(1, cmbcc, AppTables.CC_Tab);
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {

            SaveRecord.Delete_CustTrans(txtrno.Text,gbill,txttransd.Text);
            clear_Control();
            lblsuccess.Text = "";
            lbldanger.Text = "Record Deleted Successfully";
            FillCombo.DropDownListItems(1, cmbcc, AppTables.CC_Tab);
        }
        private void clear_Control()
        {
            gscode.Text = "";
            txtname.Text = "";
            cmbcc.SelectedItem.Text = "";
            cmbpm.SelectedIndex = -1;
            cmbps.SelectedItem.Text = "";
            txtrate.Text = "";
            txtrno.Text = "";
            txttransd.Text = "";
            txtntotal.Text = "";
            txtqty.Text = "";
            Image1.ImageUrl = "";
            

        }

        protected void txtqty_TextChanged(object sender, EventArgs e)
        {
            txtntotal.Text = (int.Parse(txtrate.Text) * int.Parse(txtqty.Text)).ToString();
         
        }

        protected void cmbpm_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(cmbpm.SelectedItem.Text == "CREDIT")
            {
                dbt = int.Parse(txtgtotal.Text).ToString();
                crt = (0).ToString();
            }
           else if (cmbpm.SelectedItem.Text == "CASH")
            {
                dbt = int.Parse(txtgtotal.Text).ToString();
                crt = int.Parse(txtgtotal.Text).ToString();
            }
        }

        protected void txtyes_CheckedChanged(object sender, EventArgs e)
        {
            if(txtyes.Checked == true)
            {
                lblcr.Visible = true;
                txtcr.Visible = true;
                txtno.Checked = false;
                flag = "Y";
                lblcd.Visible = true;
                cmbcd.Visible = true;
                FillCombo.DropDownListItems(1,cmbcd,AppTables.C_Tab);

              
            }
        }

        protected void txtno_CheckedChanged(object sender, EventArgs e)
        {
            txtyes.Checked = false;
            flag = "N";
            lblcr.Visible = false;
            txtcr.Visible = false;
            lblcd.Visible = false;
            cmbcd.Visible = false;
            txtgtotal.Text = txtntotal.Text;
            txtcr.Text = (0).ToString();
        }

        protected void cmbcd_SelectedIndexChanged(object sender, EventArgs e)
        {
            cd = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.C_Tab, AppFields.C_Fld1b, cmbcd.SelectedItem.Text, "string");
            txtcr.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.C_Tab, AppFields.C_Fld1b, cmbcd.SelectedItem.Text, "string");
            txtgtotal.Text = (int.Parse(txtntotal.Text) + int.Parse(txtcr.Text)).ToString();
        }



    }
}
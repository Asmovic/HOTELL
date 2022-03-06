using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Operations
{
    public partial class RoomReservation : System.Web.UI.Page
    {
        private static string rt,pst;
        protected void Page_Load(object sender, EventArgs e)
        {

            
                    SaveRecord.Retrieve_Room( gridview2);
            

        //    for (int i = 0; i <= 4;i++ )
        //    { 
        //        if (AppGlobal.mroom[i] != null)
        //        {

        //            SaveRecord.Retrieve_Room(AppGlobal.mroom[i], gridview2);
        //        }
        //}
            //string [] avail = new string[4];
            //avail[0] = "001";
            //avail[1] = "002";
            //avail[2] = "003";
            //avail[3] = "004";
            
             //txtrno.Text = Request.QueryString["mavail"];
         
           


            //Response.Redirect("~/Models/COOP_REP.cs?gridview=" + gridview2);

                    
            txtrdate.Text = DateTime.Now.ToShortDateString();
            txtcomd.Text = Request.QueryString["txtcid"];
            txtendd.Text = Request.QueryString["txtcod"];
            txtnod.Text = Request.QueryString["txtnod"];
        }

        protected void txtrno_TextChanged(object sender, EventArgs e)
        {

            rt = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
            txtrtype.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.RT_Tab, AppFields.RT_Fld1a, rt, "string");
            txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
            //pst = RetrieveFields.retrieveByFieldIndex_HasOneKey(10, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");

            //if (pst != "" && pst == "Y")
            //{
            //    txtyes.Checked = true;
            //    txtno.Checked = false;
            //    lblamtd.Visible = true;
            //    txtamtd.Visible = true;
            //}

            //else if (pst != "" && pst == "N")
            //{
            //    txtno.Checked = true;
            //    txtyes.Checked = false;
            //    lblamtd.Visible = false;
            //    txtamtd.Visible = false;
            //}

            //else
            //{
            //    txtyes.Checked = false;
            //    txtno.Checked = true;
            //}

            //txtname.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");
            //string df = RetrieveFields.retrieveByFieldIndex_HasOneKey(4, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");
            //DateTime ls = COOP_REP.myconvdate(df);
            //txtrdate.Text = ls.ToShortDateString();
            //txtemail.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(5, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");
            //txttell.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(6, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");
            //string dj = RetrieveFields.retrieveByFieldIndex_HasOneKey(7, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");
            //DateTime dm = COOP_REP.myconvdate(dj);
            //txtcomd.Text = dm.ToShortDateString();
            //txtnod.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(8, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");
            //string op = RetrieveFields.retrieveByFieldIndex_HasOneKey(9, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");
            //DateTime zn = COOP_REP.myconvdate(op);
            //txtendd.Text = zn.ToShortDateString();

            //txtamtd.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(11, AppTables.RmRes_Tab, AppFields.RmRes_Fld1a, txtrno.Text, "string");

        }

        protected void txtnod_TextChanged(object sender, EventArgs e)
        {
            DateTime dd = DateTime.Parse(txtcomd.Text);
            txtendd.Text = dd.AddDays(int.Parse(txtnod.Text)).ToShortDateString();
        }

        protected void txtyes_CheckedChanged(object sender, EventArgs e)
        {
            if (txtyes.Checked == true)
            {
                txtno.Checked = false;
                pst = "Y";
                lblamtd.Visible = true;
                txtamtd.Visible = true;
                em.Visible = true;
            }
        }

        protected void txtno_CheckedChanged(object sender, EventArgs e)
        {
            if (txtno.Checked == true)
            {
                lblamtd.Visible = false;
                txtamtd.Visible = false;
                em.Visible = false;
                txtyes.Checked = false;
                pst = "N";

            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            if(TC.Checked == true)
            {
                if(txtamtd.Text == string.Empty)
                {
                    txtamtd.Text = "0";
                }
                SaveRecord.Save_RmRes(txtrno.Text, rt, txtrate.Text, txtname.Text, txtrdate.Text, txtemail.Text, txttell.Text, txtcomd.Text, txtnod.Text, txtendd.Text, pst, txtamtd.Text);
                lblsuccess.Text = "Record Saved Successfully";
                lbldanger.Text = "";
                clear_Control();

                COOP_REP.available_Rooms(AppGlobal.ga, AppGlobal.gb, AppGlobal.gc);
                SaveRecord.Retrieve_Room(gridview2);

                Response.Write("<script>alert('Thanks for Booking with Us!!!')</script>");
            }
            else
            {
                Response.Write("<script>alert('pls check the terms and condition button')</script>");
            }
           
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Delete_RmRes(txtrno.Text);
            clear_Control();
            lblsuccess.Text = "";
            lbldanger.Text = "Record Deleted Successfully";
        }
         private void clear_Control()
        {
            txtrdate.Text = "";
            txtcomd.Text = "";
            txtendd.Text = "";
            txttell.Text = "";
            txtemail.Text = "";
            txtname.Text = "";
            txtnod.Text = "";
            txtrtype.Text = "";
            txtrate.Text = "";
            txtrno.Text = "";
            txtyes.Checked = false;
            txtno.Checked = false;
            txtamtd.Text = "";
            TC.Checked = false;
           
        }

         protected void gridview2_SelectedIndexChanged(object sender, EventArgs e)
         {
             var msno = gridview2.SelectedRow.Cells[1].Text;
    
             txtrno.Text = msno;

             rt = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
             txtrtype.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.RT_Tab, AppFields.RT_Fld1a, rt, "string");
             txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
         }
    }
}
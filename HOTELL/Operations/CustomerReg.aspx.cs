using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Operations
{
    public partial class CustomerReg : System.Web.UI.Page
    {
        private static string gen,filepath,rt,pst,today;
        private static int rek;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {


                //string now = DateTime.Now.ToString("d-M-yyyy");
                //string now2 = DateTime.Now.ToString("HH:mm:ss");
                //string today = DateTime.Today.ToString("dd-MM-yyyy");
                //DateTime n = DateTime.Now;
                //string tes = n.ToShortDateString();
                //string date = n.GetDateTimeFormats('d')[0];
                //string time = n.GetDateTimeFormats('t')[0];

                txtno.Checked = true;
                Chk1.Checked = false;
                Chk2.Checked = false;

                gscode.Enabled = false;
               
             
                txtnod.Enabled = false;
                cmbtitle.Enabled = false;
                txtsurn.Enabled = false;
                txton.Enabled = false;
                txtmale.Enabled = false;
                txtfemale.Enabled = false;
                txtdob.Enabled = false;
                txttell.Enabled = false;
                txtemail.Enabled = false;
                txtbill.Enabled = false;
                txtbalance.Enabled = false;
                txtamtd.Enabled = false;
                txtyes.Enabled = false;
                txtno.Enabled = false;
                cmbnat.Enabled = false;
                cmbstate.Enabled = false;
                txthadd.Enabled = false;
                txtoadd.Enabled = false;

            
            }
        }

        protected void gscode_TextChanged(object sender, EventArgs e)
        {
            
            
            gen = RetrieveFields.retrieveByFieldIndex_HasOneKey(4, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");


            if (gen != "" && gen == "M")
                txtmale.Checked = true;
            else if (gen != "" && gen == "F")
                txtfemale.Checked = true;

            //txtamtd.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(20, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");
            //txtbill.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(21, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");
            //txtbalance.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(22, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");

            filepath = RetrieveFields.retrieveByFieldIndex_HasOneKey(12, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            Image1.ImageUrl = filepath;
            //txtrno.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");
            //rt = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");
            //txtrtype.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.RT_Tab, AppFields.RT_Fld1a, rt, "string");
            //txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");
            cmbtitle.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            txtsurn.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            txton.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            txttell.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(9, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            txtemail.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(8, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            txthadd.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(6, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            txtoadd.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(7, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            string df = RetrieveFields.retrieveByFieldIndex_HasOneKey(5, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            DateTime ls = COOP_REP.myconvdate(df);
            txtdob.Text = ls.ToShortDateString();
            //string dj = RetrieveFields.retrieveByFieldIndex_HasOneKey(13, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");
            //DateTime dm = COOP_REP.myconvdate(dj);
            //txtchkid.Text = dm.ToShortDateString();
            //txtnod.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(14, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");
            //string op = RetrieveFields.retrieveByFieldIndex_HasOneKey(15, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");
            //DateTime zn = COOP_REP.myconvdate(op);
            //txtchkod.Text = zn.ToShortDateString();
            cmbnat.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(10, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");
            cmbstate.SelectedItem.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(11, AppTables.CUST_Tab, AppFields.CUST_Fld1a, gscode.Text, "string");

           //pst = RetrieveFields.retrieveByFieldIndex_HasOneKey(19, AppTables.CREG_Tab, AppFields.CREG_Fld1a, gscode.Text, "string");

           //if (pst != "" && pst == "Y")
           //{
           //    txtyes.Checked = true;
           //    txtno.Checked = false;
           //    lblamtd.Visible = true;
           //    txtamtd.Visible = true;
           //}

           //else if (pst != "" && pst == "N")
           //{
           //    txtno.Checked = false;
           //    txtyes.Checked = false;
           //    lblamtd.Visible = false;
           //    txtamtd.Visible = false;
           //}

           //else
           //{
           //    txtyes.Checked = false;
           //    txtno.Checked = true;
           //}
            
        
        }

        protected void txtmale_CheckedChanged(object sender, EventArgs e)
        {
            if (txtmale.Checked == true)
            {
                txtfemale.Checked = false;
                gen = "M";
            }
        }

        protected void txtfemale_CheckedChanged(object sender, EventArgs e)
        {
            if (txtfemale.Checked == true)
            {
                txtmale.Checked = false;
                gen = "F";
            }
        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            DateTime n = DateTime.Now;
            string time = n.GetDateTimeFormats('t')[0];

            if (Chk1.Checked == true)
            {



                SaveRecord.Save_Customerz(gscode.Text, cmbtitle.SelectedItem.Text, txtsurn.Text, txton.Text, gen, txtdob.Text, txthadd.Text, txtoadd.Text, txtemail.Text, txttell.Text, cmbnat.SelectedItem.Text, cmbstate.SelectedItem.Text,filepath);

                SaveRecord.Save_CusReg(gscode.Text, txtrno.Text, rt, txtrate.Text, cmbtitle.SelectedItem.Text, txtsurn.Text, txton.Text, gen, txtdob.Text, txthadd.Text, txtoadd.Text, txtemail.Text, txttell.Text, txtchkid.Text, txtnod.Text, txtchkod.Text, cmbnat.SelectedItem.Text, cmbstate.SelectedItem.Text, filepath, pst, txtamtd.Text, txtbill.Text, txtbalance.Text);

                SaveRecord.Save_RegTrans(txtrno.Text, gscode.Text, "FD", "ACC", txtrate.Text, txtnod.Text, txtbill.Text, txtbill.Text, txtchkid.Text, "CASH", txtbill.Text,
                    txtamtd.Text, "A", time);

                lblsuccess.Text = "Record Saved Successfully";
                lbldanger.Text = "";
                clear_Control();
                txtno.Checked = false;
            }

            if (Chk2.Checked == true)
            {
                SaveRecord.Save_CusReg(gscode.Text, txtrno.Text, rt, txtrate.Text, cmbtitle.SelectedItem.Text, txtsurn.Text, txton.Text, gen, txtdob.Text, txthadd.Text, txtoadd.Text, txtemail.Text, txttell.Text, txtchkid.Text, txtnod.Text, txtchkod.Text, cmbnat.SelectedItem.Text, cmbstate.SelectedItem.Text, filepath, pst, txtamtd.Text, txtbill.Text, txtbalance.Text);

                SaveRecord.Save_RegTrans(txtrno.Text, gscode.Text, "FD", "ACC", txtrate.Text, txtnod.Text, txtbill.Text, txtbill.Text, txtchkid.Text, "CASH", txtbill.Text, txtamtd.Text, "A", time);
    

                lblsuccess.Text = "Record Saved Successfully";
                lbldanger.Text = "";
                clear_Control();
                txtno.Checked = false;
            }




        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            SaveRecord.Delete_CusReg(gscode.Text);
          //  SaveRecord.Delete_Customerz(gscode.Text);
            clear_Control();
            lblsuccess.Text = "";
            lbldanger.Text = "Record Deleted Successfully";
        }

        protected void report_Click(object sender, EventArgs e)
        {

        }
        private void clear_Control()
        {
            gscode.Text = "";
            cmbtitle.SelectedIndex = -1;
            txtsurn.Text = "";
            txton.Text = "";
            txtmale.Checked = false;
            txtfemale.Checked = false;
            Chk2.Checked = false;
            Chk1.Checked = false;
            txttell.Text = "";
            txtemail.Text = "";
            txthadd.Text = "";
            txtoadd.Text = "";
            txtdob.Text = "";
            txtnod.Text = "";
            txtrtype.Text = "";
            txtrate.Text = "";
            txtchkod.Text = "";
            txtchkid.Text = "";
            txtrno.Text = "";
            txtyes.Checked = false;
            txtno.Checked = false;
            txtamtd.Text = "";
            txtamtd.Visible = false;
            lblamtd.Visible = false;
            cmbnat.SelectedIndex = -1;
            cmbstate.SelectedIndex = -1;
            Image1.ImageUrl = "";
            txtbalance.Text = "";
            txtbill.Text = "";


        }
        protected void preview_Click(object sender, EventArgs e)
        {
            Boolean fileOK = false;
            if (fileupload.HasFile)
            {
                String fileExtension = System.IO.Path.GetExtension(fileupload.FileName).ToLower();
                String[] allowedExtensions = { ".gif", ".png", ".jpeg", ".jpg" };
                for (int i = 0; i < allowedExtensions.Length; i++)
                {
                    if (fileExtension == allowedExtensions[i])
                    {
                        fileOK = true;
                    }
                }
            }
            if (fileOK)
            {
                try
                {
                    var strFileName = "";
                    if (fileupload.FileName != null)
                    {
                        strFileName = fileupload.FileName;
                        filepath = "~/images/" + strFileName;
                        if (System.IO.File.Exists(Server.MapPath(filepath)) == true)
                        {
                            System.IO.File.Delete(Server.MapPath(filepath));
                            //System.IO.File.
                            fileupload.SaveAs(Server.MapPath(filepath));
                            Image1.ImageUrl = filepath;
                        }
                        else
                        {
                            fileupload.SaveAs(Server.MapPath(filepath));
                            Image1.ImageUrl = filepath;
                        }
                    }
                }
                catch (Exception ex)
                {
                    lbldanger.Text = ex.Message;
                }
            }
        }

        protected void txtrno_TextChanged(object sender, EventArgs e)
        {
            string rstatus = RetrieveFields.retrieveByFieldIndex_HasOneKey(4, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
            if (rstatus == "O")
            {
                Response.Write("<script>alert('pls the room "+ txtrno.Text +" selected is Occupied')</script>");

                txtrno.Text = "";
            }
            else
            {
                rt = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
                txtrtype.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(1, AppTables.RT_Tab, AppFields.RT_Fld1a, rt, "string");
                txtrate.Text = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.RM_Tab, AppFields.RM_Fld1a, txtrno.Text, "string");
            }
            

            

           
        }

        protected void txtnod_TextChanged(object sender, EventArgs e)
        {
            DateTime dd = DateTime.Parse(txtchkid.Text);
         //   txtchkod.Text = (int.Parse((dd.Day).ToString()) + int.Parse(txtnod.Text)).ToString();
            txtchkod.Text = dd.AddDays(int.Parse(txtnod.Text)).ToShortDateString();

            txtbill.Text = (int.Parse(txtrate.Text) * int.Parse(txtnod.Text)).ToString();
            txtbalance.Text = (int.Parse(txtrate.Text) * int.Parse(txtnod.Text)).ToString();

            string res = COOP_REP.roomavl(txtrno.Text, txtchkid.Text, txtchkod.Text);

            if(res == "YES")
            {
                Response.Write("<script>alert('Sorry!!  room " + txtrno.Text + " is reserved for the specified Date.')</script>");

                txtnod.Text = "";
                txtchkid.Text = "";
                txtchkod.Text = "";
                txtbill.Text = "";
                txtbalance.Text = "";

            }
        }


        protected void txtyes_CheckedChanged(object sender, EventArgs e)
        {
            if (txtyes.Checked == true)
            {
                txtno.Checked = false;
                pst = "Y";
                lblamtd.Visible = true;
                txtamtd.Visible = true;
            }

        }
        protected void txtno_CheckedChanged(object sender, EventArgs e)
        {
            if (txtno.Checked == true)
            {
                lblamtd.Visible = false;
                txtamtd.Visible = false;
                txtyes.Checked = false;
                pst = "N";

            }
        }

        protected void Chk1_CheckedChanged(object sender, EventArgs e)
        {
            if(Chk1.Checked == true)
            {
                Chk2.Checked = false;

                txtnod.Enabled = true;
                cmbtitle.Enabled = true;
                txtsurn.Enabled = true;
                txton.Enabled = true;
                txtmale.Enabled = true;
                txtfemale.Enabled = true;
                txtdob.Enabled = true;
                txttell.Enabled = true;
                txtemail.Enabled = true;
                txtbill.Enabled = true;
                txtbalance.Enabled = true;
                txtamtd.Enabled = true;
                txtyes.Enabled = true;
                txtno.Enabled = true;
                cmbnat.Enabled = true;
                cmbstate.Enabled = true;
                txthadd.Enabled = true;
                txtoadd.Enabled = true;

                 rek = COOP_REP.count();
                 today = DateTime.Now.Year.ToString();
                
                if((rek.ToString()).Length == 1)
                {
                    gscode.Text = today + "/000" + rek.ToString();
                }
                else if ((rek.ToString()).Length == 2)
                {
                    gscode.Text = today + "/00" + rek.ToString();
                }
                else if ((rek.ToString()).Length == 3)
                {
                    gscode.Text = today + "/0" + rek.ToString();
                }
                else if ((rek.ToString()).Length == 4)
                {
                    gscode.Text = today + "/" + rek.ToString();
                }

                
                
                gscode.Enabled = false;
            }
        }

        protected void Chk2_CheckedChanged(object sender, EventArgs e)
        {
            if (Chk2.Checked == true)
            {
                gscode.Enabled = true;
              
                
                txtnod.Enabled = true;
                cmbtitle.Enabled = true;
                txtsurn.Enabled = true;
                txton.Enabled = true;
                txtmale.Enabled = true;
                txtfemale.Enabled = true;
                txtdob.Enabled = true;
                txttell.Enabled = true;
                txtemail.Enabled = true;
                txtbill.Enabled = true;
                txtbalance.Enabled = true;
                txtamtd.Enabled = true;
                txtyes.Enabled = true;
                txtno.Enabled = true;
                cmbnat.Enabled = true;
                cmbstate.Enabled = true;
                txthadd.Enabled = true;
                txtoadd.Enabled = true;

                Chk1.Checked = false;
                gscode.Enabled = true;
                gscode.Text = "";
            }
        }

        protected void txtamtd_TextChanged(object sender, EventArgs e)
        {
            txtbalance.Text = (int.Parse(txtbill.Text) - int.Parse(txtamtd.Text)).ToString();
        }


        protected void summary_Click(object sender, EventArgs e)
        {

        }

    }
}
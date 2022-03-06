using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HOTELL.Operations
{
    public partial class HistorySearch : System.Web.UI.Page
    {
        private static string room_status;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtroomno_TextChanged(object sender, EventArgs e)
        {

            string mn = RetrieveFields.retrieveByFieldIndex_HasTwoKeys(0, AppTables.CREG_Tab, AppFields.CREG_Fld1b, txtroomno.Text, AppFields.CREG_Fld1c, "O", "string");
            

            string sur = RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CUST_Tab, AppFields.CUST_Fld1a, mn, "string");
            string on = RetrieveFields.retrieveByFieldIndex_HasOneKey(3, AppTables.CUST_Tab, AppFields.CUST_Fld1a, mn, "string");
            lblname.Text = sur + " " + on;

            Image2.ImageUrl = RetrieveFields.retrieveByFieldIndex_HasOneKey(12, AppTables.CUST_Tab, AppFields.CUST_Fld1a, mn, "string");
 
            lblrn.Text = txtroomno.Text;
            DateTime fx = HR_Report.myconvdate(RetrieveFields.retrieveByFieldIndex_HasTwoKeys(13, AppTables.CREG_Tab, AppFields.CREG_Fld1b, txtroomno.Text, AppFields.CREG_Fld1c, "O", "string"));
            lblcid.Text = fx.ToShortDateString();
          //  DateTime ds = HR_Report.myconvdate(txtto.Text);
            lblrd.Text = DateTime.Now.ToShortDateString();
            SaveRecord.order(txtroomno.Text);
           SaveRecord.BindData(ListView2);
           double crd = 0.00;
           double dbt = 0.00;
           double tot = 0.00;

            crd =  double.Parse( SaveRecord.Sum_Creditt(txtroomno.Text));
            dbt = double.Parse(SaveRecord.Sum_Debitt(txtroomno.Text));
            tot = crd - dbt;
           total.Text = "Your Balance is " + Math.Abs( tot);
          
        }

        protected void ListView2_SelectedIndexChanged(object sender, EventArgs e) 
        {

        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {
            
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {

                sqlcmd.Connection = objConn;

                sqlcmd.CommandText = "insert into " + AppTables.CTH_Tab + " select * from " + AppTables.CustTrans_Tab + " where " + AppFields.RM_Fld1a + " ='" + txtroomno.Text + "'";
                sqlcmd.ExecuteNonQuery();

                room_status = ("V").ToString();
              
                
                sqlcmd.CommandText = "update "+ AppTables.RM_Tab +" set "+ AppFields.RS +" ='"+room_status+"' where "+ AppFields.RM_Fld1a +" ='" + txtroomno.Text + "'";
                sqlcmd.ExecuteNonQuery();

                sqlcmd.CommandText = "update " + AppTables.CREG_Tab + " set " + AppFields.CREG_Fld1c + " ='" + room_status + "' where " + AppFields.RM_Fld1a + " ='" + txtroomno.Text + "'";
                sqlcmd.ExecuteNonQuery();


                sqlcmd.CommandText = "update " + AppTables.CustTrans_Tab + " set " + AppFields.CREG_Fld1c + " ='" + room_status + "' where " + AppFields.RM_Fld1a + " ='" + txtroomno.Text + "'";
                sqlcmd.ExecuteNonQuery();

            }
        }
    
        }
       
    }
}
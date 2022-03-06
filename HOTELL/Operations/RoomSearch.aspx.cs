using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace HOTELL.Operations
{
    public partial class RoomSearch : System.Web.UI.Page
    {
        private static string start,end,grt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                FillCombo.DropDownListItems(1, cmbrt, AppTables.RT_Tab);
            }
        }

        protected void txtstd_TextChanged(object sender, EventArgs e)
        {
             
            //start = (COOP_REP.myconvdate(txtstd.Text)).ToShortDateString();
            start = DateTime.ParseExact(txtstd.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();
             //cmbrt.Visible = false;
           //  lblstd.Visible = false;
           
        }

        protected void txtendd_TextChanged(object sender, EventArgs e)
        {
            // end = (COOP_REP.myconvdate(txtendd.Text)).ToShortDateString();
            end = DateTime.ParseExact(txtendd.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();
            lblrt.Visible = false;
            cmbrt.Visible = false;
            lblstd.Visible = false;
            txtstd.Visible = false;
            lblendd.Visible = false;
            txtendd.Visible = false;
            lbl.Text =  cmbrt.SelectedItem.Text + " available between " + DateTime.Parse( start).ToShortDateString() + " and " + DateTime.Parse(end).ToShortDateString() + " is " +  (available(grt, start, end)).ToString();
        }
           // BindData(ListView1, grt, start,end);
            
    
        protected void cmbrt_SelectedIndexChanged(object sender, EventArgs e)
        {
            grt = RetrieveFields.retrieveByFieldIndex_HasOneKey(0, AppTables.RT_Tab, AppFields.RT_Fld1b, cmbrt.SelectedItem.Text, "string");
        }

        public static void BindData(ListView ListView1, string opt, string std, string endd)
        {
           
               
                   
                    //sqlcmd.CommandText = "select count (*) as mycount from Rooms_Reservation a where b.Type_Description = '" + opt + "' and a.Commencemet_Date >=  '" + std + "' and a.End_Date <='" + endd + "'";
                    //SqlDataReader dr = new SqlDataReader();
                    //SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                    //myadapter.SelectCommand = sqlcmd;
                    //DataTable dt = new DataTable();
                    //myadapter.Fill(dt);
                    //ListView1.DataSource = dt;
                    //ListView1.DataBind();

        }
         
        public static int available (string opt, string std, string endd)
        {
            int reserved=0, total_room=0, total_available=0;
            using (SqlConnection objConn = DBConnection.Connect())
            {
                DateTime mydate1 = DateTime.Parse(std);
                DateTime mydate2 = DateTime.Parse(endd);
                using (SqlCommand sqlcmd = new SqlCommand())
                {
                    SqlParameter[] objParam = new SqlParameter[2];
                    objParam[0] = new SqlParameter("@std", std);
                    objParam[0].DbType = DbType.DateTime;
                    objParam[0].Direction = ParameterDirection.Input;

                    objParam[1] = new SqlParameter("@endd", endd);
                    objParam[1].DbType = DbType.DateTime;
                    objParam[1].Direction = ParameterDirection.Input;

               //     or ( ((@std and @endd) >= a.Commencemet_Date) and ((@std and @endd) <= a.End_Date)) 

                    sqlcmd.Connection = objConn;
                    sqlcmd.Parameters.AddRange(objParam);
                    sqlcmd.CommandText = "select count (*) as mycount from Rooms_Reservation a where a.Room_Type = '" + opt + "' and (a.Commencemet_Date between @std and @endd)  or (a.End_Date between @std and @endd)  ";
                   using ( SqlDataReader dr = sqlcmd.ExecuteReader())
                   { 
                    if (dr.Read())
                    {
                        if (dr["mycount"].ToString() != string.Empty)
                            reserved = int.Parse(dr["mycount"].ToString());
                        else
                            reserved = 0;

                    }
                   }

                   sqlcmd.CommandText = "select count (*) as myct from Room a where a.Room_Type_Code = '" + opt + "' ";
                    using (SqlDataReader ds = sqlcmd.ExecuteReader())
                    {

                                        if (ds.Read())
                    {
                        if (ds["myct"].ToString() != string.Empty)
                            total_room = int.Parse(ds["myct"].ToString());
                        else
                            total_room = 0;

                    }

                    }

                    total_available = total_room - reserved;
                    
                }

            }
            
            return total_available;

            }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}
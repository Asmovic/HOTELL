using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
/// <summary>
/// Summary description for HR_Report
/// </summary>
public class COOP_REP
{
    private static string stid;
	public COOP_REP()
	{
		//
		// TODO: Add constructor logic here
		//

         
	}




    public static string Retrieve_Detailt(string myrefno, GridView gridview2)
    {
        string myno = "";
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {

                sqlcmd.Connection = objConn;
                //sqlcmd.CommandText = "select a.Sno as [S/No],a.staff_id as [Staff No],b.surname as [Surname],b.first_name as [First Name],a.Original_Loc as [ Original Location], a.Original_Dept as[Original Dept],a.Original_Section as [Original Section],a.Dest_Loc as [Dest Loc], a.Dest_Dept as [Dest Dept], a.Dest_Sec as[Dest Sec], a.Trans_Date as [Trans Date], a.Trans_Reason as [TransReason] from Transfer_Roaster_Details_Temp a,Staff_master b where a.Transfer_Ref_No='" + myrefno + "'" + " and a.staff_id=b.staff_id " + " order by a.SNo";



                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                gridview2.DataSource = dt;
                gridview2.DataBind();
                if (gridview2.Rows.Count == 0)
                {
                    myno = "1";
                }
                else if (gridview2.Rows.Count > 0)
                {
                    myno = (gridview2.Rows.Count + 1).ToString();

                }

            }
            return myno;
        }

    }

    public static void BindDatacap(ListView ListView1)
    {
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select b.CAPEX_Grp_Name, a.CAPEX_Code,a.CAPEX_Name,a.CAPEX_Unit_Price from CAPEX a, CAPEX_Group b where a.CAPEX_Grp_Code = b.CAPEX_Grp_Code ";
                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

            }
        }
    }

    public static void BindDatasga(ListView ListView1)
    {
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select b.SGA_Grp_Name, a.SGA_Code,a.SGA_Name,a.Unit_Price from SGA a, SGA_Group b where a.SGA_Grp_Code = b.SGA_Grp_Code ";
                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

            }
        }
    }

    public static void BindDatadirexp(ListView ListView1)
    {
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select b.Direct_Exp_Grp_Name, a.Direct_Exp_Code,a.Direct_Exp_Name,a.Unit_Price from Direct_Expenses a, Direct_Expenses_Group b where a.Direct_Exp_Grp_Code = b.Direct_Exp_Grp_Code ";
                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

            }
        }
    }

    public static void BindDatacus(ListView ListView1)
    {
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select b.Customer_Grp_Name, a.Customer_Code,a.Customer_Name,a.Email,a.Tell from Customer a, Customer_Group b where a.Customer_Grp_Code = b.Customer_Grp_Code ";
                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

            }
        }
    }

    public static void BindDatapro(ListView ListView1)
    {
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select b.Product_Grp_Name, a.Product_Code,a.Product_Name,a.Unit_Price from Product a, Product_Group b where a.Group_Code = b.Product_Grp_Code ";
                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

            }
        }
    }

    public static void BindDataven(ListView ListView1)
    {
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select b.Vendor_Grp_Name, a.Vendor_Code,a.Vendor_Name,a.Email,a.Tell from Vendor a, Vendor_Group b where a.Vendor_Grp_Code = b.Vendor_Grp_Code ";
                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

            }
        }
    }


    public static void BindDataMem(ListView ListView1)
    {
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select MEMBERSHIP_NO,SURNAME,OTHER_NAMES,GENDER,TELEPHONE_NO,EMAIL_ADDRESS,HOME_ADDRESS,OFFICE_ADDRESS,DATE_JOINED,TOT_CONT_TODATE,TOT_LOAN_TODATE from MEMBERSHIP";
                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

            }
        }
    }


    public static DateTime myconvdate(string mydate)
    {
        DateTime myretdate;
        if (mydate != string.Empty)
        {

            DateTime mn = DateTime.Parse(mydate);
           
            mydate = mn.ToShortDateString();

            if (DateTime.TryParse(mydate, out myretdate))
            {
                
                return myretdate;
            }

            else
            {

                mydate = "01/01/0001";
                DateTime md = DateTime.Parse(mydate);
                mydate = md.ToShortDateString();
                DateTime.TryParse(mydate, out myretdate);

            }
        }
        else
        {
            mydate = "01/01/0001";
            DateTime md = DateTime.Parse(mydate);
            mydate = md.ToShortDateString();
            DateTime.TryParse(mydate, out myretdate);
        }
        
        return myretdate;
     
    }


    public static double Sum( string myref, string mybatch)
    {
        double myvalue = 0.0;
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select sum(AMT_CONT) as mysum from  CONT_DETAILS a  where a.CONT_REF = '" + myref + "'and CONT_BATCH ='"+mybatch+"'";
                SqlDataReader dr = sqlcmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["mysum"].ToString() != string.Empty)
                        myvalue = double.Parse(dr["mysum"].ToString());
                    else
                        myvalue = 0.00;

                }

                return myvalue;
            }
        }
    }


    public static int available(string opt, string std, string endd)
    {
        int reserved = 0, total_room = 0, total_available = 0;
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
                sqlcmd.CommandText = "select count (*) as mycount from Rooms_Reservation a where a.Room_Type = '" + opt + "'" + " and ((a.Commencemet_Date between @std and @endd)  or (a.End_Date between @std and @endd))  ";
                using (SqlDataReader dr = sqlcmd.ExecuteReader())
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


    public static string roomavl (string rno, string std, string endd)
    {
        string res;
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
                sqlcmd.CommandText = "select * from Rooms_Reservation a where a.Room_No = '" + rno + "'" + " and ((a.Commencemet_Date between @std and @endd)  or (a.End_Date between @std and @endd))  ";
                using (SqlDataReader dr = sqlcmd.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        res = "YES";

                    }
                    else
                    {
                        res = "NO";
                    }
                }

            }
        }

        return res;

    }


    public static void available_Rooms(string opt, string std, string endd)
    {
        SaveRecord.Delete_Available_Room();
        SaveRecord.Delete_Res_Room();
        int reserved = 0, total_room = 0;
        //int reserved = 0, total_room = 0, total_available = 0;
        //string myroomresv = "";
        string myroomtot = "";
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
                sqlcmd.CommandText = "select count (*) as mycount from Rooms_Reservation a where a.Room_Type = '" + opt + "'" + " and ((a.Commencemet_Date between @std and @endd)  or (a.End_Date between @std and @endd))  ";
                using (SqlDataReader dr = sqlcmd.ExecuteReader())
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

                int l = 0;
                int m = 1;
                //string[] mres = new string[reserved];
                
                //string[] mavail = new string[total_room];
                //string[] myroomresv = new string[reserved];
                string mresv = "";
                //sqlcmd.Connection = objConn;
                //sqlcmd.Parameters.AddRange(objParam);
                sqlcmd.CommandText = "select Room_No  from Rooms_Reservation a where a.Room_Type = '" + opt + "'" + " and ((a.Commencemet_Date between @std and @endd)  or (a.End_Date between @std and @endd))  " + " order by Room_No";
                using (SqlDataReader dr = sqlcmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                     //   myroomresv[l] = dr["Room_No"].ToString() + ",";
                        mresv = mresv + "'"+dr["Room_No"].ToString() +"'"+ ",";
                        // mres[l] = dr["Room_No"].ToString();

                        //int myl = myroomresv.Length;
                       
                    //    SaveRecord.Res_Room(myroomresv[l]);
                        l++;
                    }
                }

                int myl = mresv.Length;
                if (myl > 0)
                {
                    mresv = mresv.Substring(0, myl - 1);

                    mresv = "(" + mresv + ")";
                }
                else if (myl == 0)
                    mresv = "('xxxx')";


                //sqlcmd.CommandText = "select Room_No from Room where Room_Type_Code='" + opt + "'" + " AND Room_No NOT IN ('" + myroomresv[0] + "')" + " AND Room_No NOT IN ('" + myroomresv[1] + "')" + " AND Room_No NOT IN ('" + myroomresv[2] + "')" + " AND Room_No NOT IN ('" + myroomresv[3] + "')";


                //for (int p = 0; p <= l-1;p++ )
                //{

                
                    sqlcmd.CommandText = "select Room_No from Room where Room_Type_Code='" + opt + "'" + " AND Room_No NOT IN "  + mresv ;
                
                //+" and b.Room_Type='" + opt + "'" + " and (b.Commencemet_Date between @std and @endd)  or (b.End_Date between @std and @endd) and a.Room_No <> b.Room_No";
                SqlDataAdapter myda = new SqlDataAdapter();
                myda.SelectCommand=sqlcmd;
                DataTable dt = new DataTable();
                myda.Fill(dt);
                foreach(DataRow dr in dt.Rows)
                {
                     SaveRecord.Available_Room(dr["Room_No"].ToString());
                }
                    
               
                
            }
                //total_available = total_room - reserved;

                //for (int i = 0; i <= l-1; i++)
                //{
                //    if (mres[i] != mroom[i])
                //    {
                //        mavail[i] = mroom[i];
                //    }
                //}

                //for (int i =l; i <= total_room -1; i++)
                //{
                    
                //        mavail[i] = mroom[i];
                //        //Response.Redirect("~/Operations/RoomReservation.aspx?mavail =" + mavail);
                //}

                

            }



        

        //return total_available;

    }


      public static string Retrieve_Room(string myrno, GridView gridview2)
    {
        string myno = "";
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {

                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select a.Room_No as [Room No],a.Room_Desc as [Room Description] from Room a where a.Room_No='" + myrno + "'";
                SqlDataAdapter myadapter = new SqlDataAdapter(sqlcmd);
                myadapter.SelectCommand = sqlcmd;
                DataTable dt = new DataTable();
                myadapter.Fill(dt);
                gridview2.DataSource = dt;
                gridview2.DataBind();
                if (gridview2.Rows.Count == 0)
                {
                    myno = "1";
                }
                else if (gridview2.Rows.Count > 0)
                {
                    myno = (gridview2.Rows.Count + 1).ToString();

                }

            }
            return myno;
        }

    }

    public static double Totalcont(string mymemno)
    {
        double myvalue = 0.0;
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using (SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select sum(AMT_CONT) as mysum from  CONT_DETAILS a  where a.MEMBERSHIP_NO = '" + mymemno + "'";
                SqlDataReader dr = sqlcmd.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["mysum"].ToString() != string.Empty)
                        myvalue = double.Parse(dr["mysum"].ToString());
                    else
                        myvalue = 0.00;

                }

                return myvalue;
            }
        }
    }




    public static int count ()
    {
        int count = 0;
        using (SqlConnection objConn = DBConnection.Connect())
        {
            using(SqlCommand sqlcmd = new SqlCommand())
            {
                sqlcmd.Connection = objConn;
                sqlcmd.CommandText = "select count(*) as mycount from Customers";
                SqlDataReader dm = sqlcmd.ExecuteReader();

                if(dm.Read())
                {
                    count = int.Parse( dm["mycount"].ToString());
                    count = count + 1;
                }
            }
            return count;
        }
        
    }

}
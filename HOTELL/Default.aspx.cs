using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace HOTELL
{
    public partial class _Default : Page
    {
        private static double hg, hf, rate;
        private static int room, available, diff, fk, fg;
        private static string start, end, grt;
        private static DateTime hj, hk;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillCombo.DropDownListItems(1, cmbcurrency, AppTables.CUR_Tab);
            }

            rate = double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CUR_Tab, AppFields.CUR_Fld1a, "USD", "string"));
            sb1.Text = "US $" + conts.Text;
            sd1.Text = "US $" + contd.Text;
        }

        protected void cmbcurrency_SelectedIndexChanged(object sender, EventArgs e)
        {

            rate =double.Parse( RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.CUR_Tab, AppFields.CUR_Fld1b, cmbcurrency.SelectedItem.Text, "string"));
           

        }

        protected void cmbrno_SelectedIndexChanged(object sender, EventArgs e)
        {
            prd.Visible = false;
            contd.Visible = false;
            prs.Visible = false;
            conts.Visible = false;


            booking1.Visible = false;
            room = int.Parse(cmbrno.SelectedItem.Text);
            lblerror.Text = "";


            if (cmbrno.SelectedItem.Text == "1")
            {
                lr2.Visible = false;
                cmba2.Visible = false;
                cmbc2.Visible = false;

                lr3.Visible = false;
                cmba3.Visible = false;
                cmbc3.Visible = false;

                lr4.Visible = false;
                cmba4.Visible = false;
                cmbc4.Visible = false;

                lr5.Visible = false;
                cmba5.Visible = false;
                cmbc5.Visible = false;
            }
            if (cmbrno.SelectedItem.Text == "2")
            {
                lr2.Visible = true;
                cmba2.Visible = true;
                cmbc2.Visible = true;

                lr3.Visible = false;
                cmba3.Visible = false;
                cmbc3.Visible = false;

                lr4.Visible = false;
                cmba4.Visible = false;
                cmbc4.Visible = false;

                lr5.Visible = false;
                cmba5.Visible = false;
                cmbc5.Visible = false;
            }
            if (cmbrno.SelectedItem.Text == "3")
            {
                lr3.Visible = true;
                cmba3.Visible = true;
                cmbc3.Visible = true;

                lr2.Visible = true;
                cmba2.Visible = true;
                cmbc2.Visible = true;

                lr4.Visible = false;
                cmba4.Visible = false;
                cmbc4.Visible = false;

                lr5.Visible = false;
                cmba5.Visible = false;
                cmbc5.Visible = false;
            }
            if (cmbrno.SelectedItem.Text == "4")
            {
                lr4.Visible = true;
                cmba4.Visible = true;
                cmbc4.Visible = true;

                lr2.Visible = true;
                cmba2.Visible = true;
                cmbc2.Visible = true;

                lr3.Visible = true;
                cmba3.Visible = true;
                cmbc3.Visible = true;

                lr5.Visible = false;
                cmba5.Visible = false;
                cmbc5.Visible = false;
            }
            if (cmbrno.SelectedItem.Text == "5")
            {
                lr5.Visible = true;
                cmba5.Visible = true;
                cmbc5.Visible = true;

                lr2.Visible = true;
                cmba2.Visible = true;
                cmbc2.Visible = true;

                lr3.Visible = true;
                cmba3.Visible = true;
                cmbc3.Visible = true;

                lr4.Visible = true;
                cmba4.Visible = true;
                cmbc4.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            grt = "DL";
            available = COOP_REP.available(grt, start, end);
            COOP_REP.available_Rooms(grt, start, end);
            
            if (room > available)
            {
                lblerror.Text = "Sorry!!! we have only " + available.ToString() + " DELUXE ROOM available.";
            }
            else if (room == 0)
            {
                lblerror.Text = "Pls select no of room";
            }
            else if (room <= available)
            {
                lblerror.Text = "Available you can book NOW!!!";
                booking1.Visible = true;
                hj = DateTime.Parse(start);
                fk = hj.Day;
                hk = DateTime.Parse(end);
                fg = hk.Day;
                diff = fg - fk;


                ls1.Visible = true;
                conts.Visible = true;
                prs.Visible = true;
                sa1.Visible = true;
                sb1.Visible = true;

                hg = double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "DL", "string"));


                conts.Text = Math.Round((double.Parse((hg / rate).ToString()) * room), 2).ToString();


                prs.Text = (double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "DL", "string")) * room).ToString() + ".00";
                if (diff >= 2 && diff <= 3)
                {
                    sc1.Visible = true;
                    sd1.Visible = true;
                    lm1.Visible = true;
                    contd.Visible = true;
                    prd.Visible = true;
                    lm1.Text = diff + " DAYS";
                    hf = hg * diff * room;
                    prd.Text = hf.ToString() + ".00";
                    contd.Text =  Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 3 && diff <= 6)
                {
                    sc1.Visible = true;
                    sd1.Visible = true;
                    lm1.Visible = true;
                    lm1.Text = diff + " DAYS";
                    contd.Visible = true;
                    prd.Visible = true;
                    hf = hg * (diff - 1) * room;

                    prd.Text = hf.ToString() + ".00";
                    contd.Text = Math.Round((hf / rate), 2).ToString();

                }
                else if (diff > 6)
                {
                    sc1.Visible = true;
                    sd1.Visible = true;
                    lm1.Visible = true;
                    lm1.Text = diff + " DAYS";
                    contd.Visible = true;
                    prd.Visible = true;
                    hf = hg * (diff - 2) * room;
                    prd.Text = hf.ToString() + ".00";
                    contd.Text = Math.Round((hf / rate), 2).ToString();

                }

                sb1.Text = "US $" + conts.Text;
                sd1.Text = "US $" + contd.Text;

                if (cmbcurrency.SelectedItem.Text == "US Dollar")
                {

                    sb1.Text = "US $" + conts.Text; 
                    sd1.Text = "US $" + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Euro")
                {

                    sb1.Text = euro.Text + conts.Text;
                    sd1.Text = euro.Text + contd.Text;

                }
                else if (cmbcurrency.SelectedItem.Text == "Japanese Yen")
                {
                    sb1.Text = yen.Text + conts.Text; 
                    sd1.Text = yen.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Australian Dollar")
                {
                    sb1.Text = adollar.Text + conts.Text; 
                    sd1.Text = adollar.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Canadian Dollar")
                {
                    sb1.Text = cdollar.Text + conts.Text; 
                    sd1.Text = cdollar.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Swiss Franc")
                {
                    sb1.Text = sfr.Text + conts.Text;
                    sd1.Text = sfr.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Danish Krone")
                {
                    sb1.Text = dkr.Text + conts.Text;
                    sd1.Text = dkr.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Brazilian Real")
                {
                    sb1.Text = breal.Text + conts.Text; 
                    sd1.Text = breal.Text + contd.Text;
                }

                else if (cmbcurrency.SelectedItem.Text == "Indian Rupee")
                {
                    sb1.Text = irup.Text + conts.Text;
                    sd1.Text = irup.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "CFA Franc")
                {
                    sb1.Text = cfa.Text + conts.Text; 
                    sd1.Text = cfa.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tanzanian Shilling")
                {
                    sb1.Text = ts.Text + conts.Text;
                    sd1.Text = ts.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tunisian Dinar")
                {
                    sb1.Text = tdinar.Text + conts.Text;
                    sd1.Text = tdinar.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "South Korean Won")
                {
                    sb1.Text = won.Text + conts.Text;
                    sd1.Text = won.Text + contd.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Ghanaian Cedi")
                {
                    sb1.Text = cedi.Text + conts.Text;
                    sd1.Text = cedi.Text + contd.Text;
                }
                else
                {
                    sb1.Text =  conts.Text; 
                    sd1.Text = contd.Text;
                }


            }
            AppGlobal.ga = grt;
            AppGlobal.gb = start;
            AppGlobal.gc = end;
        }


        protected void Button3_Click(object sender, EventArgs e)
        {
            grt = "DP";
            available = COOP_REP.available(grt, start, end);
            COOP_REP.available_Rooms(grt, start, end);
            if (room > available)
            {
                lblerror2.Text = "Sorry!!! we have only " + available.ToString() + " DIPLOMAT ROOM available.";
            }
            else if (room == 0)
            {
                lblerror2.Text = "Pls select no of room";
            }
            else if (room <= available)
            {
                lblerror2.Text = "Available you can book NOW!!!";
                booking2.Visible = true;

                hj = DateTime.Parse(start);
                fk = hj.Day;
                hk = DateTime.Parse(end);
                fg = hk.Day;
                diff = fg - fk;


                ls2.Visible = true;
                conts2.Visible = true;
                prs2.Visible = true;
                sa2.Visible = true;
                sb2.Visible = true;

                hg = double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "DP", "string"));


                conts2.Text = Math.Round((double.Parse((hg / rate).ToString()) * room), 2).ToString();


                prs2.Text = (double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "DP", "string")) * room).ToString() + ".00";
                if (diff >= 2 && diff <= 3)
                {
                    sc2.Visible = true;
                    sd2.Visible = true;
                    lm2.Visible = true;
                    contd2.Visible = true;
                    prd2.Visible = true;
                    lm2.Text = diff + " DAYS";
                    hf = hg * diff * room;
                    prd2.Text = hf.ToString() + ".00";
                    contd2.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 3 && diff <= 6)
                {
                    sc2.Visible = true;
                    sd2.Visible = true;
                    lm2.Visible = true;
                    lm2.Text = diff + " DAYS";
                    contd2.Visible = true;
                    prd2.Visible = true;
                    hf = hg * (diff - 1) * room;

                    prd2.Text = hf.ToString() + ".00";
                    contd2.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 6)
                {
                    sc2.Visible = true;
                    sd2.Visible = true;
                    lm2.Visible = true;
                    lm2.Text = diff + " DAYS";
                    contd2.Visible = true;
                    prd2.Visible = true;
                    hf = hg * (diff - 2) * room;
                    prd2.Text = hf.ToString() + ".00";
                    contd2.Text = Math.Round((hf / rate), 2).ToString();
                }


                sb2.Text = "US $" + conts2.Text;
                sd2.Text = "US $" + contd2.Text;

                if (cmbcurrency.SelectedItem.Text == "US Dollar")
                {

                    sb2.Text = "US $" + conts2.Text; ;
                    sd2.Text = "US $" + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Euro")
                {

                    sb2.Text = euro.Text + conts2.Text;
                    sd2.Text = euro.Text + contd2.Text;

                }
                else if (cmbcurrency.SelectedItem.Text == "Japanese Yen")
                {
                    sb2.Text = yen.Text + conts2.Text;
                    sd2.Text = yen.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Australian Dollar")
                {
                    sb2.Text = adollar.Text + conts2.Text;
                    sd2.Text = adollar.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Canadian Dollar")
                {
                    sb2.Text = cdollar.Text + conts2.Text; 
                    sd2.Text = cdollar.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Swiss Franc")
                {
                    sb2.Text = sfr.Text + conts2.Text;
                    sd2.Text = sfr.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Danish Krone")
                {
                    sb2.Text = dkr.Text + conts2.Text;
                    sd2.Text = dkr.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Brazilian Real")
                {
                    sb2.Text = breal.Text + conts2.Text;
                    sd2.Text = breal.Text + contd2.Text;
                }

                else if (cmbcurrency.SelectedItem.Text == "Indian Rupee")
                {
                    sb2.Text = irup.Text + conts2.Text;
                    sd2.Text = irup.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "CFA Franc")
                {
                    sb2.Text = cfa.Text + conts2.Text;
                    sd2.Text = cfa.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tanzanian Shilling")
                {
                    sb2.Text = ts.Text + conts2.Text;
                    sd2.Text = ts.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tunisian Dinar")
                {
                    sb2.Text = tdinar.Text + conts2.Text;
                    sd2.Text = tdinar.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "South Korean Won")
                {
                    sb2.Text = won.Text + conts2.Text;
                    sd2.Text = won.Text + contd2.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Ghanaian Cedi")
                {
                    sb2.Text = cedi.Text + conts2.Text;
                    sd2.Text = cedi.Text + contd2.Text;
                }
                else
                {
                    sb2.Text = conts2.Text; 
                    sd2.Text = contd2.Text;
                }


            }

            AppGlobal.ga = grt;
            AppGlobal.gb = start;
            AppGlobal.gc = end;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            grt = "EX";
            available = COOP_REP.available(grt, start, end);
            COOP_REP.available_Rooms(grt, start, end);
            if (room > available)
            {
                lblerror3.Text = "Sorry!!! we have only " + available.ToString() + " EXECUTIVE SUITE available.";
            }
            else if (room == 0)
            {
                lblerror3.Text = "Pls select no of room";
            }
            else if (room <= available)
            {
                lblerror3.Text = "Available you can book NOW!!!";
                booking3.Visible = true;

                hj = DateTime.Parse(start);
                fk = hj.Day;
                hk = DateTime.Parse(end);
                fg = hk.Day;
                diff = fg - fk;


                ls3.Visible = true;
                conts3.Visible = true;
                prs3.Visible = true;
                sa3.Visible = true;
                sb3.Visible = true;

                hg = double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "EX", "string"));


                conts3.Text = Math.Round((double.Parse((hg / rate).ToString()) * room), 2).ToString();


                prs3.Text = (double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "EX", "string")) * room).ToString() + ".00";
                if (diff >= 2 && diff <= 3)
                {
                    sc3.Visible = true;
                    sd3.Visible = true;
                    lm3.Visible = true;
                    contd3.Visible = true;
                    prd3.Visible = true;
                    lm3.Text = diff + " DAYS";
                    hf = hg * diff * room;
                    prd3.Text = hf.ToString() + ".00";
                    contd3.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 3 && diff <= 6)
                {
                    sc3.Visible = true;
                    sd3.Visible = true;
                    lm3.Visible = true;
                    lm3.Text = diff + " DAYS";
                    contd3.Visible = true;
                    prd3.Visible = true;
                    hf = hg * (diff - 1) * room;

                    prd3.Text = hf.ToString() + ".00";
                    contd3.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 6)
                {
                    sc3.Visible = true;
                    sd3.Visible = true;
                    lm3.Visible = true;
                    lm3.Text = diff + " DAYS";
                    contd3.Visible = true;
                    prd3.Visible = true;
                    hf = hg * (diff - 2) * room;
                    prd3.Text = hf.ToString() + ".00";
                    contd3.Text = Math.Round((hf / rate), 2).ToString();
                }


                sb3.Text = "US $" + conts3.Text;
                sd3.Text = "US $" + contd3.Text;

                if (cmbcurrency.SelectedItem.Text == "US Dollar")
                {

                    sb3.Text = "US $" + conts3.Text; ;
                    sd3.Text = "US $" + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Euro")
                {

                    sb3.Text = euro.Text + conts3.Text;
                    sd3.Text = euro.Text + contd3.Text;

                }
                else if (cmbcurrency.SelectedItem.Text == "Japanese Yen")
                {
                    sb3.Text = yen.Text + conts3.Text;
                    sd3.Text = yen.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Australian Dollar")
                {
                    sb3.Text = adollar.Text + conts3.Text;
                    sd3.Text = adollar.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Canadian Dollar")
                {
                    sb3.Text = cdollar.Text + conts3.Text;
                    sd3.Text = cdollar.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Swiss Franc")
                {
                    sb3.Text = sfr.Text + conts3.Text;
                    sd3.Text = sfr.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Danish Krone")
                {
                    sb3.Text = dkr.Text + conts3.Text;
                    sd3.Text = dkr.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Brazilian Real")
                {
                    sb3.Text = breal.Text + conts3.Text;
                    sd3.Text = breal.Text + contd3.Text;
                }

                else if (cmbcurrency.SelectedItem.Text == "Indian Rupee")
                {
                    sb3.Text = irup.Text + conts3.Text;
                    sd3.Text = irup.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "CFA Franc")
                {
                    sb3.Text = cfa.Text + conts3.Text;
                    sd3.Text = cfa.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tanzanian Shilling")
                {
                    sb3.Text = ts.Text + conts3.Text;
                    sd3.Text = ts.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tunisian Dinar")
                {
                    sb3.Text = tdinar.Text + conts3.Text;
                    sd3.Text = tdinar.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "South Korean Won")
                {
                    sb3.Text = won.Text + conts3.Text;
                    sd3.Text = won.Text + contd3.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Ghanaian Cedi")
                {
                    sb3.Text = cedi.Text + conts3.Text;
                    sd3.Text = cedi.Text + contd3.Text;
                }
                else
                {
                    sb3.Text = conts3.Text; 
                    sd3.Text = contd3.Text;
                }

            }

            AppGlobal.ga = grt;
            AppGlobal.gb = start;
            AppGlobal.gc = end;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            grt = "CJ";
            available = COOP_REP.available(grt, start, end);
            COOP_REP.available_Rooms(grt, start, end);
            if (room > available)
            {
                lblerror4.Text = "Sorry!!! we have only " + available.ToString() + " CLUB JUNIOR SUITE available.";
            }
            else if (room == 0)
            {
                lblerror4.Text = "Pls select no of room";
            }
            else if (room <= available)
            {
                lblerror4.Text = "Available you can book NOW!!!";
                booking4.Visible = true;

                hj = DateTime.Parse(start);
                fk = hj.Day;
                hk = DateTime.Parse(end);
                fg = hk.Day;
                diff = fg - fk;


                ls4.Visible = true;
                conts4.Visible = true;
                prs4.Visible = true;
                sa4.Visible = true;
                sb4.Visible = true;

                hg = double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "CJ", "string"));


                conts4.Text = Math.Round((double.Parse((hg / rate).ToString()) * room), 2).ToString();


                prs4.Text = (double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "CJ", "string")) * room).ToString() + ".00";
                if (diff >= 2 && diff <= 3)
                {
                    sc4.Visible = true;
                    sd4.Visible = true;
                    lm4.Visible = true;
                    contd4.Visible = true;
                    prd4.Visible = true;
                    lm4.Text = diff + " DAYS";
                    hf = hg * diff * room;
                    prd4.Text = hf.ToString() + ".00";
                    contd4.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 3 && diff <= 6)
                {
                    sc4.Visible = true;
                    sd4.Visible = true;
                    lm4.Visible = true;
                    lm4.Text = diff + " DAYS";
                    contd4.Visible = true;
                    prd4.Visible = true;
                    hf = hg * (diff - 1) * room;

                    prd4.Text = hf.ToString() + ".00";
                    contd4.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 6)
                {
                    sc4.Visible = true;
                    sd4.Visible = true;
                    lm4.Visible = true;
                    lm4.Text = diff + " DAYS";
                    contd4.Visible = true;
                    prd4.Visible = true;
                    hf = hg * (diff - 2) * room;
                    prd4.Text = hf.ToString() + ".00";
                    contd4.Text = Math.Round((hf / rate), 2).ToString();
                }


                sb4.Text = "US $" + conts4.Text;
                sd4.Text = "US $" + contd4.Text;

                if (cmbcurrency.SelectedItem.Text == "US Dollar")
                {

                    sb4.Text = "US $" + conts4.Text; ;
                    sd4.Text = "US $" + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Euro")
                {

                    sb4.Text = euro.Text + conts4.Text;
                    sd4.Text = euro.Text + contd4.Text;

                }
                else if (cmbcurrency.SelectedItem.Text == "Japanese Yen")
                {
                    sb4.Text = yen.Text + conts4.Text;
                    sd4.Text = yen.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Australian Dollar")
                {
                    sb4.Text = adollar.Text + conts4.Text;
                    sd4.Text = adollar.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Canadian Dollar")
                {
                    sb4.Text = cdollar.Text + conts4.Text;
                    sd4.Text = cdollar.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Swiss Franc")
                {
                    sb4.Text = sfr.Text + conts4.Text;
                    sd4.Text = sfr.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Danish Krone")
                {
                    sb4.Text = dkr.Text + conts4.Text;
                    sd4.Text = dkr.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Brazilian Real")
                {
                    sb4.Text = breal.Text + conts4.Text;
                    sd4.Text = breal.Text + contd4.Text;
                }

                else if (cmbcurrency.SelectedItem.Text == "Indian Rupee")
                {
                    sb4.Text = irup.Text + conts4.Text;
                    sd4.Text = irup.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "CFA Franc")
                {
                    sb4.Text = cfa.Text + conts4.Text;
                    sd4.Text = cfa.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tanzanian Shilling")
                {
                    sb4.Text = ts.Text + conts4.Text;
                    sd4.Text = ts.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tunisian Dinar")
                {
                    sb4.Text = tdinar.Text + conts4.Text;
                    sd4.Text = tdinar.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "South Korean Won")
                {
                    sb4.Text = won.Text + conts4.Text;
                    sd4.Text = won.Text + contd4.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Ghanaian Cedi")
                {
                    sb4.Text = cedi.Text + conts4.Text;
                    sd4.Text = cedi.Text + contd4.Text;
                }
                else
                {
                    sb4.Text = conts4.Text;
                    sd4.Text = contd4.Text;
                }

            }
            AppGlobal.ga = grt;
            AppGlobal.gb = start;
            AppGlobal.gc = end;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            grt = "PR";
            available = COOP_REP.available(grt, start, end);
            COOP_REP.available_Rooms(grt, start, end);
            if (room > available)
            {
                lblerror5.Text = "Sorry!!! we have only " + available.ToString() + " PRESIDENTIAL SUITE available.";
            }
            else if (room == 0)
            {
                lblerror5.Text = "Pls select no of room";
            }
            else if (room <= available)
            {
                lblerror5.Text = "Available you can book NOW!!!";
                booking5.Visible = true;

                hj = DateTime.Parse(start);
                fk = hj.Day;
                hk = DateTime.Parse(end);
                fg = hk.Day;
                diff = fg - fk;


                ls5.Visible = true;
                conts5.Visible = true;
                prs5.Visible = true;
                sa5.Visible = true;
                sb5.Visible = true;

                hg = double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "PR", "string"));


                conts5.Text = Math.Round((double.Parse((hg / rate).ToString()) * room), 2).ToString();


                prs5.Text = (double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "PR", "string")) * room).ToString() + ".00";
                if (diff >= 2 && diff <= 3)
                {
                    sc5.Visible = true;
                    sd5.Visible = true;
                    lm5.Visible = true;
                    contd5.Visible = true;
                    prd5.Visible = true;
                    lm5.Text = diff + " DAYS";
                    hf = hg * diff * room;
                    prd5.Text = hf.ToString() + ".00";
                    contd5.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 3 && diff <= 6)
                {
                    sc5.Visible = true;
                    sd5.Visible = true;
                    lm5.Visible = true;
                    lm5.Text = diff + " DAYS";
                    contd5.Visible = true;
                    prd5.Visible = true;
                    hf = hg * (diff - 1) * room;

                    prd5.Text = hf.ToString() + ".00";
                    contd5.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 6)
                {
                    sc5.Visible = true;
                    sd5.Visible = true;
                    lm5.Visible = true;
                    lm5.Text = diff + " DAYS";
                    contd5.Visible = true;
                    prd5.Visible = true;
                    hf = hg * (diff - 2) * room;
                    prd5.Text = hf.ToString() + ".00";
                    contd5.Text = Math.Round((hf / rate), 2).ToString();
                }


                sb5.Text = "US $" + conts5.Text;
                sd5.Text = "US $" + contd5.Text;

                if (cmbcurrency.SelectedItem.Text == "US Dollar")
                {

                    sb5.Text = "US $" + conts5.Text; ;
                    sd5.Text = "US $" + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Euro")
                {

                    sb5.Text = euro.Text + conts5.Text;
                    sd5.Text = euro.Text + contd5.Text;

                }
                else if (cmbcurrency.SelectedItem.Text == "Japanese Yen")
                {
                    sb5.Text = yen.Text + conts5.Text;
                    sd5.Text = yen.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Australian Dollar")
                {
                    sb5.Text = adollar.Text + conts5.Text;
                    sd5.Text = adollar.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Canadian Dollar")
                {
                    sb5.Text = cdollar.Text + conts5.Text;
                    sd5.Text = cdollar.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Swiss Franc")
                {
                    sb5.Text = sfr.Text + conts5.Text;
                    sd5.Text = sfr.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Danish Krone")
                {
                    sb5.Text = dkr.Text + conts5.Text;
                    sd5.Text = dkr.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Brazilian Real")
                {
                    sb5.Text = breal.Text + conts5.Text;
                    sd5.Text = breal.Text + contd5.Text;
                }

                else if (cmbcurrency.SelectedItem.Text == "Indian Rupee")
                {
                    sb5.Text = irup.Text + conts5.Text;
                    sd5.Text = irup.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "CFA Franc")
                {
                    sb5.Text = cfa.Text + conts5.Text;
                    sd5.Text = cfa.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tanzanian Shilling")
                {
                    sb5.Text = ts.Text + conts5.Text;
                    sd5.Text = ts.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tunisian Dinar")
                {
                    sb5.Text = tdinar.Text + conts5.Text;
                    sd5.Text = tdinar.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "South Korean Won")
                {
                    sb5.Text = won.Text + conts5.Text;
                    sd5.Text = won.Text + contd5.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Ghanaian Cedi")
                {
                    sb5.Text = cedi.Text + conts5.Text;
                    sd5.Text = cedi.Text + contd5.Text;
                }
                else
                {
                    sb5.Text = conts5.Text;
                    sd5.Text = contd5.Text;
                }

            }
            AppGlobal.ga = grt;
            AppGlobal.gb = start;
            AppGlobal.gc = end;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            grt = "RY";
            available = COOP_REP.available(grt, start, end);
            COOP_REP.available_Rooms(grt, start, end);
            if (room > available)
            {
                lblerror6.Text = "Sorry!!! we have only " + available.ToString() + " ROYAL SUITE available.";
            }
            else if (room == 0)
            {
                lblerror6.Text = "Pls select no of room";
            }
            else if (room <= available)
            {
                lblerror6.Text = "Available you can book NOW!!!";
                booking6.Visible = true;

                hj = DateTime.Parse(start);
                fk = hj.Day;
                hk = DateTime.Parse(end);
                fg = hk.Day;
                diff = fg - fk;


                ls6.Visible = true;
                conts6.Visible = true;
                prs6.Visible = true;
                sa6.Visible = true;
                sb6.Visible = true;

                hg = double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "RY", "string"));


                conts6.Text = Math.Round((double.Parse((hg / rate).ToString()) * room), 2).ToString();


                prs6.Text = (double.Parse(RetrieveFields.retrieveByFieldIndex_HasOneKey(2, AppTables.RT_Tab, AppFields.RT_Fld1a, "RY", "string")) * room).ToString() + ".00";
                if (diff >= 2 && diff <= 3)
                {
                    sc6.Visible = true;
                    sd6.Visible = true;
                    lm6.Visible = true;
                    contd6.Visible = true;
                    prd6.Visible = true;
                    lm6.Text = diff + " DAYS";
                    hf = hg * diff * room;
                    prd6.Text = hf.ToString() + ".00";
                    contd6.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 3 && diff <= 6)
                {
                    sc6.Visible = true;
                    sd6.Visible = true;
                    lm6.Visible = true;
                    lm6.Text = diff + " DAYS";
                    contd6.Visible = true;
                    prd6.Visible = true;
                    hf = hg * (diff - 1) * room;

                    prd6.Text = hf.ToString() + ".00";
                    contd6.Text = Math.Round((hf / rate), 2).ToString();
                }
                else if (diff > 6)
                {
                    sc6.Visible = true;
                    sd6.Visible = true;
                    lm6.Visible = true;
                    lm6.Text = diff + " DAYS";
                    contd6.Visible = true;
                    prd6.Visible = true;
                    hf = hg * (diff - 2) * room;
                    prd6.Text = hf.ToString() + ".00";
                    contd6.Text = Math.Round((hf / rate), 2).ToString();
                }

                sb6.Text = "US $" + conts6.Text;
                sd6.Text = "US $" + contd6.Text;

                if (cmbcurrency.SelectedItem.Text == "US Dollar")
                {

                    sb6.Text = "US $" + conts6.Text; ;
                    sd6.Text = "US $" + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Euro")
                {

                    sb6.Text = euro.Text + conts6.Text;
                    sd6.Text = euro.Text + contd6.Text;

                }
                else if (cmbcurrency.SelectedItem.Text == "Japanese Yen")
                {
                    sb6.Text = yen.Text + conts6.Text;
                    sd6.Text = yen.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Australian Dollar")
                {
                    sb6.Text = adollar.Text + conts6.Text;
                    sd6.Text = adollar.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Canadian Dollar")
                {
                    sb6.Text = cdollar.Text + conts6.Text;
                    sd6.Text = cdollar.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Swiss Franc")
                {
                    sb6.Text = sfr.Text + conts6.Text;
                    sd6.Text = sfr.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Danish Krone")
                {
                    sb6.Text = dkr.Text + conts6.Text;
                    sd6.Text = dkr.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Brazilian Real")
                {
                    sb6.Text = breal.Text + conts6.Text;
                    sd6.Text = breal.Text + contd6.Text;
                }

                else if (cmbcurrency.SelectedItem.Text == "Indian Rupee")
                {
                    sb6.Text = irup.Text + conts6.Text;
                    sd6.Text = irup.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "CFA Franc")
                {
                    sb6.Text = cfa.Text + conts6.Text;
                    sd6.Text = cfa.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tanzanian Shilling")
                {
                    sb6.Text = ts.Text + conts6.Text;
                    sd6.Text = ts.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Tunisian Dinar")
                {
                    sb6.Text = tdinar.Text + conts6.Text;
                    sd6.Text = tdinar.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "South Korean Won")
                {
                    sb6.Text = won.Text + conts6.Text;
                    sd6.Text = won.Text + contd6.Text;
                }
                else if (cmbcurrency.SelectedItem.Text == "Ghanaian Cedi")
                {
                    sb6.Text = cedi.Text + conts6.Text;
                    sd6.Text = cedi.Text + contd6.Text;
                }
                else
                {
                    sb6.Text = conts6.Text;
                    sd6.Text = contd6.Text;
                }
            }
            AppGlobal.ga = grt;
            AppGlobal.gb = start;
            AppGlobal.gc = end;
        }


        protected void cmbrno2_SelectedIndexChanged(object sender, EventArgs e)
        {
            prd2.Visible = false;
            contd2.Visible = false;
            prs2.Visible = false;
            conts2.Visible = false;
            booking2.Visible = false;
            room = int.Parse(cmbrno2.SelectedItem.Text);
            lblerror2.Text = "";
            if (cmbrno2.SelectedItem.Text == "1")
            {

                lr2b.Visible = false;
                cmba2b.Visible = false;
                cmbc2b.Visible = false;

                lr3b.Visible = false;
                cmba3b.Visible = false;
                cmbc3b.Visible = false;

                lr4b.Visible = false;
                cmba4b.Visible = false;
                cmbc4b.Visible = false;

                lr5b.Visible = false;
                cmba5b.Visible = false;
                cmbc5b.Visible = false;
            }
            if (cmbrno2.SelectedItem.Text == "2")
            {
                lr2b.Visible = true;
                cmba2b.Visible = true;
                cmbc2b.Visible = true;

                lr3b.Visible = false;
                cmba3b.Visible = false;
                cmbc3b.Visible = false;

                lr4b.Visible = false;
                cmba4b.Visible = false;
                cmbc4b.Visible = false;

                lr5b.Visible = false;
                cmba5b.Visible = false;
                cmbc5b.Visible = false;
            }
            if (cmbrno2.SelectedItem.Text == "3")
            {
                lr3b.Visible = true;
                cmba3b.Visible = true;
                cmbc3b.Visible = true;

                lr2b.Visible = true;
                cmba2b.Visible = true;
                cmbc2b.Visible = true;

                lr4b.Visible = false;
                cmba4b.Visible = false;
                cmbc4b.Visible = false;

                lr5b.Visible = false;
                cmba5b.Visible = false;
                cmbc5b.Visible = false;
            }
            if (cmbrno2.SelectedItem.Text == "4")
            {
                lr4b.Visible = true;
                cmba4b.Visible = true;
                cmbc4b.Visible = true;

                lr2b.Visible = true;
                cmba2b.Visible = true;
                cmbc2b.Visible = true;

                lr3b.Visible = true;
                cmba3b.Visible = true;
                cmbc3b.Visible = true;

                lr5b.Visible = false;
                cmba5b.Visible = false;
                cmbc5b.Visible = false;
            }
            if (cmbrno2.SelectedItem.Text == "5")
            {
                lr5b.Visible = true;
                cmba5b.Visible = true;
                cmbc5b.Visible = true;

                lr2b.Visible = true;
                cmba2b.Visible = true;
                cmbc2b.Visible = true;

                lr3b.Visible = true;
                cmba3b.Visible = true;
                cmbc3b.Visible = true;

                lr4b.Visible = true;
                cmba4b.Visible = true;
                cmbc4b.Visible = true;
            }
        }

        protected void cmbrno3_SelectedIndexChanged(object sender, EventArgs e)
        {
            prd3.Visible = false;
            contd3.Visible = false;
            prs3.Visible = false;
            conts3.Visible = false;
            booking3.Visible = false;
            room = int.Parse(cmbrno3.SelectedItem.Text);
            lblerror3.Text = "";
            if (cmbrno3.SelectedItem.Text == "1")
            {

                lr2c.Visible = false;
                cmba2c.Visible = false;
                cmbc2c.Visible = false;

                lr3c.Visible = false;
                cmba3c.Visible = false;
                cmbc3c.Visible = false;

                lr4c.Visible = false;
                cmba4c.Visible = false;
                cmbc4c.Visible = false;

                lr5c.Visible = false;
                cmba5c.Visible = false;
                cmbc5c.Visible = false;
            }
            if (cmbrno3.SelectedItem.Text == "2")
            {
                lr2c.Visible = true;
                cmba2c.Visible = true;
                cmbc2c.Visible = true;

                lr3c.Visible = false;
                cmba3c.Visible = false;
                cmbc3c.Visible = false;

                lr4c.Visible = false;
                cmba4c.Visible = false;
                cmbc4c.Visible = false;

                lr5c.Visible = false;
                cmba5c.Visible = false;
                cmbc5c.Visible = false;
            }
            if (cmbrno3.SelectedItem.Text == "3")
            {
                lr3c.Visible = true;
                cmba3c.Visible = true;
                cmbc3c.Visible = true;

                lr2c.Visible = true;
                cmba2c.Visible = true;
                cmbc2c.Visible = true;

                lr4c.Visible = false;
                cmba4c.Visible = false;
                cmbc4c.Visible = false;

                lr5c.Visible = false;
                cmba5c.Visible = false;
                cmbc5c.Visible = false;
            }
            if (cmbrno3.SelectedItem.Text == "4")
            {
                lr4c.Visible = true;
                cmba4c.Visible = true;
                cmbc4c.Visible = true;

                lr2c.Visible = true;
                cmba2c.Visible = true;
                cmbc2c.Visible = true;

                lr3c.Visible = true;
                cmba3c.Visible = true;
                cmbc3c.Visible = true;

                lr5c.Visible = false;
                cmba5c.Visible = false;
                cmbc5c.Visible = false;
            }
            if (cmbrno3.SelectedItem.Text == "5")
            {
                lr5c.Visible = true;
                cmba5c.Visible = true;
                cmbc5c.Visible = true;

                lr2c.Visible = true;
                cmba2c.Visible = true;
                cmbc2c.Visible = true;

                lr3c.Visible = true;
                cmba3c.Visible = true;
                cmbc3c.Visible = true;

                lr4c.Visible = true;
                cmba4c.Visible = true;
                cmbc4c.Visible = true;
            }

        }

        protected void cmbrno4_SelectedIndexChanged(object sender, EventArgs e)
        {
            prd4.Visible = false;
            contd4.Visible = false;
            prs4.Visible = false;
            conts4.Visible = false;
            booking4.Visible = false;
            room = int.Parse(cmbrno4.SelectedItem.Text);
            lblerror4.Text = "";
            if (cmbrno4.SelectedItem.Text == "1")
            {

                lr2d.Visible = false;
                cmba2d.Visible = false;
                cmbc2d.Visible = false;

                lr3d.Visible = false;
                cmba3d.Visible = false;
                cmbc3d.Visible = false;

                lr4d.Visible = false;
                cmba4d.Visible = false;
                cmbc4d.Visible = false;

                lr5d.Visible = false;
                cmba5d.Visible = false;
                cmbc5d.Visible = false;
            }
            if (cmbrno4.SelectedItem.Text == "2")
            {
                lr2d.Visible = true;
                cmba2d.Visible = true;
                cmbc2d.Visible = true;

                lr3d.Visible = false;
                cmba3d.Visible = false;
                cmbc3d.Visible = false;

                lr4d.Visible = false;
                cmba4d.Visible = false;
                cmbc4d.Visible = false;

                lr5d.Visible = false;
                cmba5d.Visible = false;
                cmbc5d.Visible = false;
            }
            if (cmbrno4.SelectedItem.Text == "3")
            {
                lr3d.Visible = true;
                cmba3d.Visible = true;
                cmbc3d.Visible = true;

                lr2d.Visible = true;
                cmba2d.Visible = true;
                cmbc2d.Visible = true;

                lr4d.Visible = false;
                cmba4d.Visible = false;
                cmbc4d.Visible = false;

                lr5d.Visible = false;
                cmba5d.Visible = false;
                cmbc5d.Visible = false;
            }
            if (cmbrno4.SelectedItem.Text == "4")
            {
                lr4d.Visible = true;
                cmba4d.Visible = true;
                cmbc4d.Visible = true;

                lr2d.Visible = true;
                cmba2d.Visible = true;
                cmbc2d.Visible = true;

                lr3d.Visible = true;
                cmba3d.Visible = true;
                cmbc3d.Visible = true;

                lr5d.Visible = false;
                cmba5d.Visible = false;
                cmbc5d.Visible = false;
            }
            if (cmbrno4.SelectedItem.Text == "5")
            {
                lr5d.Visible = true;
                cmba5d.Visible = true;
                cmbc5d.Visible = true;

                lr2d.Visible = true;
                cmba2d.Visible = true;
                cmbc2d.Visible = true;

                lr3d.Visible = true;
                cmba3d.Visible = true;
                cmbc3d.Visible = true;

                lr4d.Visible = true;
                cmba4d.Visible = true;
                cmbc4d.Visible = true;
            }
        }

        protected void cmbrno5_SelectedIndexChanged(object sender, EventArgs e)
        {
            prd5.Visible = false;
            contd5.Visible = false;
            prs5.Visible = false;
            conts5.Visible = false;
            booking5.Visible = false;
            room = int.Parse(cmbrno5.SelectedItem.Text);
            lblerror5.Text = "";
            if (cmbrno5.SelectedItem.Text == "1")
            {

                lr2e.Visible = false;
                cmba2e.Visible = false;
                cmbc2e.Visible = false;

                lr3e.Visible = false;
                cmba3e.Visible = false;
                cmbc3e.Visible = false;

                lr4e.Visible = false;
                cmba4e.Visible = false;
                cmbc4e.Visible = false;

                lr5e.Visible = false;
                cmba5e.Visible = false;
                cmbc5e.Visible = false;
            }
            if (cmbrno5.SelectedItem.Text == "2")
            {
                lr2e.Visible = true;
                cmba2e.Visible = true;
                cmbc2e.Visible = true;

                lr3e.Visible = false;
                cmba3e.Visible = false;
                cmbc3e.Visible = false;

                lr4e.Visible = false;
                cmba4e.Visible = false;
                cmbc4e.Visible = false;

                lr5e.Visible = false;
                cmba5e.Visible = false;
                cmbc5e.Visible = false;
            }
            if (cmbrno5.SelectedItem.Text == "3")
            {
                lr3e.Visible = true;
                cmba3e.Visible = true;
                cmbc3e.Visible = true;

                lr2e.Visible = true;
                cmba2e.Visible = true;
                cmbc2e.Visible = true;

                lr4e.Visible = false;
                cmba4e.Visible = false;
                cmbc4e.Visible = false;

                lr5e.Visible = false;
                cmba5e.Visible = false;
                cmbc5e.Visible = false;
            }
            if (cmbrno5.SelectedItem.Text == "4")
            {
                lr4e.Visible = true;
                cmba4e.Visible = true;
                cmbc4e.Visible = true;

                lr2e.Visible = true;
                cmba2e.Visible = true;
                cmbc2e.Visible = true;

                lr3e.Visible = true;
                cmba3e.Visible = true;
                cmbc3e.Visible = true;

                lr5e.Visible = false;
                cmba5e.Visible = false;
                cmbc5e.Visible = false;
            }
            if (cmbrno5.SelectedItem.Text == "5")
            {
                lr5e.Visible = true;
                cmba5e.Visible = true;
                cmbc5e.Visible = true;

                lr2e.Visible = true;
                cmba2e.Visible = true;
                cmbc2e.Visible = true;

                lr3e.Visible = true;
                cmba3e.Visible = true;
                cmbc3e.Visible = true;

                lr4e.Visible = true;
                cmba4e.Visible = true;
                cmbc4e.Visible = true;
            }
        }

        protected void cmbrno6_SelectedIndexChanged(object sender, EventArgs e)
        {
            prd6.Visible = false;
            contd6.Visible = false;
            prs6.Visible = false;
            conts6.Visible = false;
            booking6.Visible = false;
            room = int.Parse(cmbrno6.SelectedItem.Text);
            lblerror6.Text = "";
            if (cmbrno6.SelectedItem.Text == "1")
            {

                lr2f.Visible = false;
                cmba2f.Visible = false;
                cmbc2f.Visible = false;

                lr3f.Visible = false;
                cmba3f.Visible = false;
                cmbc3f.Visible = false;

                lr4f.Visible = false;
                cmba4f.Visible = false;
                cmbc4f.Visible = false;

                lr5f.Visible = false;
                cmba5f.Visible = false;
                cmbc5f.Visible = false;
            }
            if (cmbrno6.SelectedItem.Text == "2")
            {
                lr2f.Visible = true;
                cmba2f.Visible = true;
                cmbc2f.Visible = true;

                lr3f.Visible = false;
                cmba3f.Visible = false;
                cmbc3f.Visible = false;

                lr4f.Visible = false;
                cmba4f.Visible = false;
                cmbc4f.Visible = false;

                lr5f.Visible = false;
                cmba5f.Visible = false;
                cmbc5f.Visible = false;
            }
            if (cmbrno6.SelectedItem.Text == "3")
            {
                lr3f.Visible = true;
                cmba3f.Visible = true;
                cmbc3f.Visible = true;

                lr2f.Visible = true;
                cmba2f.Visible = true;
                cmbc2f.Visible = true;

                lr4f.Visible = false;
                cmba4f.Visible = false;
                cmbc4f.Visible = false;

                lr5f.Visible = false;
                cmba5f.Visible = false;
                cmbc5f.Visible = false;
            }
            if (cmbrno6.SelectedItem.Text == "4")
            {
                lr4f.Visible = true;
                cmba4f.Visible = true;
                cmbc4f.Visible = true;

                lr2f.Visible = true;
                cmba2f.Visible = true;
                cmbc2f.Visible = true;

                lr3f.Visible = true;
                cmba3f.Visible = true;
                cmbc3f.Visible = true;

                lr5f.Visible = false;
                cmba5f.Visible = false;
                cmbc5f.Visible = false;
            }
            if (cmbrno6.SelectedItem.Text == "5")
            {
                lr5f.Visible = true;
                cmba5f.Visible = true;
                cmbc5f.Visible = true;

                lr2f.Visible = true;
                cmba2f.Visible = true;
                cmbc2f.Visible = true;

                lr3f.Visible = true;
                cmba3f.Visible = true;
                cmbc3f.Visible = true;

                lr4f.Visible = true;
                cmba4f.Visible = true;
                cmbc4f.Visible = true;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtname.Text == string.Empty || txtdate.Text == string.Empty || txtemail.Text == string.Empty || cmbrating.SelectedItem.Text == string.Empty)
            {
                lblsuccess.Text = "pls fill all the text fields";
            }

            else
            {

                SaveRecord.Save_Review(txtname.Text, txtemail.Text, txtnum.Text, txtdate.Text, cmbrating.SelectedItem.Text, txtreview.Text);
                lblsuccess.Text = "Record Submitted successfully";

                txtname.Text = "";
                txtemail.Text = "";
                txtnum.Text = "";
                cmbrating.SelectedItem.Text = "";
                txtreview.Text = "";

            }
        }

        protected void newsbutn_Click(object sender, EventArgs e)
        {
            if (txtnewsletter.Text == string.Empty)
            {
                lblem.Text = "pls enter an email to submit";
            }
            else
            {
                SaveRecord.Save_Newsletter(txtnewsletter.Text);
                lblem.Text = "Record saved successfully";
                txtnewsletter.Text = "";
            }

        }

        protected void txtcid_TextChanged(object sender, EventArgs e)
        {
            start = DateTime.ParseExact(txtcid.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();
        }

        protected void txtcod_TextChanged(object sender, EventArgs e)
        {
            end = DateTime.ParseExact(txtcod.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();


        }

        protected void txtcid2_TextChanged(object sender, EventArgs e)
        {
            start = DateTime.ParseExact(txtcid2.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();
        }

        protected void txtcod2_TextChanged(object sender, EventArgs e)
        {
            end = DateTime.ParseExact(txtcod2.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();

        }

        protected void txtcid3_TextChanged(object sender, EventArgs e)
        {
            start = DateTime.ParseExact(txtcid3.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();
        }

        protected void txtcod3_TextChanged(object sender, EventArgs e)
        {
            end = DateTime.ParseExact(txtcod3.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();

        }

        protected void txtcid4_TextChanged(object sender, EventArgs e)
        {
            start = DateTime.ParseExact(txtcid4.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();
        }

        protected void txtcod4_TextChanged(object sender, EventArgs e)
        {
            end = DateTime.ParseExact(txtcod4.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();

        }

        protected void txtcid5_TextChanged(object sender, EventArgs e)
        {
            start = DateTime.ParseExact(txtcid5.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();
        }

        protected void txtcod5_TextChanged(object sender, EventArgs e)
        {
            end = DateTime.ParseExact(txtcod5.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();

        }

        protected void txtcid6_TextChanged(object sender, EventArgs e)
        {
            start = DateTime.ParseExact(txtcid6.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();
        }

        protected void txtcod6_TextChanged(object sender, EventArgs e)
        {
            end = DateTime.ParseExact(txtcod6.Text, "dd/MM/yyyy", new System.Globalization.DateTimeFormatInfo()).ToString();

        }



        protected void booking1_Click(object sender, EventArgs e)
        {
       

            Response.Redirect("~/Operations/RoomReservation.aspx?resdate=" + txtcid.Text + "&txtcid=" + txtcid.Text + "&txtcod=" + txtcod.Text + "&txtnod=" + diff);
        }

        protected void booking2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operations/RoomReservation.aspx?txtcid=" + txtcid2.Text + "&txtcod=" + txtcod2.Text + "&txtnod=" + diff);
        }

        protected void booking3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operations/RoomReservation.aspx?txtcid=" + txtcid3.Text + "&txtcod=" + txtcod3.Text + "&txtnod=" + diff);
        }

        protected void booking4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operations/RoomReservation.aspx?txtcid=" + txtcid4.Text + "&txtcod=" + txtcod4.Text + "&txtnod=" + diff);
        }

        protected void booking5_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operations/RoomReservation.aspx?resdate=" + txtcid5.Text + "&txtcid=" + txtcid5.Text + "&txtcod=" + txtcod5.Text + "&txtnod=" + diff);
        }

        protected void booking6_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operations/RoomReservation.aspx?resdate=" + txtcid6.Text + "&txtcid=" + txtcid6.Text + "&txtcod=" + txtcod6.Text + "&txtnod=" + diff);
        }


        
    }

}
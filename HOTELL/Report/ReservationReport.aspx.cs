using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HOTELL.Report
{
    public partial class ReservationReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SaveRecord.ResRep();
            SaveRecord.BindDataRes(ListView2);
        }

        protected void ListView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace HOTELL.Operations
{
    public partial class ListView_Practice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindPersonDetails("Name ASC");
        }

        protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
        {

        }

        private void BindPersonDetails(string sortExpression)
        {
            sortExpression = sortExpression.Replace("Ascending", "ASC");
            using (SqlConnection objConn = DBConnection.Connect())
            {
           //     objConn.Open();

                using (SqlDataAdapter adapt = new SqlDataAdapter("select * from Details order by Name", objConn))
                {
                    DataTable dTable = new DataTable();
                    adapt.Fill(dTable);

                    // sort now
                    dTable.DefaultView.Sort = sortExpression;
                    // Bind Data Now
                    ListView1.DataSource = dTable;
                    ListView1.DataBind();
                }
              //  objConn.Close();
            }
        }

        protected void InsertListViewItem(object sender, ListViewInsertEventArgs e)
        {
            ListViewItem item = e.Item;
            TextBox tName = (TextBox)item.FindControl("txtName");
            TextBox tAddress = (TextBox)item.FindControl("txtAddress");
            TextBox tPhone = (TextBox)item.FindControl("txtPhone");

            using (SqlConnection objConn = DBConnection.Connect())
            {
                string Sql = "insert into Details (Name,Address, Phone) values " + "(@Name,@Address,@Phone)";

           //     objConn.Open();
                using (SqlCommand dcmd = new SqlCommand(Sql,objConn))
                {
                    dcmd.Parameters.AddWithValue("@Name", tName.Text.Trim());
                    dcmd.Parameters.AddWithValue("@Address", tAddress.Text.Trim());
                    dcmd.Parameters.AddWithValue("@Phone", tPhone.Text.Trim());

                    dcmd.ExecuteNonQuery();
                }
            //    objConn.Close();
            }
            lblMessage.Text = "New Records Inserted Successfully.";

            //Rebind the Details
            BindPersonDetails("Name ASC");
        }

        protected void EditListViewItem(object sender, ListViewEditEventArgs e)
        {
            ListView1.EditIndex = e.NewEditIndex;
            // Rebind the Details
            BindPersonDetails("Name ASC");
        }

        protected void UpdateListViewItem(Object sender, ListViewUpdateEventArgs e)
        {
            ListViewItem item = ListView1.Items[e.ItemIndex];
            int autoID = int.Parse(ListView1.DataKeys[e.ItemIndex].Value.ToString());

            TextBox tName = (TextBox)item.FindControl("txtName");
            TextBox tAddress = (TextBox)item.FindControl("txtAddress");
            TextBox tPhone = (TextBox)item.FindControl("txtPhone");

            // insert records into database

            using (SqlConnection objConn = DBConnection.Connect())
            {
                string Sql = "update Details set Name = @Name, Address = @Address, Phone = @Phone where AutoID = @AutoID";

        //        objConn.Open();

                using (SqlCommand dcmd = new SqlCommand(Sql, objConn))
                {
                    dcmd.Parameters.AddWithValue("@AutoID", autoID);
                    dcmd.Parameters.AddWithValue("@Name", tName.Text.Trim());
                    dcmd.Parameters.AddWithValue("@Address", tAddress.Text.Trim());
                    dcmd.Parameters.AddWithValue("@Phone", tPhone.Text.Trim());

                    dcmd.ExecuteNonQuery();
                }
             //   objConn.Close();
                lblMessage.Text = "Records Updated Successfully.";
            }
           ListView1.EditIndex = -1;
            //Rebind the Details
            BindPersonDetails("Name ASC");
        }

        protected void CancelListViewItem(object sender, ListViewCancelEventArgs e)
        {
            ListView1.EditIndex = -1;
            //Rebind the Details
            BindPersonDetails("Name ASC");
        }

        protected void DeleteListViewItem(object sender, ListViewDeleteEventArgs e)
        {
            int autoID = int.Parse(ListView1.DataKeys[e.ItemIndex].Value.ToString());

            //insert records into database
            using(SqlConnection objConn = DBConnection.Connect())
            {
                string Sql = "delete from Details where AutoID = @AutoID";
           //     objConn.Open();
                using (SqlCommand dcmd = new SqlCommand(Sql, objConn))
                {
                    dcmd.Parameters.AddWithValue("@AutoID", autoID);
  
                    dcmd.ExecuteNonQuery();
                }
             //   objConn.Close();

                lblMessage.Text = "Records Deleted Successfully.";
            }
            //Rebind the Details
            BindPersonDetails("Name ASC");
        }

        protected void PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            //Rebind the Details
            BindPersonDetails("Name ASC");
        }

        protected void SortListViewRecords(object sender, ListViewSortEventArgs e)
        {
            string sortExpression = e.SortExpression + " " + e.SortDirection;
            BindPersonDetails(sortExpression);
        }
        
    }
}
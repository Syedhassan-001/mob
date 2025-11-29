using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class matchlist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }
        protected void gvMatchList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvMatchList.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void gvMatchList_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvMatchList.EditIndex = -1;
            BindGrid();
        }

        protected void gvMatchList_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvMatchList.DataKeys[e.RowIndex].Value);

            GridViewRow row = gvMatchList.Rows[e.RowIndex];
            string title = ((TextBox)row.Cells[1].Controls[0]).Text;
            string prize = ((TextBox)row.Cells[2].Controls[0]).Text;
            string entryFee = ((TextBox)row.Cells[3].Controls[0]).Text;
            string maxPlayer = ((TextBox)row.Cells[4].Controls[0]).Text;
            string roomId = ((TextBox)row.Cells[5].Controls[0]).Text;
            string roomPassword = ((TextBox)row.Cells[6].Controls[0]).Text;

            string constr = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = @"UPDATE creatematch SET 
                         title=@title, prize=@prize, entryfee=@entryfee,
                         maxplayer=@maxplayer, roomid=@roomid, roompassword=@roompassword
                         WHERE id=@id";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@title", title);
                    cmd.Parameters.AddWithValue("@prize", prize);
                    cmd.Parameters.AddWithValue("@entryfee", entryFee);
                    cmd.Parameters.AddWithValue("@maxplayer", maxPlayer);
                    cmd.Parameters.AddWithValue("@roomid", roomId);
                    cmd.Parameters.AddWithValue("@roompassword", roomPassword);
                    cmd.Parameters.AddWithValue("@id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            gvMatchList.EditIndex = -1;
            BindGrid();
        }

        protected void gvMatchList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvMatchList.DataKeys[e.RowIndex].Value);

            string constr = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                string query = "DELETE FROM creatematch WHERE id=@id";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }

            BindGrid();
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            BindGrid();
        }

        private void BindGrid()
        {
            string query = "SELECT * FROM creatematch";

            if (!string.IsNullOrEmpty(txtSearch.Text))
            {
                query += " WHERE title LIKE @search";
            }

            query += " ORDER BY [date&time] DESC";

            string constr = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    if (!string.IsNullOrEmpty(txtSearch.Text))
                    {
                        cmd.Parameters.AddWithValue("@search", "%" + txtSearch.Text + "%");
                    }

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvMatchList.DataSource = dt;
                        gvMatchList.DataBind();
                    }
                }
            }
        }
        protected void gvMatchList_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvMatchList.PageIndex = e.NewPageIndex;
            BindGrid();
        }

    }
}
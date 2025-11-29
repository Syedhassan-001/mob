using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class dashboard : System.Web.UI.Page
    {
        private readonly string connStr = ConfigurationManager.ConnectionStrings["connectionstring"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboard();
            }
        }

        private void LoadDashboard()
        {
            SetUserCount();
            SetWithdrawalCount();
            BindUserGrid();
            BindWithdrawalGrid();
            BindGridView3();
            SetreciptlCount();
        }

        // ================================
        // User Section
        // ================================

        private void SetUserCount()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [user]", con))
            {
                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                totalUsers.Text = $"Users ({count})";
            }
        }

        private void BindUserGrid()
        {
            string query = "SELECT * FROM [user]";
            bool hasSearch = !string.IsNullOrWhiteSpace(txtSearch.Text);

            if (hasSearch)
            {
                query += " WHERE email LIKE @search";
            }

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                if (hasSearch)
                    cmd.Parameters.AddWithValue("@search", "%" + txtSearch.Text.Trim() + "%");

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            BindUserGrid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindUserGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindUserGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            GridViewRow row = GridView1.Rows[e.RowIndex];

            string name = ((TextBox)row.Cells[1].Controls[0]).Text;
            string email = ((TextBox)row.Cells[2].Controls[0]).Text;
            string phone = ((TextBox)row.Cells[3].Controls[0]).Text;
            string totalcoin = ((TextBox)row.Cells[4].Controls[0]).Text;

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("UPDATE [user] SET Name=@Name, Email=@Email, Phone=@Phone, Totalcoin=@Totalcoin WHERE Id=@Id", con))
            {
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Totalcoin", totalcoin);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            GridView1.EditIndex = -1;
            BindUserGrid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("DELETE FROM [user] WHERE Id = @Id", con))
            {
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            BindUserGrid();
        }

        // ================================
        // Withdrawal Section
        // ================================

        private void SetWithdrawalCount()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM withdrawl", con))
            {
                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                txtwithdrawl.Text = $"Withdrawals ({count})";
            }
        }

        private void BindWithdrawalGrid()
        {
            string query = "SELECT * FROM withdrawl";
            bool hasSearch = !string.IsNullOrWhiteSpace(txtsearch2.Text);

            if (hasSearch)
            {
                query += " WHERE Date LIKE @search";
            }

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                if (hasSearch)
                    cmd.Parameters.AddWithValue("@search", "%" + txtsearch2.Text.Trim() + "%");

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
                }
            }
        }

        protected void txtSearch2_TextChanged(object sender, EventArgs e)
        {
            BindWithdrawalGrid();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            BindWithdrawalGrid();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            BindWithdrawalGrid();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);
            GridViewRow row = GridView2.Rows[e.RowIndex];

            string name = ((TextBox)row.Cells[1].Controls[0]).Text;
            string amount = ((TextBox)row.Cells[2].Controls[0]).Text;
            string method = ((TextBox)row.Cells[3].Controls[0]).Text;
            string accountDetails = ((TextBox)row.Cells[4].Controls[0]).Text;

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("UPDATE withdrawl SET Name=@Name, Amount=@Amount, Method=@Method, Accountdetails=@Accountdetails WHERE Id=@Id", con))
            {
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Amount", amount);
                cmd.Parameters.AddWithValue("@Method", method);
                cmd.Parameters.AddWithValue("@Accountdetails", accountDetails);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            GridView2.EditIndex = -1;
            BindWithdrawalGrid();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView2.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("DELETE FROM withdrawl WHERE Id = @Id", con))
            {
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            BindWithdrawalGrid();
        }
        // ================================
        // recipt Section
        // ================================
        private void SetreciptlCount()
        {
            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM recipt", con))
            {
                con.Open();
                int count = Convert.ToInt32(cmd.ExecuteScalar());
                txtrecipt.Text = $"Recipt ({count})";
            }
        }

        private void BindGridView3()
        {
            string query = "SELECT * FROM recipt";

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand(query, con))
            using (SqlDataAdapter da = new SqlDataAdapter(cmd))
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView3.DataSource = dt;
                GridView3.DataBind();
            }
        }

        protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView3.EditIndex = e.NewEditIndex;
            BindGridView3();
        }

        protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView3.EditIndex = -1;
            BindGridView3();
        }

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Value);
            GridViewRow row = GridView3.Rows[e.RowIndex];

            string name = ((TextBox)row.Cells[1].Controls[0]).Text;
            string email = ((TextBox)row.Cells[2].Controls[0]).Text;
            string date = ((TextBox)row.Cells[3].Controls[0]).Text;

            FileUpload fileUpload = (FileUpload)row.FindControl("FileUploadRecipt");
            string reciptFileName = "";

            if (fileUpload.HasFile)
            {
                string folderPath = Server.MapPath("~/Uploads/");
                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }
                reciptFileName = Path.GetFileName(fileUpload.FileName);
                fileUpload.SaveAs(Path.Combine(folderPath, reciptFileName));
            }
            else
            {
                Image img = (Image)row.FindControl("ImageReciptEdit");
                reciptFileName = Path.GetFileName(img.ImageUrl);
            }

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("UPDATE recipt SET Name=@Name, Email=@Email, Date=@Date, Recipt=@Recipt WHERE Id=@Id", con))
            {
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Date", date);
                cmd.Parameters.AddWithValue("@Recipt", reciptFileName);
                cmd.Parameters.AddWithValue("@Id", id);

                con.Open();
                cmd.ExecuteNonQuery();
            }

            GridView3.EditIndex = -1;
            BindGridView3();
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView3.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(connStr))
            using (SqlCommand cmd = new SqlCommand("DELETE FROM recipt WHERE Id = @Id", con))
            {
                cmd.Parameters.AddWithValue("@Id", id);
                con.Open();
                cmd.ExecuteNonQuery();
            }

            BindGridView3();
        }


    }
}
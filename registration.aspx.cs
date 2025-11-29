using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            // Get form inputs
            string title = ddlMatchType.Text;
            string prize = txtPrize.Text;
            string entryFee = txtEntryFee.Text;
            string maxPlayer = txtMaxPlayer.Text;
            string roomId = txtRoomId.Text;
            string roomPassword = txtRoomPassword.Text;

            // Validate and convert datetime
            DateTime parsedDate;
            bool isValidDate = DateTime.TryParse(txtDateTime.Text, out parsedDate);
            if (!isValidDate)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Invalid Date Format!');", true);
                return;
            }

            // Prepare SQL query with parameters
            string qry = "INSERT INTO creatematch (title, Prize, entryfee, maxplayer, roomid, roompassword, [date&time]) " +
                         "VALUES (@title, @prize, @entryFee, @maxPlayer, @roomId, @roomPassword, @dateTime)";

            SqlParameter[] parameters = new SqlParameter[]
            {
        new SqlParameter("@title", title),
        new SqlParameter("@prize", prize),
        new SqlParameter("@entryFee", entryFee),
        new SqlParameter("@maxPlayer", maxPlayer),
        new SqlParameter("@roomId", roomId),
        new SqlParameter("@roomPassword", roomPassword),
        new SqlParameter("@dateTime", parsedDate)
            };

            DB db = new DB();
            int result = db.ExecuteNoneQry(qry, parameters);

            if (result > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Match created successfully!');", true);

                // Optional: Clear the form after success
                ddlMatchType.ClearSelection();
                txtPrize.Text = "";
                txtEntryFee.Text = "";
                txtMaxPlayer.Text = "";
                txtRoomId.Text = "";
                txtRoomPassword.Text = "";
                txtDateTime.Text = "";
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Something went wrong.');", true);
            }
        }

    }
}
using System;
using System.Data.SqlClient;
using womensos.DAL;

namespace womensos
{
    public partial class DatabaseTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            try
            {
                DatabaseHelper db = new DatabaseHelper();

                using (SqlConnection con = db.GetConnection())
                {
                    con.Open();

                    lblMessage.Text = "Database Connected Successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Database Connection Failed: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
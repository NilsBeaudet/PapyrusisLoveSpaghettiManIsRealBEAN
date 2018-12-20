using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteWebSoloBEAN
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["BBB"] != null)
            {
                tb1.Text = Session["BBB"].ToString();
            }
        }

        protected void grdMovies_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            /*Fill Gridview*/
            grdMovies.PageIndex = e.NewPageIndex;
            grdMovies.DataBind();
        }

        protected void AAAAAAAAAAAA_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session["BBB"] = tb1.Text.ToString();
            String sql = "INSERT INTO [Movies] ([Title], [Director]) VALUES (@Title, @Director)";
            SqlConnection cnn = new SqlConnection(SqlDataSource.ConnectionString);
            cnn.Open();
            using (SqlCommand cmd = new SqlCommand(sql, cnn))
            {
                cmd.Parameters.AddWithValue("@Title", tb1.Text);
                cmd.Parameters.AddWithValue("@Director", tb2.Text);
                cmd.ExecuteNonQuery();
            }
            cnn.Close();
        }
    }
}
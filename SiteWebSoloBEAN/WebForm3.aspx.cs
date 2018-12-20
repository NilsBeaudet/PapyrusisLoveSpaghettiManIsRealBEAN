using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteWebSoloBEAN
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Cookie"] != null)
            {
                Results.DataSource = Server.HtmlEncode(Request.Cookies["Cookie"]["Date"]);
                Results.DataBind();
                
            }
        }

        protected void choisirdate_Click(object sender, EventArgs e)
        {

            Response.Cookies["Cookie"]["Date"] = Calendar1.SelectedDate.Date.ToString();
            Results.DataSource = Calendar1.SelectedDates;
            Results.DataBind();
        }
    }
}
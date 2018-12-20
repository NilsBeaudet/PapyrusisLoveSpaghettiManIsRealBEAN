using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteWebSoloBEAN
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LienVersYoutube_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.youtube.com/watch?v=6RL6JcEHw2U");
        }
    }
}
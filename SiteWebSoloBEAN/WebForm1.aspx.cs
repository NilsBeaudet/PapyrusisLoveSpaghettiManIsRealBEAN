using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteWebSoloBEAN
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        int counter;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Cookie"] != null)
            {
                tbNom.Text = Server.HtmlEncode(Request.Cookies["Cookie"]["nom"]);

                tbEmail.Text = Server.HtmlEncode(Request.Cookies["Cookie"]["Email"]);
            }

            if (Request.Cookies["counter"] == null)
            {
                counter = 0;
            }
            else
            {
                counter = int.Parse(Request.Cookies["counter"].Value);
            }
            
      
            if(counter > 0)
            {
                Response.Redirect("WebForm2.aspx");
            }
            counter++;

            Response.Cookies["counter"].Value = counter.ToString();
            Response.Cookies["counter"].Expires = DateTime.Now.AddDays(1);
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
    }
}
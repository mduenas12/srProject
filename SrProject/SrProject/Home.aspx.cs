using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SrProject
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            int count = 0;

            count++;

            ViewState["count"] = Convert.ToInt32(ViewState["count"]) + count;

            lblAjax.Text = ViewState["count"].ToString();

            GridView1.Visible = true;
        }

       
    }
}
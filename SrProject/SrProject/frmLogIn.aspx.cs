using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SrProject
{
    public partial class frmLogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtUser.Value = ""; //can't do this, it will clear on btnSubmit click. no label change 

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblOut.Text = txtUser.Value;
            //lblOut.Text = "whatever dooood";
        }
    }
}
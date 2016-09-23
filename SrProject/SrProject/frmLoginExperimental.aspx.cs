using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
namespace SrProject
{
    public partial class frmLoginExperimental : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            lblOut.Text = String.Format("Username = {0} // Password = {1} ", txtUser.Value, txtPass.Value);

            //dsUserLogin ds;
            DataTable dt = new DataTable();
            dt = clsDataLayer.VerifyUser(Server.MapPath("Elite.accdb"), txtUser.Value, txtPass.Value);
            

            if (dt.Rows.Count == 1)
            {
                Session["SecurityLevel"] = dt.Rows[0]["SecurityLevel"];//pulls value retrieved under column of table dt named "SecurityLevel"                
                lblOut.Text = (string)(Session["SecurityLevel"]); //test to assign session variable to the label = pulling security value works
                Response.Redirect("Main.aspx");
            }
            else
            {
                lblOut.Text = "validation failed";

            }




        }









    }
}
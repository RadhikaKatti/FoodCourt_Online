using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Court_Application.Restaurant
{
    public partial class Restaurant_Master_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Rest_Name"] == null || Session["Rest_Name"].ToString() == "")
            {
                Response.Redirect("../Home.aspx");
            }
        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("../Home.aspx");
        }
    }
}
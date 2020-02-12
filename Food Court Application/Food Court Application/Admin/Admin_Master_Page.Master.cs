using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Court_Application.Admin
{
    public partial class Admin_Master_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] == null || Session["Admin"].ToString() == "")
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
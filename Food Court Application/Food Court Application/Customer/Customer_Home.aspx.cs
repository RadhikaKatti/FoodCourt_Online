using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Court_Application.Customer
{
    public partial class Customer_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblname.Text = Session["Cust_Name"].ToString();
        }
    }
}
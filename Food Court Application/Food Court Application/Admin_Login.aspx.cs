using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Court_Application
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Admin where User_Name='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'", Db_Connection);
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Admin"] = TextBox1.Text;
                Response.Redirect("/Admin/Admin_Home.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Failed')", true);
            }
        }
    }
}
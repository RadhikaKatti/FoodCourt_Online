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
    public partial class Customer_Login : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from tbl_Users_Details where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' and Status='Active'", Db_Connection);
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["Email"] = TextBox1.Text;
                Session["CustomerId"] = sdr[0].ToString();
                Session["Password"] = TextBox2.Text;
                Session["Cust_Name"] = sdr[1].ToString()+" "+ sdr[2].ToString()+" "+ sdr[3].ToString();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Success')", true);
                Response.Redirect("/Customer/Customer_Home.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Failed')", true);
            }
        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            Session["ForgotType"] = "tbl_Users_Details";
            Response.Redirect("Forgot_Password.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Court_Application.Customer
{
    public partial class Change_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtuserid.Text = Session["Email"].ToString();
        }
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void btnchangepwd_Click(object sender, EventArgs e)
        {

            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            if (Session["Password"].ToString() == txtoldpwd.Text)
            {
                SqlCommand cmd = new SqlCommand("update tbl_Users_Details set Password='" + txtnewpwd.Text + "' where Email='" + txtuserid.Text + "'", Db_Connection);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Success')", true);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Fail')", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Plz enter correct password')", true);
            }
        }
    }
}

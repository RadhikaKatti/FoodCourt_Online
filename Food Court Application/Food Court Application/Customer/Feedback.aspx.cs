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
    public partial class Feedback : System.Web.UI.Page
    {
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Feedback_Click(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("insert into tbl_Feedback values('" + Session["CustomerId"].ToString() + "','" + Session["Restaurant_Id"].ToString() + "','" + txtfeedback.Text + "')", Db_Connection);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' success')", true);
            }
            else 
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Failed')", true);
            }
        }
    }
}
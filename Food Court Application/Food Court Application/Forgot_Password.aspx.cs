using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Court_Application
{
    public partial class Forgot_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void btnForgot_Click(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select * from "+ Session["ForgotType"].ToString() + " where Email='" + TextBox1.Text + "' and Status='Active'", Db_Connection);
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Mail(sdr["Password"].ToString());

                Label2.Text = "Your Credentials Details Sent to Your EmailId";
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Email Id')", true);
            }
        }
        private void Mail(string Password)
        {
            try
            {
                string Role = null;
                if (Session["ForgotType"].ToString() == "tbl_Restaurants_Details")
                    Role = "Restaurant";
                else
                    Role = "Customer";
                string Body = "Your Login Details\n\n\nRole = " + Role + "\n\nEmailId = " + TextBox1.Text + "\n\nPassword = " + Password + "";

                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("rxk88350@ucmo.edu");
                mail.To.Add(TextBox1.Text);
                mail.Subject = "Login Credentials";
                mail.Body = Body;
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("rxk88350@ucmo.edu", "Welcome!123");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
            }
            catch (Exception e)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('NetWork error')", true);
            }

        }

        protected void lbtn_Click(object sender, EventArgs e)
        {
            if (Session["ForgotType"].ToString() == "tbl_Restaurants_Details")
                Response.Redirect("Restaurant_Login.aspx");
            else
                Response.Redirect("Customer_Login.aspx");
        }
    }
}
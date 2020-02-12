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
    public partial class Customer_Registration : System.Web.UI.Page
    {
        String id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                getUserId();
        }
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        public void getUserId()
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from tbl_Users_Details", Db_Connection);
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                int i = Convert.ToInt32(sdr[0].ToString()) + 1;

                if (i > 0 && i <= 9)
                    id = "000" + i;
                else if (i > 9 && i <= 99)
                    id = "00" + i;

                else if (i > 99 && i <= 999)
                    id = "0" + i;
                else
                    id = i.ToString();
            }
            txtuserid.Text = id.ToString();
        }
        int num;
        private void randomPassword()
        {
            Random r = new Random();
            num = r.Next(0, 100000);
        }

        protected void btn_customer_registration_Click(object sender, EventArgs e)
        {
            randomPassword();
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string date = DateTime.Now.ToString("yyyy-MM-dd hh:mm tt");
            SqlCommand cmd = new SqlCommand("insert into tbl_Users_Details values('" + txtuserid.Text + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + num + "','" + Convert.ToInt64(txtmob.Text) + "','" + txtadrs.Text + "','Active','" + date + "','" + date + "')", Db_Connection);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Success')", true);
                Mail();
                txtfname.Text = "";
                txtmname.Text = "";
                txtlname.Text = "";
                txtmob.Text = "";
                txtemail.Text = "";
                txtadrs.Text = "";
            }

            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Fail')", true);
            }
        }
        private void Mail()
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("rxk88350@ucmo.edu");
                mail.To.Add(txtemail.Text);
                mail.Subject = "Test Mail";
                mail.Body = "Hi your registration is success \n Your Password='" + num + "'";
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("rxk88350@ucmo.edu", "Welcome!123");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
            }
            catch (Exception e)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('NetWork error ')", true);
            }

        }
    }
}



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

namespace Food_Court_Application.Customer
{
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            txtbookingid.Text = Session["BookingId"].ToString();
        }
        string userEmailid;
        protected void btnPay_Click(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string date = DateTime.Now.ToString("yyyy-MM-dd hh:mm tt");
            string query = "insert into tbl_Payments values('"+Session["CustomerId"].ToString()+"','" + txtbookingid.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtcardholder.Text + "'," + txtcardnumber.Text + ",'" + txtcvv.Text + "','" + txtexdate.Text + "','" + date + "','" + date + "'); ";
            query += "update tbl_Bookings set Status='Processing' where Booking_Id='" + txtbookingid.Text + "' ";
            SqlCommand cmd = new SqlCommand(query, Db_Connection);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Mail();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Success')", true);
               
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Fail')", true);
            }
        }
        private void GetEmailId()
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Users_Details where User_Id= '"+Session["CustomerId"].ToString()+"'  ", Db_Connection);
            cmd.Connection = Db_Connection;
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                userEmailid = sdr["Email"].ToString();
            }
        }
        private void Mail()
        {
            try
            {
                GetEmailId();
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("rxk88350@ucmo.edu");
                mail.To.Add(userEmailid);
                mail.Subject = "Test Mail";
                mail.Body = "Hi your Product is : Ordered";
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
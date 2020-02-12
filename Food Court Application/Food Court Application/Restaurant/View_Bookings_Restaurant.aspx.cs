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

namespace Food_Court_Application.Restaurant
{
    public partial class View_Bookings_Restaurant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getbookings();
            }
        }
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        private void getbookings()
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string query = "select CONVERT(varchar, tbl_Bookings.Created_At, 105) as Date, Booking_Id, CONCAT(tbl_Users_Details.First_Name, ' ', tbl_Users_Details.Middle_Name) AS Name, " +
                "tbl_Bookings.User_Id, Product, Price, Quantity, Amount, tbl_Bookings.Status, Photo from tbl_Bookings inner join tbl_Restaurants_Details on " +
                "tbl_Bookings.Restaurant_Id=tbl_Restaurants_Details.Restaurant_Id inner join tbl_Food_Items  on tbl_Bookings.Restaurant_Id=tbl_Food_Items.Restaurant_Id " +
                "inner join tbl_Users_Details on tbl_Bookings.User_Id=tbl_Users_Details.User_Id  where tbl_Bookings.Restaurant_Id='" + Session["RID"].ToString() + "' " +
                "and tbl_Bookings.Item_Id=tbl_Food_Items.Item_Id and tbl_Bookings.Status!='Pending'";
            SqlCommand cmd = new SqlCommand(query, Db_Connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
       
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DropDownList Status1 = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
            string status = Status1.Text;
            Label Booking_Id= (Label)GridView1.Rows[e.RowIndex].FindControl("Label3");
            Label User_Id = (Label)GridView1.Rows[e.RowIndex].FindControl("Label2");
            string userId = User_Id.Text;
            Session["Booking_ID"] = Booking_Id.Text;
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string date = DateTime.Now.ToString("yyyy-MM-dd hh:mm tt");
            SqlCommand cmd = new SqlCommand("update tbl_Bookings set Status='"+Status1.Text+ "', Updated_At='" + date + "' where Booking_Id='" + Session["Booking_ID"].ToString()+"'  ", Db_Connection);
            cmd.ExecuteNonQuery();
            GetEmailId(userId, status);
            GridView1.EditIndex = -1;
            getbookings();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getbookings();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getbookings();
        }
        private void GetEmailId(string userId, string status)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Users_Details where User_Id='" + userId + "' ", Db_Connection);
            cmd.Connection = Db_Connection;
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Mail(sdr["Email"].ToString(), status);
            }
        }
        private void Mail(string email, string status)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("rxk88350@ucmo.edu");
                mail.To.Add(email);
                mail.Subject = "Test Mail";
                mail.Body = "Hi your Order Details is : \n'" + status + "'";
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
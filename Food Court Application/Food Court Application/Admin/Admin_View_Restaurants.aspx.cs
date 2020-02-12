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

namespace Food_Court_Application.Admin
{
    public partial class Admin_View_Restaurants : System.Web.UI.Page
    {
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
                bind();
        }

        private void bind()
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Restaurants_Details", Db_Connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            bind();
        }
        string emailid,status;
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DropDownList Status1 = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
            status = Status1.Text;
            Label restaurant_id = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            Label Email = (Label)GridView1.Rows[e.RowIndex].FindControl("Label4");
            emailid = Email.Text;
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("update tbl_Restaurants_Details set Status='" + Status1.Text + "' where  Restaurant_Id='" + restaurant_id.Text + "' ", Db_Connection);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            bind();
            Mail();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }
        private void Mail()
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("rxk88350@ucmo.edu");
                mail.To.Add(emailid);
                mail.Subject = "Test Mail";
                mail.Body = "Hi your Restaurant is : \n'" + status + "'";
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
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
    public partial class View_Bookings : System.Web.UI.Page
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
            string query = "select CONVERT(varchar, tbl_Bookings.Created_At, 105) as Date, Restaurant_Name, Booking_Id, Product, Price, Quantity, Amount, " +
                "tbl_Bookings.Status, tbl_Bookings.Restaurant_Id, tbl_Bookings.User_Id, tbl_Bookings.Item_Id, Photo from tbl_Bookings inner join " +
                "tbl_Restaurants_Details on tbl_Bookings.Restaurant_Id=tbl_Restaurants_Details.Restaurant_Id inner join tbl_Food_Items on " +
                "tbl_Bookings.Restaurant_Id=tbl_Food_Items.Restaurant_Id  where tbl_Bookings.User_Id='" + Session["CustomerId"].ToString() + "' and " +
                "tbl_Bookings.Item_Id=tbl_Food_Items.Item_Id and tbl_Bookings.Status!='Pending'";
            SqlCommand cmd = new SqlCommand(query, Db_Connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton l = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)l.NamingContainer;
            Label Restaurant_Id = (Label)gr.FindControl("Label10");
            Session["Restaurant_Id"] = Restaurant_Id.Text;
            Response.Redirect("Feedback.aspx");
        }
    }
}
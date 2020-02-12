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
    public partial class Order_Items : System.Web.UI.Page
    {
        String id;
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetBookingId();
                GetItems();
            }
        }

        private void GetBookingId()
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from tbl_Bookings", Db_Connection);
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
                    id = "" + i;
                txtbookingid.Text = id.ToString();
            }
        }
        private void GetItems()
        {
            txtitemid.Text = Session["Item_Id"].ToString();

            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select  Restaurant_Name, Category, Product, Photo,Price from tbl_Food_Items inner join tbl_Restaurants_Details on tbl_Food_Items.Restaurant_Id = tbl_Restaurants_Details.Restaurant_Id where Item_Id='" + Session["Item_Id"].ToString() + "' ", Db_Connection);
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                txtrestaurantname.Text = sdr[0].ToString();

                txtcategory.Text = sdr[1].ToString();
                txtproduct.Text = sdr[2].ToString();
                txtprice.Text = sdr[4].ToString();
                Image1.ImageUrl = sdr[3].ToString();
            }
        }
        protected void txtqty_TextChanged(object sender, EventArgs e)
        {
            if (txtqty.Text != "")
            {
                int a = Convert.ToInt32(txtqty.Text);
                int b = Convert.ToInt32(txtprice.Text);
                txtamount.Text = (a * b).ToString();
            }
        }
        protected void btn_orderitems_Click(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string date = DateTime.Now.ToString("yyyy-MM-dd hh:mm tt");
            SqlCommand cmd = new SqlCommand("insert into tbl_Bookings values('" + txtbookingid.Text + "','" + Session["CustomerId"].ToString() + "','" + Session["Restaurant_Id"].ToString() + "','" + Session["Item_Id"].ToString() + "','" + txtqty.Text + "','" + txtamount.Text + "','Pending','" + date + "','" + date + "')", Db_Connection);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Session["BookingId"] = txtbookingid.Text;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Success')", true);
                Response.Redirect("Payment.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Booking_Id already used')", true);
            }
        }
    }
}

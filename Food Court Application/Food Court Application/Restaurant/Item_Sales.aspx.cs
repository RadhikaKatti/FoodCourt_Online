using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;  

namespace Food_Court_Application.Restaurant
{
    public partial class Item_Sales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string From_Date = ConvertDate(txtfdate.Text);
            string To_Date = ConvertDate(txttodate.Text);
            string query = "" +
                "select CONVERT(varchar, tbl_Bookings.Created_At, 105) as Date, Booking_Id, CONCAT(tbl_Users_Details.First_Name, ' ', tbl_Users_Details.Middle_Name) AS Name, " +
                "tbl_Bookings.User_Id, Product, Price, Quantity, Amount, tbl_Bookings.Status, Photo from tbl_Bookings inner join tbl_Restaurants_Details on " +
                "tbl_Bookings.Restaurant_Id=tbl_Restaurants_Details.Restaurant_Id inner join tbl_Food_Items on " +
                "tbl_Bookings.Restaurant_Id=tbl_Food_Items.Restaurant_Id inner join tbl_Users_Details on tbl_Bookings.User_Id=tbl_Users_Details.User_Id " +
                "where tbl_Bookings.Restaurant_Id='" + Session["RID"].ToString() + "' and tbl_Bookings.Item_Id=tbl_Food_Items.Item_Id and " +
                "tbl_Bookings.Status!='Pending' and (convert(date, tbl_Bookings.Created_At, 105) between " +
                "(convert(date, '" + From_Date + "', 105)) and (convert(date, '" + To_Date + "', 105)))";

            SqlCommand cmd = new SqlCommand(query, Db_Connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        public string ConvertDate(string s)
        {
            string[] date = s.Split('-');
            return date[2] + "-" + date[1] + "-" + date[0];
        }
    }
}
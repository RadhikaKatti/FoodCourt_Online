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
    public partial class Highest_Sold_Items : System.Web.UI.Page
    {
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string[] array = new string[5];
            SqlCommand cmd = new SqlCommand("select top 5 Item_Id from tbl_Bookings where Restaurant_Id='"+ Session["RId"].ToString() + "' group by Item_Id order by count(Item_Id) desc", Db_Connection);
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            for (int i = 0; sdr.Read(); i++)
            {
                array[i] = sdr[0].ToString();
            }

            string query = "select Category, Photo, Product, Price from tbl_Food_Items where Item_Id='" + array[0] + "' or " +
                "Item_Id='" + array[1] + "' or Item_Id='" + array[2] + "' or Item_Id='" + array[3] + "' or Item_Id='" + array[4] + "' ";
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd1 = new SqlCommand(query, Db_Connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd1);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            dlSoldItems.DataSource = ds;
            dlSoldItems.DataBind();
        }
    }
}
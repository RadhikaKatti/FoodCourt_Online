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
    public partial class Search_Food_Items : System.Web.UI.Page
    {
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                txtsearch.Focus();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string query = "select Item_Id, Restaurant_Name,tbl_Food_Items.Restaurant_Id, Category, Product, Photo,Price from tbl_Food_Items inner join " +
                "tbl_Restaurants_Details on tbl_Food_Items.Restaurant_Id = tbl_Restaurants_Details.Restaurant_Id where tbl_Food_Items.Status='Active' and " +
                "(tbl_Food_Items.Category like '%' + '" + txtsearch.Text + "' + '%' or tbl_Food_Items.Product like '%' + '" + txtsearch.Text + "' + '%' or " +
                "tbl_Restaurants_Details.Restaurant_Name like '%' + '" + txtsearch.Text + "' + '%')";
            SqlCommand cmd = new SqlCommand(query, Db_Connection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            LinkButton l = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)l.NamingContainer;
            Label Item_Id = (Label)gr.FindControl("Label1");
            Label Restaurant_Id = (Label)gr.FindControl("Label6");
            Session["Item_Id"] = Item_Id.Text;
            Session["Restaurant_Id"] = Restaurant_Id.Text;
            Response.Redirect("Order_Items.aspx");
        }
    }
}

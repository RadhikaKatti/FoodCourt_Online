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
    public partial class View_Items : System.Web.UI.Page
    {
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
        }

        private void bind()
        {
            Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Food_Items inner join tbl_Restaurants_Details on tbl_Food_Items.Restaurant_Id = tbl_Restaurants_Details.Restaurant_Id where tbl_Restaurants_Details.Restaurant_Id='" + Session["RID"].ToString() + "'", Db_Connection);

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
        String s;
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Item_Id = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
           DropDownList Category = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList2");
           TextBox Product = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtproduct");
            TextBox Price = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtprice");
            DropDownList Status = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
            FileUpload f = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
            if (f.HasFile)
            {
                s = "../images/" + f.FileName;
                f.PostedFile.SaveAs(Server.MapPath(s));
            }
            else
            {
                Image img1 = (Image)GridView1.Rows[e.RowIndex].FindControl("Image1");
                s = img1.ImageUrl;
            }

            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string date = DateTime.Now.ToString("yyyy-MM-dd hh:mm tt");
            SqlCommand cmd = new SqlCommand("update tbl_Food_Items set Category='" + Category.Text + "',Product='" + Product.Text + "',Price='" + Price.Text + "',Status= '" + Status.Text + "',Updated_At='" + date + "',Photo='" + s + "'  where Item_Id='" + Item_Id.Text + "' ", Db_Connection);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            bind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label Item_Id = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
           
            SqlCommand cmd = new SqlCommand("delete from tbl_Food_Items where Item_Id='" + Item_Id.Text + "'", Db_Connection);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            bind();
        }
    }
}
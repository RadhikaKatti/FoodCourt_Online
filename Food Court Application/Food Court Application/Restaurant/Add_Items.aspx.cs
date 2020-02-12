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
    public partial class Add_Items : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtrestaurantid.Text = Session["RId"].ToString();
        }
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);

        string s;
        protected void btn_additems_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                s = "/images/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(s));

                if (Db_Connection.State == ConnectionState.Open)
                    Db_Connection.Close();
                Db_Connection.Open();
                string date = DateTime.Now.ToString("yyyy-MM-dd hh:mm tt");
                SqlCommand cmd = new SqlCommand("insert into tbl_Food_Items values('" + txtrestaurantid.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtproduct.Text + "','" + txtprice.Text + "','" + s + "','Active','" + date + "','" + date + "')", Db_Connection);
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Success')", true);
                    txtprice.Text = "";
                    txtproduct.Text = "";
                    
                }

                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Fail')", true);
                }
            }
        }
    }
}


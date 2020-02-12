﻿using System;
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
    public partial class Customer_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                bind();
        }
        SqlConnection Db_Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Db_Connection"].ConnectionString);
        private void bind()
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            SqlCommand cmd = new SqlCommand("select * from tbl_Users_Details where Email ='" + Session["Email"].ToString() + "'", Db_Connection);
            SqlDataReader sdr;
            sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                txtuserid.Text = sdr[0].ToString();
                txtfname.Text = sdr[1].ToString();
                txtmname.Text = sdr[2].ToString();
                txtlname.Text = sdr[3].ToString();
                txtemail.Text = sdr[4].ToString();
                txtmob.Text = sdr[6].ToString();
                txtadrs.Text = sdr[7].ToString();
                txtcreatedat.Text = sdr[9].ToString();
                txtupdatedat.Text = sdr[10].ToString();
            }
        }
        protected void btn_edit_Click(object sender, EventArgs e)
        {
            txtfname.Enabled = true;
            txtmname.Enabled = true;
            txtlname.Enabled = true;
            txtmob.Enabled = true;
            txtadrs.Enabled = true;
        }
        protected void btn_update_Click(object sender, EventArgs e)
        {
            if (Db_Connection.State == ConnectionState.Open)
                Db_Connection.Close();
            Db_Connection.Open();
            string date = DateTime.Now.ToString("yyyy-MM-dd hh:mm tt");
            SqlCommand cmd = new SqlCommand("update  tbl_Users_Details set First_Name='" + txtfname.Text + "',Middle_Name='" + txtmname.Text + "',Last_Name='" + txtlname.Text + "', Mobile_Number='" + txtmob.Text + "',Address='" + txtadrs.Text + "',Updated_At='"+date+"' where Email='"+Session["Email"].ToString()+"' ", Db_Connection);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(' Success')", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Fail')", true);
            }
        }
        }
    }
    

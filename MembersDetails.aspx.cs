using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MembersDetails
{
    public partial class MembersDetails : System.Web.UI.Page
    {
        string constring = "Server=DESKTOP-F8LKLU5;Database=MEMBERS;Trusted_Connection=true";
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }
        

        protected void Save_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("insertdata", con);
            con.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("Name", txtname.Text);
            command.Parameters.AddWithValue("PhoneNo", txtphno.Text);
            command.Parameters.AddWithValue("ID_Proof", drdnidproof.Text);
            command.Parameters.AddWithValue("Adhar_or_PanNo", txtadharpan.Text);
            command.Parameters.AddWithValue("MembersId", txtmemrid.Text);
            command.Parameters.AddWithValue("JoiningDate", txtjoindate.Text);
            command.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Data is saved Successfully";
            lblmsg.ForeColor = Color.Blue;
           

        }

        protected void Show_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("GetData", con);
            memberview.DataSourceID = SqlDataSource1.ID;
            memberview.DataBind();
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("updatedata", con);
            con.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("Mno", txtmno.Text);
            command.Parameters.AddWithValue("Name", txtname.Text);
            command.Parameters.AddWithValue("PhoneNo", txtphno.Text);
            command.Parameters.AddWithValue("ID_Proof", drdnidproof.Text);
            command.Parameters.AddWithValue("Adhar_or_PanNo", txtadharpan.Text);
            command.Parameters.AddWithValue("MembersId", txtmemrid.Text);
            command.Parameters.AddWithValue("JoiningDate", txtjoindate.Text);
            command.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Data is Updated Successfully";
            lblmsg.ForeColor = Color.Blue;
          
           
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("deletedata", con);
            con.Open();
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("Mno", txtmno.Text);
            command.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "data is deleted";
            lblmsg.ForeColor = Color.Blue;
           

        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("Editdata", con);
            con.Open();
            command.Parameters.AddWithValue("Mno", txtmno.Text);

            //command.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader reader = command.ExecuteReader();
            
            while(reader.Read())
            {
                txtname.Text = reader["Name"].ToString();
                txtphno.Text = reader["PhoneNo"].ToString();
                drdnidproof.SelectedValue = reader["ID_Proof"].ToString();
                txtadharpan.Text = reader["Adhar_or_PanNo"].ToString();
                txtmemrid.Text = reader["MembersId"].ToString();
                txtjoindate.Text = reader["JoiningDate"].ToString();
            }
            con.Close();
            lblmsg.Text = "data is get";
            lblmsg.ForeColor = Color.Blue;

        }

       
        protected void Clear_Click(object sender, EventArgs e)
        {
            txtmno.Text = "";
            txtname.Text = "";
            txtphno.Text = "";
            drdnidproof.SelectedValue = "";
            txtadharpan.Text = "";
            txtmemrid.Text = "";
            txtjoindate.Text = "";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejendoms_Projekt2
{
    public partial class NybrugerOgLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["EjendomsConection"].ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            cmd.CommandText = @"INSERT INTO Users (username, password)VALUES(@username, @password)";
            cmd.Parameters.AddWithValue("@username", TextBoxUsername.Text);
            cmd.Parameters.AddWithValue("@password", TextBoxPassword.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["EjendomsConection"].ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;

            cmd.CommandText = @"SELECT * FROM Users WHERE username = @username AND password = @password";
            cmd.Parameters.AddWithValue("@username", TextBoxLoginUsername.Text);
            cmd.Parameters.AddWithValue("@password", TextBoxLoginPassword.Text);

            conn.Open();
            SqlDataReader Reader = cmd.ExecuteReader();

            if (Reader.Read())
            {
                Response.Redirect("Index.aspx");
                conn.Close();
            }
            else
            {
                LabelLoginEror.Text = "Forkert Bruger login";
            }

        }
    }
}
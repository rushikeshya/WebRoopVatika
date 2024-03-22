using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Member_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            LoadProfile();  // udf
    }
    void LoadProfile()
    {
        SqlConnection con = new SqlConnection(DataClass.GetCS());
        SqlCommand cmd = new SqlCommand("select * from profile where username=@username", con);
        cmd.Parameters.AddWithValue("@username",Session["user"].ToString());
        try
        {
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtFN.Text = dr["fullname"].ToString();
                txtLoc.Text = dr["location"].ToString();
                txtCI.Text = dr["contactinfo"].ToString();
                
            }

            con.Close();
        }
        catch (Exception ex)
        {
            Label1.Text = "Error: " + ex.Message; 
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(DataClass.GetCS());
        SqlCommand cmd = new SqlCommand("update profile set fullname=@fn,location=@loc,contactinfo=@ci where username=@un", con);
        cmd.Parameters.AddWithValue("@fn",txtFN.Text );
        cmd.Parameters.AddWithValue("@loc", txtLoc.Text);
        cmd.Parameters.AddWithValue("@ci", txtCI.Text);
        cmd.Parameters.AddWithValue("@un", Session["user"].ToString());
     try 
	{	        
		con.Open();

        if (cmd.ExecuteNonQuery() > 0)
            Label1.Text = "Profile Updated";
        else
            Label1.Text = "Profile Not Updated";

        con.Close();
	}
	catch (Exception ex)
	{	
		Label1.Text = "Error: " + ex.Message; 
	}

    }
}
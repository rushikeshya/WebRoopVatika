using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Member_FeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
 SqlConnection con = new SqlConnection(DataClass.GetCS());
        SqlCommand cmd = new SqlCommand("insert into feedback(ondate,username,details) values(@odt,@un,@dtl)", con);
    
        cmd.Parameters.AddWithValue("@odt", DateTime.Now.ToString("dd-MMM-yyyy"));
        cmd.Parameters.AddWithValue("@un", Session["user"].ToString());
        cmd.Parameters.AddWithValue("@dtl", txtFeedBack.Text);
        
        try 
	    {	        
		    con.Open();
            if (cmd.ExecuteNonQuery() > 0)
            {
                Label1.Text = "FeedBack Added";
               txtFeedBack.Text = "";

                GridView1.DataBind();

            }
            con.Close();
	    }
	    catch (Exception ex)
	    {
            Label1.Text = "Error: " + ex.Message;
	    }
    }
}
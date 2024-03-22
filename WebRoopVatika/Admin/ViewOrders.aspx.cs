using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_ViewOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblOID.Text = GridView1.SelectedValue.ToString();
    }
    protected void btnPR_Click(object sender, EventArgs e)
    {
SqlConnection con = new SqlConnection(DataClass.GetCS());
        SqlCommand cmd = new SqlCommand("update orders set status=@sts where oid=@oid", con);
        cmd.Parameters.AddWithValue("@sts","ORDER CONFIRMED");
        cmd.Parameters.AddWithValue("@oid", lblOID.Text);
     try 
	{	        
		con.Open();

        if (cmd.ExecuteNonQuery() > 0)
        {      Label1.Text = "Order Confirmed";
            GridView1.DataBind();
     }
        else
            Label1.Text = "Order Not Confirmed";

        con.Close();
	}
	catch (Exception ex)
	{	
		Label1.Text = "Error: " + ex.Message; 
	}

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_ConfirmedOrders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblOID.Text = GridView1.SelectedValue.ToString();
        lblCropName.Text = GridView1.SelectedRow.Cells[4].Text;
        lblQty.Text = GridView1.SelectedRow.Cells[5].Text; 

    }
    protected void btnDispatch_Click(object sender, EventArgs e)
    {
        if (lblOID.Text == "0")
            Label1.Text = "Error: Select Order Below";
        else
        {
            SetDispatchOrder(lblOID.Text);
            UpdateStock(lblCropName.Text, int.Parse(lblQty.Text));
        }
    }

    void SetDispatchOrder(string oid)
    {
        SqlConnection con = new SqlConnection(DataClass.GetCS());
        SqlCommand cmd = new SqlCommand("update orders set Status=@sts where oid=@oid", con);
        cmd.Parameters.AddWithValue("@sts", "ORDER DISPATCHED");
        cmd.Parameters.AddWithValue("@oid", oid);

        try
        {
            con.Open();

            if (cmd.ExecuteNonQuery() > 0)
                Label1.Text = "Order Dispatched";
            else
                Label1.Text = "Order Not Dispatched";

            con.Close();
        }
        catch (Exception ex)
        {
            Label1.Text = "Error: " + ex.Message;
        }
    }

    void UpdateStock(string cn, int qty)
    {
        SqlConnection con = new SqlConnection(DataClass.GetCS());
        SqlCommand cmd = new SqlCommand("update cropmaster set stock=stock - @qty where cropname=@cn", con);
        cmd.Parameters.AddWithValue("@qty", qty);
        cmd.Parameters.AddWithValue("@cn", cn);

        try
        {
            con.Open();

            if (cmd.ExecuteNonQuery() > 0)
                Label1.Text = "Stock Updated";
            else
                Label1.Text = "Stock Not Updated";

            con.Close();
        }
        catch (Exception ex)
        {
            Label1.Text = "Error: " + ex.Message;
        }
    }
}
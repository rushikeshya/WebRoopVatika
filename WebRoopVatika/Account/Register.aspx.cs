using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Account_Register : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
    }

    protected void RegisterUser_CreatedUser(object sender, EventArgs e)
    {
        // auto-membership    
        Roles.AddUserToRole(RegisterUser.UserName, "member");
        Session["user"] = RegisterUser.UserName;  // global access
        AddUserToProfile(RegisterUser.UserName);

        FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);

        string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        if (String.IsNullOrEmpty(continueUrl))
        {
            continueUrl = "~/";
        }
        Response.Redirect(continueUrl);
    }
 void AddUserToProfile(string user)
    { 
        SqlConnection con = new SqlConnection(DataClass.GetCS());
        SqlCommand cmd = new SqlCommand("insert into profile(username) values(@un)", con);
    
        cmd.Parameters.AddWithValue("@un", user);
        try 
	    {	        
		    con.Open();
            cmd.ExecuteNonQuery(); 
            con.Close();
	    }
	    catch (Exception)
	    {	
		    throw; 
	    }
    }
}

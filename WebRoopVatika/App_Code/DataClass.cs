using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataClass
/// </summary>
public class DataClass
{
	public DataClass()
	{
		//
		// TODO: Add constructor logic here
		//
	}
        public static string GetCS()
    {
        string cs = System.Web.Configuration.WebConfigurationManager
            .ConnectionStrings["ApplicationServices"]
            .ConnectionString;

        return cs;
    } 
}
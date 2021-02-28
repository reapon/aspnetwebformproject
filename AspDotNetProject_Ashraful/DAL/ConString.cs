using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace AspDotNetProject_Ashraful.DAL
{
    public class ConString
    {
        public static SqlConnection con;

        static ConString()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        }

    }
}
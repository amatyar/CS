using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace CliffordSchool.DataAccess
{
    public class Database
    {
        protected SqlConnection connection;
        protected SqlCommand command;
        protected SqlDataReader dataReader;

        public Database()
        {
            connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["CliffordConnectionString"].ConnectionString);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace CliffordSchool.DataAccess
{
   
    public class UserImageDAO : Database
    {
        public UserImageDAO()
            : base()
        {
        }

        public void SaveOrUpdateImage(int userid, String imageName, Byte[] picture)
        {
            int temp = -1;
            connection.Open();
            command = new SqlCommand("SaveOrUpdateImage", connection);
            command.CommandType = CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@userid", userid);
            command.Parameters.AddWithValue("@imageName", imageName);
            command.Parameters.AddWithValue("@picture", picture);

            try
            {
                temp = command.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                connection.Close();


            }
        }
    }
}
   
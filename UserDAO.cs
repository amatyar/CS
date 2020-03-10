using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CliffordSchool.Domain;
using System.Data.SqlClient;

namespace CliffordSchool.DataAccess
{
       public class UserDAO : Database
        {
            public UserDAO()
                : base()
            {
            }
            public void insertUser(User user)
            {
                connection.Open();
                String query = " insert into REGISTRATION(FullName,UserName,PASSWORD,E_MAIL,Country) Values(@fullname,@username,@password,@email,@country)";
                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@fullname", user.FullName);
                command.Parameters.AddWithValue("@username", user.UserName);
                command.Parameters.AddWithValue("@password", user.Password);
                command.Parameters.AddWithValue("@email", user.Email);
                command.Parameters.AddWithValue("@country", user.Country);
                command.ExecuteNonQuery();
                connection.Close();

            }

            public User userExists(String UserName, String Password)
            {
                connection.Open();
                User returnData = null;
                String query = "Select * from REGISTRATION WHERE UserName=@username and Password=@password";
                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@username", UserName);
                command.Parameters.AddWithValue("@password", Password);
                dataReader = command.ExecuteReader();
                if (dataReader.Read())
                {
                    returnData = new User();
                    returnData.FullName = (String)dataReader[1];
                    returnData.UserName = (String)dataReader[2];
                    returnData.Password = (String)dataReader[3];
                    returnData.Email = (String)dataReader[4];
                    returnData.Country = (String)dataReader[5];
                }

                connection.Close();
                return returnData;

            }
            public void updatePassword(String userName, String oldPassword, String newPassword)
            {
                connection.Open();
                String query = "UPDATE REGISTRATION SET Password=@newPassword WHERE Username=@username AND Password=@oldPassword";

                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@NewPassword", newPassword);
                command.Parameters.AddWithValue("@username", userName);
                command.Parameters.AddWithValue("@oldPassword", oldPassword);
                int temp = command.ExecuteNonQuery();
                connection.Close();
            }
            public User isEmailExistForUser(String userName, String email)
            {
                connection.Open();
                User returnData = null;
                String query = "Select * from REGISTRATION WHERE UserName=@username and Email=@email";
                command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@username", userName);
                command.Parameters.AddWithValue("@email", email);
                dataReader = command.ExecuteReader();
                if (dataReader.Read())
                {
                    returnData = new User();
                    returnData.FullName = (String)dataReader[1];
                    returnData.UserName = (String)dataReader[2];
                    returnData.Password = (String)dataReader[3];
                    returnData.Email = (String)dataReader[4];
                    returnData.Country = (String)dataReader[5];
                }

                connection.Close();
                return returnData;
            }

        }
    }

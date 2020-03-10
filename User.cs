using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CliffordSchool.Domain
{
    public class User
    {
        public User(String fullName, String userName, String password, String email, String country)
        {
            this.fullName = fullName;
            this.userName = userName;
            this.password = password;
            this.email = email;
            this.country = country;
        }

        public User()
        {
            // TODO: Complete member initialization
        }
        private String fullName;
        public String FullName
        {
            get { return fullName; }
            set { fullName = value; }

        }
        private String userName;
        public String UserName
        {
            get { return userName; }
            set { userName = value; }

        }
        private String password;
        public String Password
        {
            get { return password; }
            set { password = value; }

        }
        private String email;
        public String Email
        {
            get { return email; }
            set { email = value; }

        }
        private String country;
        public String Country
        {
            get { return country; }
            set { country = value; }

        }
    }
}
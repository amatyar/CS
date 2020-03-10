using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CliffordSchool.DataAccess;
using CliffordSchool.Domain;

namespace CliffordSchool.Security
{
    public partial class Registration : System.Web.UI.Page
    {
        UserDAO userDao;
        protected void Page_Load(object sender, EventArgs e)
        {
            userDao = new UserDAO();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String fullname = txtFullName.Text;
            String username = txtUsername.Text;
            String password = txtPassword.Text;
            String email = txtEmail.Text;
            String country = drpCountry.SelectedItem.ToString();
            User user = new User(fullname, username, password, email, country);
            try
            {
                userDao.insertUser(user);
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            Session["user"] = user;
            Response.Redirect("~/Social/ActiveAccount.aspx");
        }
        
    }
}
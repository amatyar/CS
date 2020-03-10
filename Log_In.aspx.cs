using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CliffordSchool.DataAccess;
using System.Data;
using CliffordSchool.Domain;

namespace CliffordSchool.Security
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        UserDAO userDao;
        protected void Page_Load(object sender, EventArgs e)
        {
            userDao = new UserDAO();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String username = txtusername.Text;
            String password = txtPassword.Text;


            try
            {
                User user = userDao.userExists(username, password);
                //Response.Write("User logged in successfully!, Welcome "+user.FullName);
                Session["user"] = user;

                //Response.Redirect("~/Forms/Application.aspx");
                Response.Redirect("~/Welcome.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}
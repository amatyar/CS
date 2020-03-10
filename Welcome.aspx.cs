using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CliffordSchool.Domain;
namespace CliffordSchool
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = (User)Session["user"];
            if (user != null)
            {
                lblUsername.Text = user.FullName;
            }
            else
            {
                lblUsername.Text = "Anonymous user";
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Login.aspx");
            lblUsername.Text = "Anonymous user";

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Application.aspx");
        }

        protected void btnRenew_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RenewForms/Application1.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CliffordSchool.Account
{
    public partial class Payments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Session["toDisplay"] = "Name:" + txtFName.Text + " " + txtLName.Text + "</br></br>Street:" + txtStreet.Text + "</br></br>City: " + txtCity.Text + "</br></br>State:" + ddlStates.Text + ", " + txtZipCode.Text + "</br></br>Amount: $" + txtAmount.Text;
            Response.Redirect("~/Account/OrderConformation.aspx");
           // Response.Redirect("~/Forms/EnterToQuiz.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }
    }
}
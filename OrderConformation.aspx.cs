using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CliffordSchool.Account
{
    public partial class OrderConformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.DisplaySection.InnerHtml = (String)Session["toDisplay"];

            }
            else
            {
                btnSubmit.Visible = false;
               
                this.DisplaySection.InnerHtml = "Thank you for your payment!! Your license will be issued within three weeks from today. </br>" +
                "Please send us some feedbacks. <a href=~/Social/FeedBack.aspx>Feedback</a>";
                
            }
            
        }

       

        protected void Button1(object sender, EventArgs e)
        {

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CliffordSchool.Forms
{
    public partial class EnterToQuiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStart_click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/Quiz.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pagestatus = (String)Session["page"];

            if (pagestatus == "customer")
            {
                ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:customerLogin(); ", true);
            }
            
        }
    }
}
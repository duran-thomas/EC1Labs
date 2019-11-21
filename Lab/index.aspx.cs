using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class WebForm1 : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            string pagestatus = (String)Session["page"];

            if (pagestatus == "index")
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:indexPage(); ", true);
            }
            Console.WriteLine(pagestatus);

        }


    }
}
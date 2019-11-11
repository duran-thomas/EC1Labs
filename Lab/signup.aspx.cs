using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["fName"] = txtFirstName.Text;
            Session["lName"] = txtLastName.Text;
            Session["email"] = txtEmail.Text;
            Session["DoB"] = txtDateOfBirth.Text;
            Session["phoneNumber"] = txtPhoneNumber;
            Session["password"] = txtPassword.Text;
            Response.Redirect("index.aspx");
        }
    }
}
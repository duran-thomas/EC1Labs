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

        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String query;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            register();
            Response.Redirect("index.aspx");
        }

        private void register()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

            conn.Open();
            query = "INSERT INTO ec_labs.user (username, firstname, lastname, telephone, dob, password, role) " +
                "VALUES ('" + txtEmail.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtPhoneNumber.Text +
                "','" + txtDateOfBirth.Text + "','" + txtPassword.Text + "','customer');";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);

            cmd.ExecuteReader();
            Session["rights"] = "customer";
            Session["firstName"] = txtFirstName.Text;
            Session["username"] = txtEmail.Text;
            conn.Close();
        }
    }
}
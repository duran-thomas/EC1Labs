using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;

        String name;
        String rights;
        String query;

        protected void Page_Load(object sender, EventArgs e)
        {
            string pagestatus = (String)Session["page"];

            if (pagestatus == "index")
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:indexPage(); ", true);
            }
            

        }

        protected void logOut_click(object sender, EventArgs e)
        {
            Session["firstName"] = null;
            Session["page"] = "index";
            Session.Abandon();
            Response.BufferOutput = true;
            Response.Redirect("index.aspx");
        }

        protected void submitEventMethod(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            query = "";
            query = "SELECT * FROM ec_labs.user WHERE username='" + txtLoginEmail.Text + "' AND password='" + txtLoginPassword.Text + "'";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);

            reader = cmd.ExecuteReader();

            name = "";
            rights = "";

            while(reader.HasRows && reader.Read())
            {
                name = reader.GetString(reader.GetOrdinal("firstname"));
                rights = reader.GetString(reader.GetOrdinal("role"));
            }

            if (reader.HasRows)
            {
                Session["firstName"] = name;
                Response.BufferOutput = true;
                if(rights.Equals("admin"))
                {
                    Session["page"] = "admin";
                    Response.Redirect("adminLogin.aspx", false);
                }else if(rights.Equals("customer"))
                {
                    Session["page"] = "customer";
                    Response.Redirect("customerLogin.aspx", false);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect Email/Password')", true);
            }

            reader.Close();
            conn.Close();

        }

    }
}
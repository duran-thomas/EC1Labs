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
        String username;

        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void logOut_click(object sender, EventArgs e)
        {
            Session["firstName"] = null;
            Session["rights"] = null;
            Session.Abandon();
            Response.BufferOutput = true;
            Response.Redirect("index.aspx");
        }

        protected void submitEventMethod(object sender, EventArgs e)
        {

            //MySql 

            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            query = "";
            query = "SELECT * FROM ec_labs.user WHERE username='" + txtLoginEmail.Text + "' AND password='" + txtLoginPassword.Text + "'";

            cmd = new MySql.Data.MySqlClient.MySqlCommand(query, conn);

            reader = cmd.ExecuteReader();

            name = "";
            rights = "";
            username = "";

            while (reader.HasRows && reader.Read())
            {
                name = reader.GetString(reader.GetOrdinal("firstname"));
                rights = reader.GetString(reader.GetOrdinal("role"));
                username = reader.GetString(reader.GetOrdinal("username"));
            }

            Session["rights"] = rights;

            if (reader.HasRows)
            {
                Session["firstName"] = name;
                Session["username"] = username;

                Response.BufferOutput = true;
                if (rights.Equals("admin"))
                {
                    Session["page"] = "admin";
                    Response.Redirect("index.aspx");
                    
                }
                else if (rights.Equals("customer"))
                {
                    Session["page"] = "customer";
                    Response.Redirect("index.aspx");
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
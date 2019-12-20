using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Lab
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String query;

        protected void Page_Load(object sender, EventArgs e)
        {
            loadCart();
        }

        void loadCart()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

            
            query = "SELECT * FROM ec_labs.cart WHERE username = '" + (String)Session["username"] + "' AND status = 'unpurchased'";

            conn.Open();
            MySqlDataAdapter sqlDa = new MySqlDataAdapter(query, conn);
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            Console.WriteLine();
            CartGrid.DataSource = dtbl;
            CartGrid.DataBind();
        }

        protected void CartGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            var date = DateTime.Now.ToString("yyyy-MM-dd");

            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySqlConnection(connString);

            conn.Open();
            string query = "UPDATE ec_labs.cart SET status = 'purchased', datepurchased = '" + date + "' WHERE id = 21;";

            MySqlCommand cmd = new MySqlCommand(query, conn);

            cmd.ExecuteReader();
            conn.Close();

            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Checkout Success')", true);
            Response.Redirect("cart.aspx");
        }
    }
}
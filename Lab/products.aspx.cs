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
    public partial class WebForm2 : System.Web.UI.Page
    {
        MySqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridFill(); 
            
        }

        void GridFill()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySqlConnection(connString);

            conn.Open();
            MySqlDataAdapter sqlDa = new MySqlDataAdapter("ProductViewAll", conn);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            Console.WriteLine();
            GridView1.DataSource = dtbl;
            GridView1.DataBind();
       
        }

        public class product
        {
            public string name;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            String product = GridView1.Rows[1].Cells[0].Text;
            String price = GridView1.Rows[1].Cells[2].Text;

            //String name = Session["username"].ToString();

            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySqlConnection(connString);

            conn.Open();
            String query = "INSERT INTO ec_labs.cart (username, product, quantity, price, status) " +
                "VALUES ('duranthomas95@gmail.com'," + product + "," + 1 + "," + price + ",'unpurchased');";

            MySqlCommand cmd = new MySqlCommand(query, conn);

            cmd.ExecuteReader();
            conn.Close();
        }
    }
}
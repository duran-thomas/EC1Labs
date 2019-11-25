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
    public partial class WebForm6 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String query;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
                GridFill();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

            conn.Open();
            MySqlCommand cmd = new MySqlCommand("ProductAddOrEdit", conn);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("_productID", Convert.ToInt32(hfProductID.Value == "" ? "0" : hfProductID.Value));
            cmd.Parameters.AddWithValue("_productName", txtProduct.Text.Trim());
            cmd.Parameters.AddWithValue("_productDescription", txtDescription.Text.Trim());
            cmd.Parameters.AddWithValue("_unitPrice", Convert.ToDecimal(txtPrice.Text.Trim()));
            cmd.Parameters.AddWithValue("_imageURL", null);
            cmd.ExecuteNonQuery();
            GridFill();
            Clear();
            lblSuccessMessage.Text = "Submitted Successfully";
        }

        void Clear()
        {
            hfProductID.Value = "";
            txtProduct.Text = txtDescription.Text = txtPrice.Text = "";
            btnDelete.Enabled = false;
            lblErrorMessage.Text = lblSuccessMessage.Text = "";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();
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
            gvProduct.DataSource = dtbl;
            gvProduct.DataBind();
        }

        protected void lnkSelect_OnClick(object sender, EventArgs e)
        {
            int ProductID = Convert.ToInt32((sender as LinkButton).CommandArgument);

            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySqlConnection(connString);

            conn.Open();

            MySqlDataAdapter sqlDa = new MySqlDataAdapter("ProductViewByID", conn);
            sqlDa.SelectCommand.Parameters.AddWithValue("_productID", ProductID);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);

            txtProduct.Text = dtbl.Rows[0][1].ToString();
            txtDescription.Text = dtbl.Rows[0][2].ToString();
            txtPrice.Text = dtbl.Rows[0][3].ToString();

            hfProductID.Value = dtbl.Rows[0][0].ToString();

            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySqlConnection(connString);

            conn.Open();
            MySqlCommand sqlCmd = new MySqlCommand("ProductDeleteByID", conn);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("_productID", Convert.ToInt32(hfProductID.Value == "" ? "0" : hfProductID.Value));
            sqlCmd.ExecuteNonQuery();
            GridFill();
            Clear();
            lblSuccessMessage.Text = "Deleted Successfully";
        }

    }
}
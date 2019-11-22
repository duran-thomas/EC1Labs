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
    public partial class WebForm7 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String query;

        

        protected void Page_Load(object sender, EventArgs e)
        {
            GridFill();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySqlConnection(connString);

            conn.Open();
            MySqlCommand cmd = new MySqlCommand("UserAddOrEdit", conn);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("_username", txtEmail.Text.Trim());
            cmd.Parameters.AddWithValue("_firstname", txtFirstName.Text.Trim());
            cmd.Parameters.AddWithValue("_lastname", txtLastName.Text.Trim());
            cmd.Parameters.AddWithValue("_telephone", txtTelephone.Text.Trim());
            cmd.Parameters.AddWithValue("_dob", txtDob.Text.Trim());
            cmd.Parameters.AddWithValue("_password", txtPassword.Text.Trim());
            cmd.Parameters.AddWithValue("_role", txtRole.Text.Trim());
            cmd.ExecuteNonQuery();
            GridFill();
            Clear();
            lblSuccessMessage.Text = "Submitted Successfully";
        }

        void Clear()
        {
            txtEmail.Text = txtFirstName.Text = txtLastName.Text = txtDob.Text = txtTelephone.Text = txtRole.Text = txtPassword.Text = "";
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
            MySqlDataAdapter sqlDa = new MySqlDataAdapter("UserViewAll", conn);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);
            gvProduct.DataSource = dtbl;
            gvProduct.DataBind();
        }

        protected void lnkSelect_OnClick(object sender, EventArgs e)
        {
            String UserName = Convert.ToString((sender as LinkButton).CommandArgument);

            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySqlConnection(connString);

            conn.Open();

            MySqlDataAdapter sqlDa = new MySqlDataAdapter("UserViewByID", conn);
            sqlDa.SelectCommand.Parameters.AddWithValue("_username", UserName);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);

            txtEmail.Text = dtbl.Rows[0][0].ToString();
            txtFirstName.Text = dtbl.Rows[0][1].ToString();
            txtLastName.Text = dtbl.Rows[0][2].ToString();
            txtTelephone.Text = dtbl.Rows[0][3].ToString();
            txtDob.Text = dtbl.Rows[0][4].ToString();
            txtPassword.Text = dtbl.Rows[0][5].ToString();
            txtRole.Text = dtbl.Rows[0][6].ToString();

            

            btnSave.Text = "Update";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            conn = new MySqlConnection(connString);

            

            conn.Open();
            MySqlCommand sqlCmd = new MySqlCommand("UserDeleteByID", conn);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("_username", txtEmail.Text);
            sqlCmd.ExecuteNonQuery();
            GridFill();
            Clear();
            lblSuccessMessage.Text = "Deleted Successfully";
        }

    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;
namespace WebApplication3
{
    public partial class Owner : System.Web.UI.Page
    {
        String sqlConName = "datasource = localhost; port=3306;username=root;password=root";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string status = "completed";
            string query = "Select * from e_cafe.order_delivery";// where order_status'"+status+"';";
            LoadData(query);
        }
        private MySqlConnection connectToDb()
        {
            try
            {
                MySqlConnection con = new MySqlConnection(sqlConName);
                con.Open();
                if (con.State == ConnectionState.Open)
                {

                }
                return con;
            }

            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message);
                return null;
            }
        }

        private void closeDbConnection(MySqlConnection con)
        {
            con.Close();
        }
        private void LoadData(string query)
        {
            //if (!this.IsPostBack)
            {
                //Populating a DataTable from database.
                DataTable dt = this.GetData(query);

                //Building an HTML string.
                StringBuilder html = new StringBuilder();

                //Table start.
                html.Append("<table border = '1'>");

                //Building the Header row.
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("</tr>");

                //Building the Data rows.
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</td>");
                    }
                    html.Append("</tr>");
                }

                //Table end.
                html.Append("</table>");

                //Append the HTML string to Placeholder.
                PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }
        }
        private DataTable GetData(string query)
        {
            //string conString = ConfigurationManager.ConnectionStrings["Connectionstr"].ConnectionString;
            string conString = "datasource = localhost; port=3306;username=root;password=root";
            //string query = "SELECT * FROM e_cafe.order_delivery";
            MySqlCommand cmd = new MySqlCommand(query);
            using (MySqlConnection con = new MySqlConnection(conString))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable ds = new DataTable())
                    {
                        sda.Fill(ds);
                        return ds;
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string status = "completed";
            string query = "Select * from e_cafe.order_pickup";// where order_status'" + status + "';";
            LoadData(query);
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //MySqlCommand cmd1 = new MySqlCommand("Select count(id) from e_cafe.order_delivery;");
            //MySqlCommand cmd2 = new MySqlCommand("Select count(id) from e_cafe.order_pickup;");
            int c = getOrder() + getOrderDelivery();
            PlaceHolder2.Controls.Add(new Literal { Text = c.ToString() });
        }
        private int getOrder()
        {
            int i = 0;
            MySqlConnection myConn = connectToDb();
            MySqlCommand cmd = new MySqlCommand("Select count(id) from e_cafe.order_pickup;",myConn);
            MySqlDataReader myReader;

            try
            {
                i = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch (Exception ex)
            {

            }
            closeDbConnection(myConn);
            return i;
        }
        private int getOrderDelivery()
        {
            int i = 0;
            MySqlConnection myConn = connectToDb();
            MySqlCommand cmd = new MySqlCommand("Select count(id) from e_cafe.order_delivery;", myConn);
            MySqlDataReader myReader;

            try
            {
                i = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch (Exception ex)
            {

            }
            closeDbConnection(myConn);
            return i;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }
    }
}
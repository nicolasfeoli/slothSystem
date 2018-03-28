using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Proyecto3.view
{
    public partial class administrator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            proyectInfo();

        }

        protected void openProyect_Click(object sender, EventArgs e)
        {

        }

        private void proyectInfo()
        {
            string connectionString = "Data source=163.178.173.144;Database=Sloth-System-DB;User Id=multi-paraiso;Password=multimedios.rp.2017;";
            using (MySqlConnection cn = new MySqlConnection(connectionString))
            {
                MySqlDataAdapter adp = new MySqlDataAdapter("SELECT name, status FROM Proyect", cn);
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    ProyectoView.DataSource = dt;
                    ProyectoView.DataBind();
                }
            }
        }
    }
}
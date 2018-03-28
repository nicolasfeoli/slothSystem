using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Util;
using System.Data;
using MySql.Data.MySqlClient;

namespace Proyecto3.view
{
    public partial class newProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void saveNewProject(Object sender, EventArgs e)
        {            
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_INSERT_PROJECT, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("");
            }
                Response.Redirect(Utility.PROJECTS_PAGE);
        }
    } 
}
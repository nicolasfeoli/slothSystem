using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using Util;

namespace Data
{
    class ProjectData
    {
        public Boolean insertNewProject()
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_INSERT_PROJECT, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("");
            }
            return false;            
        }
    }
}

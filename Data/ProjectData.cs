using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using Util;
using Domain;

namespace Data
{
    public class ProjectData
    {
        public Boolean insertNewProject(Project project)
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_INSERT_PROJECT, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("name", MySqlDbType.VarChar).Value = project.Name;
                cmd.Parameters.Add("status", MySqlDbType.Enum).Value = project.Status;
                cmd.Parameters.Add("location", MySqlDbType.VarChar).Value = project.Location;
                if (project.InitialDate == null)
                {
                    cmd.Parameters.Add("initialDate", MySqlDbType.Date).Value = null;
                } else
                {
                    cmd.Parameters.Add("initialDate", MySqlDbType.Date).Value = project.InitialDate;
                }                
                cmd.Parameters.Add("description", MySqlDbType.VarChar).Value = project.Description;

                cn.Open();
                if (cmd.ExecuteNonQuery() > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}

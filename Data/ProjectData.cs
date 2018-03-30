using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Util;
using Domain;
using System.Data.SqlClient;

namespace Data
{
    public class ProjectData
    {
        public Boolean insertNewProject(Project project)
        {
            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_INSERT_PROJECT, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("name", SqlDbType.VarChar).Value = project.Name;
                cmd.Parameters.Add("status", SqlDbType.VarChar).Value = project.Status;
                cmd.Parameters.Add("location", SqlDbType.VarChar).Value = project.Location;
                if (project.InitialDate == null)
                {
                    cmd.Parameters.Add("initialDate", SqlDbType.Date).Value = null;
                }
                else
                {
                    cmd.Parameters.Add("initialDate", SqlDbType.Date).Value = project.InitialDate;
                }
                cmd.Parameters.Add("description", SqlDbType.VarChar).Value = project.Description;

                conn.Open();

                if (cmd.ExecuteNonQuery() > 0)
                {
                    conn.Close();
                    return true;
                }
                else
                {
                    conn.Close();
                    return false;
                }
            }            
        }
    }
}

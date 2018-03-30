using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using MySql.Data.MySqlClient;
using System.Data;
using Util;
using System.Data.SqlClient;

namespace Data
{
    public class CollaboratorData
    {
        public bool insertCollaborator(Collaborator collaborator)
        {
            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_INSERT_COLLABORATOR, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("alias", SqlDbType.VarChar).Value = collaborator.Alias;
                cmd.Parameters.Add("position", SqlDbType.VarChar).Value = collaborator.Position;
                cmd.Parameters.Add("description", SqlDbType.VarChar).Value = collaborator.Description;

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

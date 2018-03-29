using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using MySql.Data.MySqlClient;
using System.Data;
using Util;

namespace Data
{
    public class CollaboratorData
    {
        public bool insertCollaborator(Collaborator collaborator)
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_INSERT_COLLABORATOR, cn);
                cmd.CommandType = CommandType.StoredProcedure;                
                cmd.Parameters.Add("alias", MySqlDbType.VarChar).Value = collaborator.Alias;
                cmd.Parameters.Add("position", MySqlDbType.VarChar).Value = collaborator.Position;
                cmd.Parameters.Add("description", MySqlDbType.VarChar).Value = collaborator.Description;

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

        public DataTable getCollaborators()
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlDataAdapter adp = new MySqlDataAdapter("SELECT idCOLLABORATOR, alias, position, description FROM COLLABORATOR", cn);                
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {                    
                    return dt;
                }
            }
            return null;
        }
    }
}

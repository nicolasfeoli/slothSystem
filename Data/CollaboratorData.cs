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
                cmd.Parameters.Add("id", MySqlDbType.Int32).Value = collaborator.Id;
                cmd.Parameters.Add("alias", MySqlDbType.Int32).Value = collaborator.Alias;
                cmd.Parameters.Add("position", MySqlDbType.Int32).Value = collaborator.Position;
                cmd.Parameters.Add("description", MySqlDbType.Int32).Value = collaborator.Description;

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

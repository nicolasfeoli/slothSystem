using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using MySql.Data.MySqlClient;
using Util;
using System.Data;

namespace Data
{
    public class OperationData
    {
        public bool insertOperation(Operation operation)
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_INSERT_OPERATION, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("name", MySqlDbType.VarChar).Value = operation.Name;                
                cmd.Parameters.Add("description", MySqlDbType.VarChar).Value = operation.Description;

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

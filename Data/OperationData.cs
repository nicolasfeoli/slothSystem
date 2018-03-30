using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using Util;
using System.Data;
using System.Data.SqlClient;

namespace Data
{
    public class OperationData
    {
        public bool insertOperation(Operation operation)
        {
            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_INSERT_OPERATION, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("name", SqlDbType.VarChar).Value = operation.Name;
                cmd.Parameters.Add("description", SqlDbType.VarChar).Value = operation.Description;

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

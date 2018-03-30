using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using System.Data;
using Util;
using System.Data.SqlClient;

namespace Data
{
    public class TaskData
    {
        public bool insertTask(Domain.Task task)
        {
            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_INSERT_TASK, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("name", SqlDbType.VarChar).Value = task.Name;
                cmd.Parameters.Add("activity", SqlDbType.VarChar).Value = task.Activity;
                cmd.Parameters.Add("description", SqlDbType.VarChar).Value = task.Description;

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

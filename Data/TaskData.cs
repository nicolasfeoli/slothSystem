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
    public class TaskData
    {
        public bool insertTask(Domain.Task task)
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_INSERT_TASK, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("name", MySqlDbType.VarChar).Value = task.Name;
                cmd.Parameters.Add("activity", MySqlDbType.Enum).Value = task.Activity;
                cmd.Parameters.Add("description", MySqlDbType.VarChar).Value = task.Description;

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

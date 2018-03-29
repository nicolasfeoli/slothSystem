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
    public class WorkinHourData
    {
        public bool insertNewWorkingHour(WorkingHour workingHour)
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_INSERT_WORKING_HOUR, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("hour", MySqlDbType.VarChar).Value = workingHour.Hour;
                cmd.Parameters.Add("duration", MySqlDbType.VarChar).Value = workingHour.Duration;
                cmd.Parameters.Add("description", MySqlDbType.VarChar).Value = workingHour.Description;

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

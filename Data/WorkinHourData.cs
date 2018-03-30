using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using MySql.Data.MySqlClient;
using Util;
using System.Data;
using System.Data.SqlClient;

namespace Data
{
    public class WorkinHourData
    {
        public bool insertNewWorkingHour(WorkingHour workingHour)
        {
            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_INSERT_WORKING_HOUR, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("hour", SqlDbType.VarChar).Value = workingHour.Hour;
                cmd.Parameters.Add("duration", SqlDbType.VarChar).Value = workingHour.Duration;
                cmd.Parameters.Add("description", SqlDbType.VarChar).Value = workingHour.Description;

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

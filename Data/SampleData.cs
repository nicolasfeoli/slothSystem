using Domain;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Util;

namespace Data
{
    public class SampleData
    {
        public Boolean insertNewSample(Sample sample)
        {
            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_INSERT_SAMPLE, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("idProject", SqlDbType.Int).Value = sample.ProjectId;
                if (sample.Hour == null)
                {
                    cmd.Parameters.Add("hour", SqlDbType.VarChar).Value = DateTime.Now.ToString();
                }
                else
                {
                    cmd.Parameters.Add("hour", SqlDbType.VarChar).Value = sample.Hour;
                }
                cmd.Parameters.Add("humidity", SqlDbType.VarChar).Value = sample.Humidity;
                cmd.Parameters.Add("temperature", SqlDbType.VarChar).Value = sample.Temperature;
                cmd.Parameters.Add("systemHour", SqlDbType.VarChar).Value = sample.SystemHour;
                cmd.Parameters.Add("operationId", SqlDbType.Int).Value = sample.Operation;
                cmd.Parameters.Add("activity", SqlDbType.VarChar).Value = sample.Activity;
                cmd.Parameters.Add("taskId", SqlDbType.Int).Value = sample.Task;
                cmd.Parameters.Add("collaborator", SqlDbType.Int).Value = sample.Collaborator;
                cmd.Parameters.Add("description", SqlDbType.Text).Value = sample.DescriptionTextArea;                
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

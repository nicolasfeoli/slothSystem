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
    public class AnalystData
    {
        public bool insertAnalyst(Analyst analyst)
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_INSERT_ANALYST, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("name", MySqlDbType.VarChar).Value = analyst.Name;
                cmd.Parameters.Add("identification", MySqlDbType.VarChar).Value = analyst.Identification;
                cmd.Parameters.Add("email", MySqlDbType.VarChar).Value = analyst.Email;
                cmd.Parameters.Add("password", MySqlDbType.VarChar).Value = analyst.Password;
                cmd.Parameters.Add("userName", MySqlDbType.VarChar).Value = analyst.User;
                cmd.Parameters.Add("role", MySqlDbType.Int32).Value = analyst.Role;

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

        public object getUserRole(Analyst analyst)
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_GET_USER_ROLE, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("userName", MySqlDbType.VarChar).Value = analyst.User;                

                cn.Open();
                object result = cmd.ExecuteScalar();

                return (int)result;
            }
        }

        public int validatePassword(Analyst analyst)
        {
            using (MySqlConnection cn = new MySqlConnection(Utility.CONNECTION_STRING))
            {
                MySqlCommand cmd = new MySqlCommand(Utility.SP_VALIDATE_PASSWORD, cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("userName", MySqlDbType.VarChar).Value = analyst.User;
                cmd.Parameters.Add("password", MySqlDbType.VarChar).Value = analyst.Password;

                cn.Open();
                object result = cmd.ExecuteScalar();
                System.Diagnostics.Debug.Write("result: " + result + "\n");
                System.Diagnostics.Debug.Write("result: " + result.GetType() + "\n");
                return Convert.ToInt32(result);
            }            
        }
    }
}

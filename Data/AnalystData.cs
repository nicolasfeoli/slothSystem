using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using MySql.Data.MySqlClient;
using System.Data;
using Util;
using System.Data.SqlClient;

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
            int resultValidation = -2;

            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_GET_USER_ROLE, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("userName", SqlDbType.VarChar).Value = analyst.User;                

                conn.Open();

                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {
                        resultValidation = rdr.GetInt32(0);
                    }

                    rdr.Close();
                }

                conn.Close();
            }
            return resultValidation;            
        }

        public int validatePassword(Analyst analyst)
        {
            int resultValidation = -2;

            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_VALIDATE_PASSWORD, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("userName", SqlDbType.VarChar).Value = analyst.User;
                cmd.Parameters.Add("password", SqlDbType.VarChar).Value = analyst.Password;
                
                conn.Open();

                using (SqlDataReader rdr = cmd.ExecuteReader())
                {
                    while (rdr.Read())
                    {                        
                       resultValidation = rdr.GetInt32(0);
                    }

                    rdr.Close();
                }

                conn.Close();
            }
            return resultValidation;
        }
    }
}

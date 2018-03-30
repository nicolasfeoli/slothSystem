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
            using (SqlConnection conn = new SqlConnection(Utility.CONNECTION_STRING))
            using (SqlCommand cmd = new SqlCommand(Utility.SP_INSERT_ANALYST, conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;               
                cmd.Parameters.Add("name", SqlDbType.VarChar).Value = analyst.Name;
                cmd.Parameters.Add("identification", SqlDbType.VarChar).Value = analyst.Identification;
                cmd.Parameters.Add("email", SqlDbType.VarChar).Value = analyst.Email;
                cmd.Parameters.Add("password", SqlDbType.VarChar).Value = analyst.Password;
                cmd.Parameters.Add("userName", SqlDbType.VarChar).Value = analyst.User;
                cmd.Parameters.Add("role", SqlDbType.Int).Value = analyst.Role;

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

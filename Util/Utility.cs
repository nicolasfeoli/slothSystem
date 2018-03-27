using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;
using Domain;

namespace Util
{
    public class Utility
    {
        public static string connectionString = WebConfigurationManager.ConnectionStrings["db_gestion_estudiantil_b56246"].ToString();
        public static string userAuthenticated = "UserAuthentication";
        public static string userRole = "UserRole";
        public static int adminRole = 1;
        public static int analystRole = 2;
        public static string administratorPrincipalPage = "view/administrator.aspx";
        public static string analystPrincipalPage = "view/analyst.aspx";
    }
}

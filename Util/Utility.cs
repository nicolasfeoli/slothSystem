using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Configuration;

namespace Util
{
    public class Utility
    {
        public static string USER_AUTHENTICATED = "UserAuthentication";
        public static string USER_ROLE = "UserRole";
        public static int ADMIN_ROLE = 1;
        public static int ANALYST_ROLE = 2;
        public static string ADMINISTRATOR_PRINCIPAL_PAGE = "view/administrator.aspx";
        public static string ANALYST_PRINCIPAL_PAGE = "view/analyst.aspx";

        public static string PROJECTS_PAGE = "/view/project.aspx";
        public static string ANALYST_PAGE = "/view/analystView.aspx";
        public static string COLLABORATOR_PAGE = "/view/collaborator.aspx";
        public static string OPERATIONS_PAGE = "/view/operation.aspx";
        public static string TASKS_PAGE = "/view/task.aspx";
        public static string WORKING_HOURS_PAGE = "/view/workingHours.aspx";
        public static string DEFAULT_PAGE = "/default.aspx";

        //public static string CONNECTION_STRING = "Data source=163.178.173.144;Database=Sloth-System-DB;User Id=multi-paraiso;Password=multimedios.rp.2017;";
        //public static string CONNECTION_STRING = ConfigurationManager.ConnectionStrings["SLOTH_SYSTEM_DBConnectionStringSQLServer"].ConnectionString;
        public static string CONNECTION_STRING = ConfigurationManager.ConnectionStrings["SLOTH_SYSTEM_DB_TURRIALBA"].ConnectionString;


        public static string SP_INSERT_PROJECT = "sp_insert_project";
        public static string SP_INSERT_COLLABORATOR = "sp_insert_collaborator";
        public static string SP_INSERT_TASK = "sp_insert_task";
        public static string SP_INSERT_ANALYST = "sp_insert_analyst";
        public static string SP_INSERT_OPERATION = "sp_insert_operation";
        public static string SP_INSERT_WORKING_HOUR = "sp_insert_working_hour";
        public static string SP_VALIDATE_PASSWORD = "validate_password";
        public static string SP_GET_USER_ROLE = "sp_get_user_role";
    }
}

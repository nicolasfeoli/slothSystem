﻿using System;
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
        public static string USER_AUTHENTICATED = "UserAuthentication";
        public static string USER_ROLE = "UserRole";
        public static int ADMIN_ROLE = 1;
        public static int ANALYST_ROLE = 2;
        public static string ADMINISTRATOR_PRINCIPAL_PAGE = "view/administrator.aspx";
        public static string ANALYST_PRINCIPAL_PAGE = "view/analyst.aspx";

        public static string PROJECTS_PAGE = "/view/projects.aspx";
        public static string ANALYST_PAGE = "/view/projects.aspx";
        public static string COLLABORATOR_PAGE = "/view/projects.aspx";
        public static string OPERATIONS_PAGE = "/view/projects.aspx";
        public static string TASKS_PAGE = "/view/projects.aspx";
        public static string WORKING_HOURS_PAGE = "/view/projects.aspx";
    }
}

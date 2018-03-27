using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Domain;
using System.Web.Configuration;
using Util;

namespace Proyecto3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session[Utility.userAuthenticated] = 1;
            Session[Utility.userRole] = 2;
            if (Session[Utility.userAuthenticated] != null) {
                if ((int)Session[Utility.userRole] == Utility.adminRole)
                {
                    Response.Redirect(Utility.administratorPrincipalPage);
                } else if ((int)Session[Utility.userRole] == Utility.analystRole)
                {
                    Response.Redirect(Utility.analystPrincipalPage);
                }                
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }
    }
}
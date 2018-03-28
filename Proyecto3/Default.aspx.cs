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
            Session[Utility.USER_AUTHENTICATED] = 1;
            Session[Utility.USER_ROLE] = 1;
            if (Session[Utility.USER_AUTHENTICATED] != null) {
                if ((int)Session[Utility.USER_ROLE] == Utility.ADMIN_ROLE)
                {
                    Response.Redirect(Utility.ADMINISTRATOR_PRINCIPAL_PAGE);
                } else if ((int)Session[Utility.USER_ROLE] == Utility.ANALYST_ROLE)
                {
                    Response.Redirect(Utility.ANALYST_PRINCIPAL_PAGE);
                }                
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }
    }
}
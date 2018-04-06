using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Util;

namespace Proyecto3
{
    public partial class analystPrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_LogOut(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.Write("---------------------" + "\n");
            Session[Utility.USER_AUTHENTICATED] = null;
            Session[Utility.USER_ROLE] = null;
            Response.Redirect(Utility.DEFAULT_PAGE);
        }
    }
}
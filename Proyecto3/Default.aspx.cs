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
using Business;

namespace Proyecto3
{
    public partial class Default : System.Web.UI.Page
    {
        private AnalystBusiness analystBusiness; 

        protected void Page_Load(object sender, EventArgs e)
        {
            analystBusiness = new AnalystBusiness();
            startingApplication();
        }

        protected void Button_Loggin(object sender, EventArgs e)
        {
            Analyst analyst = new Analyst(usr.Text, pwd.Text);
            int result = analystBusiness.validatePassword(analyst);

            if (result == -1 || result == 0)
            {
                dangerAlert.Visible = true;
                alertDangerMessage.Text = "Nombre de usuario o contraseña incorrectos";
            } else if (result == 1)
            {
                Session[Utility.USER_AUTHENTICATED] = 1;
                Session[Utility.USER_ROLE] = analystBusiness.getUserRole(analyst);
                startingApplication();
            }
        }

        private void startingApplication()
        {
            if (Session[Utility.USER_AUTHENTICATED] != null)
            {
                if ((int)Session[Utility.USER_ROLE] == Utility.ADMIN_ROLE)
                {
                    Response.Redirect(Utility.ADMINISTRATOR_PRINCIPAL_PAGE);

                }
                else if ((int)Session[Utility.USER_ROLE] == Utility.ANALYST_ROLE)
                {
                    Response.Redirect(Utility.ANALYST_PRINCIPAL_PAGE);
                }
            }
        }
    }
}
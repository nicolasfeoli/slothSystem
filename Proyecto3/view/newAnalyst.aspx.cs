using Business;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Util;

namespace Proyecto3.view
{
    public partial class newAnalyst : System.Web.UI.Page
    {
        private AnalystBusiness analystBusiness;

        protected void Page_Load(object sender, EventArgs e)
        {
            analystBusiness = new AnalystBusiness();
        }

        public void saveNewAnalyst(object sender, EventArgs e)
        {
            if (userPassword.Text.Equals(userPasswordConfirmation.Text))
            {
                int role = 2;         
                if (isAnalystCheckBox.Checked)
                {
                    role = 1;
                }
                Analyst analyst = new Analyst(name.Text, userId.Text, userName.Text, userEmail.Text, role, userPassword.Text);
                if (analystBusiness.insertAnalyst(analyst))
                {
                    successAlert.Visible = true;
                    alertSuccessMessage.Text = "Analista ingresado con éxito";
                }else
                {
                    dangerAlert.Visible = true;
                    alertDangerMessage.Text = "No se pudo ingresar el nuevo analista";
                }                
                Response.Redirect(Utility.ANALYST_PAGE);
            } else
            {
                dangerAlert.Visible = true;
                alertDangerMessage.Text = "La contraseña no coincide";
            }
        }
    }
}
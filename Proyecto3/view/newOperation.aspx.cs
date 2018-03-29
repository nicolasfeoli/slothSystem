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
    public partial class newOperation : System.Web.UI.Page
    {
        private OperationBusiness operationBusiness;

        protected void Page_Load(object sender, EventArgs e)
        {
            operationBusiness = new OperationBusiness();
        }

        public void saveNewOperation(object sender, EventArgs e)
        {
            Operation operation = new Operation(name.Text, description.Text);
            if (operationBusiness.insertOperation(operation))
            {
                successAlert.Visible = true;
                alertSuccessMessage.Text = "Operación ingresada con éxito";

                Response.Redirect(Utility.OPERATIONS_PAGE);
            }else
            {
                dangerAlert.Visible = true;
                alertDangerMessage.Text = "No se pudo ingresar la operación";
            }            
        }
    }
}
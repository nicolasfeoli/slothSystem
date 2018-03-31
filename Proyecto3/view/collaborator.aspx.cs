using Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto3.view
{
    public partial class collaborator : System.Web.UI.Page
    {
        private CollaboratorBusiness collaboratorBusiness;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            collaboratorBusiness = new CollaboratorBusiness();
            DataTable dt = collaboratorBusiness.getCollaborators();
            if (dt.Rows.Count > 0)
            {
                CollaboratorsView.DataSource = dt;
                CollaboratorsView.DataBind();
                System.Diagnostics.Debug.WriteLine(CollaboratorsView.DataKeys[0].Value);
            }
            */
        }
    }
}
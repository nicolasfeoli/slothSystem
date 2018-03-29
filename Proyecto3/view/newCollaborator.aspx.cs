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
    public partial class newCollaborator : System.Web.UI.Page
    {
        private CollaboratorBusiness collaboratorBusiness;

        protected void Page_Load(object sender, EventArgs e)
        {
            collaboratorBusiness = new CollaboratorBusiness();            
        }

        public void saveCollaborator(object sender, EventArgs e)
        {
            Collaborator collaborator = new Collaborator(alias.Text, description.Text, position.Text);
            bool responde = collaboratorBusiness.insertCollaborator(collaborator);
            if (responde)
            {
                Response.Redirect(Utility.COLLABORATOR_PAGE);
            } else
            {
                dangerAlert.Visible = true;
            }
        }
    }
}
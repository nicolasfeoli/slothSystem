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
    public partial class projectSelected : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session[Utility.PROJECT_SELECTED] != null)
            {
                Project projectSelected = (Project)Session[Utility.PROJECT_SELECTED];
                projectName.Text = "Projecto: " + projectSelected.Name;
                projectStatus.Text = "Estado: " + projectSelected.Status;
                projectLocation.Text = "Lugar de realización: " + projectSelected.Location;
            }
        }
    }
}
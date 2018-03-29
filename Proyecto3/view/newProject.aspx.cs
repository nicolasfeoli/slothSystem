using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Util;
using Business;
using Domain;

namespace Proyecto3.view
{
    public partial class newProject : System.Web.UI.Page
    {
        private ProjectBusiness projectBusiness;
        protected void Page_Load(object sender, EventArgs e)
        {
            projectBusiness = new ProjectBusiness();
        }

        public void saveNewProject(Object sender, EventArgs e)
        {
            Project project = null;
            if (projectBusiness.insertNewProject(project))
            {
                Response.Redirect(Utility.PROJECTS_PAGE);
            }                
        }
    } 
}
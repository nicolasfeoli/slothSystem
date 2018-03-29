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
            if (statusSelect.SelectedIndex == 0)
            {
                dangerAlert.Visible = false;
                dangerAlert.Visible = true;
                alertDangerMessage.Text = "Seleccione el estado del proyecto";
            } else {
                if (initialDate.Text.Length == 0)
                {
                    if (statusSelect.SelectedIndex != 3)
                    {
                        dangerAlert.Visible = true;
                        alertDangerMessage.Text = "Debe ingresar la fecha o cambiar el estado del proyecto a Sin fecha inicio";
                    } else
                    {
                        Project project = new Project(name.Text, statusSelect.SelectedItem.Value, projectLocation.Text, description.Text);
                        if (projectBusiness.insertNewProject(project))
                        {
                            Response.Redirect(Utility.PROJECTS_PAGE);
                        } else
                        {
                            dangerAlert.Visible = false;
                            dangerAlert.Visible = true;
                            alertDangerMessage.Text = "No se pudo ingresar el proyecto";
                        }
                    }
                } else
                {
                    Project project = new Project(name.Text, statusSelect.SelectedItem.Value, projectLocation.Text, description.Text, initialDate.Text);
                    if (projectBusiness.insertNewProject(project))
                    {
                        Response.Redirect(Utility.PROJECTS_PAGE);
                    } else
                    {
                        dangerAlert.Visible = false;
                        dangerAlert.Visible = true;
                        alertDangerMessage.Text = "No se pudo ingresar el proyecto";
                    }
                }                
            }        
        }
    } 
}
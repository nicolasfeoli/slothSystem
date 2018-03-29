using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Data;

namespace Business
{
    public class ProjectBusiness
    {
        private ProjectData projectData;

        public ProjectBusiness()
        {
            projectData = new ProjectData();
        }

        public Boolean insertNewProject(Project project)
        {
            return projectData.insertNewProject(project);
        }
    }
}

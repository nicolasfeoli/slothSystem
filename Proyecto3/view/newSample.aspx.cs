using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;
using Domain;
using Util;

namespace Proyecto3.view
{
    public partial class newSample : System.Web.UI.Page
    {
        private string province;
        private SampleBusiness sampleBusiness;

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dateTime = DateTime.Now;
            currentTime.Text = "Hora: " + dateTime.Hour + ":" + dateTime.Minute;            
            if (Session[Utility.PROJECT_SELECTED] != null)
            {
                Project projectSelected = (Project)Session[Utility.PROJECT_SELECTED];
                projectName.Text = "Projecto: " + projectSelected.Name;
                projectStatus.Text = "Estado: " + projectSelected.Status;
                projectLocation.Text = "Lugar de realización: " + projectSelected.Location;
                sampleHour.Text = "Hora: " + Session[Utility.SAMPLE_HOUR];
            }
            sampleBusiness = new SampleBusiness();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            province = DropDownList1.SelectedItem.Value;
            System.Diagnostics.Debug.Write(province + "\n");           
        }
        
        protected void saveNewSample (object sender, EventArgs e)
        {
            Project project = (Project)Session[Utility.PROJECT_SELECTED];
            int projectId = project.Id;
            string hour = (string) Session[Utility.SAMPLE_HOUR];
            string humidity = HiddenFieldHumidiy.Value;
            string temperature = HiddenFieldTemperature.Value;
            string systemHour = DateTime.Now.ToString();
            int operation = Convert.ToInt32(DropDownList2.SelectedItem.Value);
            string activity = DropDownList3.SelectedItem.Value;
            int task = Convert.ToInt32(DropDownList4.SelectedItem.Value);
            int collaborator = Convert.ToInt32(DropDownList5.SelectedItem.Value);
            string descriptionTextArea = description.Text;

            Sample sample = new Sample(projectId, hour, humidity, temperature, systemHour, operation, activity, task, collaborator, descriptionTextArea);
            if(sampleBusiness.insertNewSample(sample))
            {
                Response.Redirect(Utility.ANALYST_PRINCIPAL_PAGE);
            } 
        }
    }
}
using Business;
using Domain;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Util;

namespace Proyecto3.view
{
    public partial class newTask : System.Web.UI.Page
    {
        private TaskBusiness taskBusiness;
           
        protected void Page_Load(object sender, EventArgs e)
        {
            taskBusiness = new TaskBusiness();
        }

        public void saveNewTask(object sender, EventArgs e)
        {
            if(activitySelect.SelectedIndex == 0)
            {
                dangerAlert.Visible = true;                
            } else
            {
                string activity = "";
                switch (activitySelect.SelectedIndex)
                {
                    case 1:
                        activity = "TP";
                        break;
                    case 2:
                        activity = "TI";
                        break;
                    case 3:
                        activity = "TC";
                        break;
                }
                Task task = new Task(name.Text, activity, description.Text);
                if (taskBusiness.insertTask(task))
                {
                    successAlert.Visible = true;
                    Response.Redirect(Utility.TASKS_PAGE);
                } else
                {
                    dangerAlert.Visible = true;
                }
            }
        }
    }
}
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
    public partial class workingHours : System.Web.UI.Page
    {
        private WorkinHourBusiness workingHourBusiness;

        protected void Page_Load(object sender, EventArgs e)
        {
            workingHourBusiness = new WorkinHourBusiness();
        }

        public void saveWorkinHour(object sender, EventArgs e)
        {
            WorkingHour workingHour = new WorkingHour(hour.Text, Int32.Parse(duration.Text), description.Text);
            if (workingHourBusiness.insertNewWorkingHour(workingHour))
            {
                Response.Redirect(Utility.WORKING_HOURS_PAGE);
            } else
            {
                dangerAlert.Visible = true;
                alertDangerMessage.Text = "No se ha podido ingresar";
            }
        }
    }
}
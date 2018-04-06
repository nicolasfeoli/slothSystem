﻿using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Util;

namespace Proyecto3.view
{
    public partial class analyst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //// Check whether the browser remains
            //// connected to the server.
            //if (Response.IsClientConnected)
            //{
            //    // If still connected, redirect
            //    // to another page. 
            //    Response.Redirect("analyst.aspx", false);
            //}
            //else
            //{
            //    // If the browser is not connected
            //    // stop all response processing.
            //    Response.End();

            //}
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == Utility.SELECT_COMMAND)
            {
                Int16 num = Convert.ToInt16(e.CommandArgument);
                int projectId = Convert.ToInt32(GridView1.Rows[num].Cells[1].Text);
                string projectName = GridView1.Rows[num].Cells[2].Text;
                string projectStatus = GridView1.Rows[num].Cells[3].Text;
                string projectLocation = GridView1.Rows[num].Cells[4].Text;
                Project projectSelected = new Project(projectId, projectName, projectStatus, projectLocation);

                Session[Utility.PROJECT_SELECTED] = projectSelected;
                Response.Redirect(Utility.PROJECT_SELECTED_BY_ANALYST_PAGE);
            }
        }
    }
}
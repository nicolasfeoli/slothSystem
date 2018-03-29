using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;

namespace Business
{
    public class TaskBusiness
    {
        private TaskData taskData;

        public TaskBusiness()
        {
            taskData = new TaskData();
        }

        public bool insertTask(Domain.Task task)
        {
            return taskData.insertTask(task);
        }
    }
}

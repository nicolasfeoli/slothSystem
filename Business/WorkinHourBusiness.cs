using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using Data;

namespace Business
{
    public class WorkinHourBusiness
    {
        private WorkinHourData workingData;

        public WorkinHourBusiness()
        {
            workingData = new WorkinHourData();
        }

        public bool insertNewWorkingHour(WorkingHour workingHour)
        {
            return workingData.insertNewWorkingHour(workingHour);
        }
    }
}

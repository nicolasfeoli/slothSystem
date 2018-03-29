using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using Data;

namespace Business
{
    public class AnalystBusiness
    {
        private AnalystData analystData;

        public AnalystBusiness()
        {
            analystData = new AnalystData();
        }

        public bool insertAnalyst(Analyst analyst)
        {
            return analystData.insertAnalyst(analyst);
        }

        public int validatePassword(Analyst analyst)
        {
            return analystData.validatePassword(analyst);
        }

        public object getUserRole(Analyst analyst)
        {
            return analystData.getUserRole(analyst);
        }
    }
}

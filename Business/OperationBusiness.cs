using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Domain;
using Data;

namespace Business
{
    public class OperationBusiness
    {
        private OperationData operationData;

        public OperationBusiness()
        {
            operationData = new OperationData();
        }

        public bool insertOperation(Operation operation)
        {
            return operationData.insertOperation(operation);
        }
    }
}

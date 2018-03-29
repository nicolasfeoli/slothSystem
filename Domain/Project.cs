using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Project
    {
        private string name;
        private int status;
        private string location;
        private string initialDate;
        private string description;
        private List<Operation> operations;

        public Project(string name, int status, string location, string initialDate, string description, List<Operation> operations)
        {
            this.name = name;
            this.status = status;
            this.location = location;
            this.initialDate = initialDate;
            this.description = description;
            this.operations = new List<Operation>();
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public int Status
        {
            get
            {
                return status;
            }

            set
            {
                status = value;
            }
        }

        public string Location
        {
            get
            {
                return location;
            }

            set
            {
                location = value;
            }
        }

        public string InitialDate
        {
            get
            {
                return initialDate;
            }

            set
            {
                initialDate = value;
            }
        }

        public string Description
        {
            get
            {
                return description;
            }

            set
            {
                description = value;
            }
        }

        internal List<Operation> Operations
        {
            get
            {
                return operations;
            }

            set
            {
                operations = value;
            }
        }        
    }
}

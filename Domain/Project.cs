using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Project
    {
        private int id;
        private string name;
        private string status;
        private string location;        
        private string description;
        private string initialDate;

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
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

        public string Status
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

        public Project(int id, string name, string status, string location)
        {
            this.id = id;
            this.name = name;
            this.status = status;
            this.location = location;
        }

        public Project(int id, string name, string status, string location, string description, string initialDate)
        {
            this.id = id;
            this.name = name;
            this.status = status;
            this.location = location;
            this.description = description;
            this.initialDate = initialDate;
        }

        public Project(string name, string status, string location, string description, string initialDate)
        {
            this.name = name;
            this.status = status;
            this.location = location;
            this.description = description;
            this.initialDate = initialDate;
        }

        public Project(string name, string status, string location, string description)
        {
            this.name = name;
            this.status = status;
            this.location = location;
            this.description = description;
        }
    }
}

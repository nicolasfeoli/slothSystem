using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Task
    {
        private int id;
        private string name;
        private string activity;
        private string description;

        public Task(int id, string name, string activity, string description)
        {
            this.id = id;
            this.name = name;
            this.activity = activity;
            this.description = description;
        }

        public Task(string name, string activity, string description)
        {
            this.name = name;
            this.activity = activity;
            this.description = description;
        }

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

        public string Activity
        {
            get
            {
                return activity;
            }

            set
            {
                activity = value;
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
    }
}

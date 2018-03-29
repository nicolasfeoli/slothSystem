using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class WorkingHour
    {
        private int id;
        private string hour;
        private int duration;
        private string description;

        public WorkingHour(int id, string hour, int duration, string description)
        {
            this.id = id;
            this.hour = hour;
            this.duration = duration;
            this.description = description;
        }

        public WorkingHour(string hour, int duration, string description)
        {
            this.hour = hour;
            this.duration = duration;
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

        public string Hour
        {
            get
            {
                return hour;
            }

            set
            {
                hour = value;
            }
        }

        public int Duration
        {
            get
            {
                return duration;
            }

            set
            {
                duration = value;
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

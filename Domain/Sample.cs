using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Sample
    {
        private int projectId;
        private string hour;
        private string humidity;
        private string temperature;
        private string systemHour;
        private int operation;
        private string activity;
        private int task;
        private int collaborator;
        private string descriptionTextArea;

        public Sample(int projectId, string hour, string humidity, string temperature, string systemHour, int operation, string activity, 
            int task, int collaborator, string descriptionTextArea)
        {
            this.projectId = projectId;
            this.hour = hour;
            this.humidity = humidity;
            this.temperature = temperature;
            this.systemHour = systemHour;
            this.operation = operation;
            this.activity = activity;
            this.task = task;
            this.collaborator = collaborator;
            this.descriptionTextArea = descriptionTextArea;
        }

        public int ProjectId { get => projectId; set => projectId = value; }
        public string Hour { get => hour; set => hour = value; }
        public string Humidity { get => humidity; set => humidity = value; }
        public string Temperature { get => temperature; set => temperature = value; }
        public string SystemHour { get => systemHour; set => systemHour = value; }
        public int Operation { get => operation; set => operation = value; }
        public string Activity { get => activity; set => activity = value; }
        public int Task { get => task; set => task = value; }
        public int Collaborator { get => collaborator; set => collaborator = value; }
        public string DescriptionTextArea { get => descriptionTextArea; set => descriptionTextArea = value; }
    }
}

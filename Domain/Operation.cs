using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Operation
    {
        private int id;
        private string nombre;
        private List<Task> tasks;

        public Operation(int id, string nombre, List<Task> tasks)
        {
            this.id = id;
            this.nombre = nombre;
            this.tasks = new List<Task>();
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

        public string Nombre
        {
            get
            {
                return nombre;
            }

            set
            {
                nombre = value;
            }
        }

        internal List<Task> Tasks
        {
            get
            {
                return tasks;
            }

            set
            {
                tasks = value;
            }
        }
    }
}

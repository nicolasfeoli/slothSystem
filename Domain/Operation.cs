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
        private string description;

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
                return nombre;
            }

            set
            {
                nombre = value;
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

        public Operation(string nombre, string description)
        {
            this.nombre = nombre;
            this.description = description;
        }

        public Operation(int id, string nombre, string description)
        {
            this.id = id;
            this.nombre = nombre;
            this.description = description;
        }
    }
}

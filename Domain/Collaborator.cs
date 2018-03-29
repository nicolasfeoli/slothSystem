using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Collaborator
    {
        private int id;
        private string alias;
        private string position;
        private string description;

        public Collaborator(int id, string alias, string position, string description)
        {
            this.id = id;
            this.alias = alias;
            this.position = position;
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

        public string Alias
        {
            get
            {
                return alias;
            }

            set
            {
                alias = value;
            }
        }

        public string Position
        {
            get
            {
                return position;
            }

            set
            {
                position = value;
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

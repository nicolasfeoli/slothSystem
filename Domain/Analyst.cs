using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domain
{
    public class Analyst
    {
        private int id;
        private string name;
        private string identification;
        private string user;
        private string email;

        public Analyst(int id, string name, string identification, string user, string email)
        {
            this.id = id;
            this.name = name;
            this.identification = identification;
            this.user = user;
            this.email = email;
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

        public string Identification
        {
            get
            {
                return identification;
            }

            set
            {
                identification = value;
            }
        }

        public string User
        {
            get
            {
                return user;
            }

            set
            {
                user = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }               
    }
}

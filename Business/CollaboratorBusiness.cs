using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using Util;
using Data;

namespace Business
{
    public class CollaboratorBusiness
    {
        private CollaboratorData collaboratorData;

        public CollaboratorBusiness()
        {
            collaboratorData = new CollaboratorData();
        }
        public bool insertCollaborator(Collaborator collaborator)
        {
            return collaboratorData.insertCollaborator(collaborator);
        }
    }
}

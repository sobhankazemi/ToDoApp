using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToDo.DataLayer.Repositories;
using ToDo.DataLayer.RepositoryServices;

namespace ToDo.DataLayer.Factory
{
    public class Factory:IDisposable
    {
        ToDo_DBEntities db = new ToDo_DBEntities();
        private  ITaskRepository _taskRepository;
        public ITaskRepository TaskRepository
        {
            get
            {
                if (_taskRepository == null)
                {
                    _taskRepository = new TaskRepository(db);
                }
                return _taskRepository;
            }
        }

        public void Dispose()
        {
            db.Dispose();
        }
        public void Save()
        {
            db.SaveChanges();
        }
    }
}

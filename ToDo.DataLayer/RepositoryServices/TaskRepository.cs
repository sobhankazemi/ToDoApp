using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ToDo.DataLayer.Repositories;
using System.Data.Entity;

namespace ToDo.DataLayer.RepositoryServices
{
    public class TaskRepository : ITaskRepository
    {
        private ToDo_DBEntities _db;
        public TaskRepository(ToDo_DBEntities db)
        {
            _db = db;
        }
        public bool AddTask(Task task)
        {
            try
            {
                _db.Tasks.Add(task);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool DeleteTask(int id)
        {
            try
            {
                var task = GetTaskById(id);
                DeleteTask(task);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public bool DeleteTask(Task task)
        {
            try
            {
                _db.Entry(task).State = EntityState.Deleted;
                return true;
            }
            catch
            {
                return false;
            }
        }

        public IEnumerable<Task> GetAllTasks()
        {
            return _db.Tasks.ToList();
        }

        public Task GetTaskById(int id)
        {
            return _db.Tasks.Find(id);
        }

        public bool UpdateTask(Task task)
        {
            try
            {
                //it should be used when we you make an instance without using format
                var local = _db.Set<Task>().Local.FirstOrDefault(f => f.Id == task.Id);
                if (local != null)
                {
                    _db.Entry(local).State = EntityState.Detached;
                }

                _db.Entry(task).State = EntityState.Modified;
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToDo.DataLayer.Repositories
{
    public interface ITaskRepository
    {
        IEnumerable<Task> GetAllTasks();
        bool AddTask(Task task);
        bool UpdateTask(Task task);
        bool DeleteTask(int id);
        bool DeleteTask(Task task);
        Task GetTaskById(int id);
    }
}

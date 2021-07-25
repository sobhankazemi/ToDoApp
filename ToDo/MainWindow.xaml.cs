using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Input;
using System.Windows.Media;
using ToDo.Tools;
using ToDo;
using System.Data;
using ToDo.DataLayer.Factory;
using ToDo.DataLayer;
using ToDo.DataLayer.Repositories;
using ToDo.DataLayer.RepositoryServices;


namespace ToDo
{
    public partial class MainWindow : Window
    {
        public bool IsEdit { get; set; }
        public int id { get; set; }
        public bool  IsChanged { get; set; }
        public MainWindow()
        {
            InitializeComponent();
            Day.Text = DateTime.Now.DayFormatter();
            Month.Text = DateTime.Now.ToString("MMM");
            year.Text = DateTime.Now.Year.ToString();
            ColorChanger(DateTime.Now);
            BindGrid();
        }
        private void BindGrid()
        {
            using (var db = new Factory())
            {
                Tasks.ItemsSource = db.TaskRepository.GetAllTasks();
            }
        }
        private void ColorChanger(DateTime date)
        {
            if (date.DayOfWeek.ToString() == "Saturday")
            {
                Saturday.Foreground = Brushes.Red;
            }
            else if (date.DayOfWeek.ToString() == "Sunday")
            {
                Sunday.Foreground = Brushes.Red;
            }
            else if (date.DayOfWeek.ToString() == "Monday")
            {
                Monday.Foreground = Brushes.Red;
            }
            else if (date.DayOfWeek.ToString() == "Tuesday")
            {
                Tuesday.Foreground = Brushes.Red;
            }
            else if (date.DayOfWeek.ToString() == "Wednesday")
            {
                Wednesday.Foreground = Brushes.Red;
            }
            else if (date.DayOfWeek.ToString() == "Thursday")
            {
                Thursday.Foreground = Brushes.Red;
            }
            else if (date.DayOfWeek.ToString() == "Friday")
            {
                Friday.Foreground = Brushes.Red;
            }
        }
        private void Home_Click(object sender, RoutedEventArgs e)
        {
            HomeWindow.Visibility = Visibility.Visible;
            AddTaskWindow.Visibility = Visibility.Hidden;
            AddTaskWindowToNull();
            AddTask.Visibility = Visibility.Visible;
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btnMinimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                if (e.ChangedButton == MouseButton.Left)
                    this.DragMove();
            }
            catch (InvalidOperationException)
            {

            }
        }

        private void DeleteRow_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            try
            {
                var task = new Task();
                task = Tasks.SelectedItem as Task;
                if (MessageBox.Show($"do you want to delete {task.Task1}", "", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
                {
                    using (var db = new Factory())
                    {
                        db.TaskRepository.DeleteTask(task.Id);
                        db.Save();
                    }
                    BindGrid();
                }
            }
            catch (NullReferenceException nre)
            {
                MessageBox.Show(nre.Message);
            }
        }

        private void AddTask_Click(object sender, RoutedEventArgs e)
        {
            HomeWindow.Visibility = Visibility.Hidden;
            AddTaskWindow.Visibility = Visibility.Visible;
            AddTask.Visibility = Visibility.Hidden;
     
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            AddTaskWindow.Visibility = Visibility.Hidden;
            AddTaskWindowToNull();
            AddTask.Visibility = Visibility.Visible;
            HomeWindow.Visibility = Visibility.Visible;
            IsEdit = false;
        }
        private void AddTaskWindowToNull()
        {
            Start.Text = null;
            Finish.Text = null;
            Task.Text = null;
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            if (Task.Text.Length < 29)
            {
                var _task = new Task
                {
                    Task1 = Task.Text,
                    Start = Start.Text,
                    Finish = Finish.Text,
                    HasDone = false
                };
                using (var db = new Factory())
                {
                    if (IsEdit)
                    {
                        _task.HasDone = IsChanged;
                        _task.Id = id;
                        db.TaskRepository.UpdateTask(_task);
                    }
                    else
                    {
                        db.TaskRepository.AddTask(_task);
                    }
                    db.Save();
                }
                AddTaskWindow.Visibility = Visibility.Hidden;
                AddTaskWindowToNull();
                BindGrid();
                HomeWindow.Visibility = Visibility.Visible;
                AddTask.Visibility = Visibility.Visible;
                IsEdit = false;
                IsChanged = false;
            }
        }

        private void EditRow_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            HomeWindow.Visibility = Visibility.Hidden;
            AddTask.Visibility = Visibility.Hidden;
            var task = new Task();
            task = Tasks.SelectedItem as Task;
            Task.Text = task.Task1;
            Start.Text = task.Start;
            Finish.Text = task.Finish;
            IsChanged = task.HasDone;
            AddTaskWindow.Visibility = Visibility.Visible;
            IsEdit = true;
            id = task.Id;
        }

        private void HasDone_Click(object sender, RoutedEventArgs e)
        {
            var task = Tasks.SelectedItem as Task;
            if (task.HasDone)
                task.HasDone = false;
            else
                task.HasDone = true;
            using(var db=new Factory())
            {
                db.TaskRepository.UpdateTask(task);
                db.Save();
            }
        }

        private void Task_TextChanged(object sender, System.Windows.Controls.TextChangedEventArgs e)
        {
            if (Task.Text.Length > 29)
            {
                Error.Visibility = Visibility.Visible;
            }
            else
            {
                Error.Visibility = Visibility.Hidden;
            }
        }
    }
}

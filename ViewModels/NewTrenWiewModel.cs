using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Windows.Input;
using TRAIN.Servies;
namespace TRAIN.ViewModels
{
    public class NewTrenWiewModel : INotifyPropertyChanged
    {
        private NewTraneServies _newTraneServies;
        private string _trainingName;
        private string _date;
        private string _time;
        private string _newGoal;

        public NewTrenWiewModel()
        {
            Goals = new ObservableCollection<string>();
            AddGoalCommand = new Command(AddGoal);
            RemoveGoalCommand = new Command<string>(RemoveGoal);
 
            _newTraneServies = new NewTraneServies();
            SaveCommand = new Command(async ()  =>
            {
                await SaveTraining();
            });
        }

        public string TrainingName
        {
            get => _trainingName;
            set
            {
                _trainingName = value;
                OnPropertyChanged();
            }
        }

        public string Date
        {
            get => _date;
            set
            {
                _date = value;
                OnPropertyChanged();
            }
        }

        public string Time
        {
            get => _time;
            set
            {
                _time = value;
                OnPropertyChanged();
            }
        }

        public string NewGoal
        {
            get => _newGoal;
            set
            {
                _newGoal = value;
                OnPropertyChanged();
            }
        }

        public ObservableCollection<string> Goals { get; }

        public ICommand AddGoalCommand { get; }
        public ICommand RemoveGoalCommand { get; }
        public ICommand SaveCommand { get; }

        private void AddGoal()
        {
            if (!string.IsNullOrWhiteSpace(NewGoal))
            {
                Goals.Add(NewGoal);
                NewGoal = string.Empty; // Очищаем поле ввода
            }
        }

        private void RemoveGoal(string goal)
        {
            if (!string.IsNullOrEmpty(goal) && Goals.Contains(goal))
            {
                Goals.Remove(goal);
            }
        }

        private async Task SaveTraining()
        {
            try
            {
                
                TrenModel model = new TrenModel()
                {
                    Id = Guid.NewGuid().ToString(), 
                    Name = TrainingName,
                    Data = Date,
                    Time = Time,
                    Goals = Goals.Select(g => new GoalItem { Text = g, IsChecked = false }).ToList()
                };
              bool check =   await  _newTraneServies.SaveTren(model);
                if (check) 
               await DialogHelper.ShowAlert("Успех", $"Вы добавили тренировку", "OK");
                else
                 await DialogHelper.ShowAlert("Ошибка", $"Попробуйте еще раз", "OK");
            }
            catch(Exception ex) 
            {
                Application.Current.MainPage.DisplayAlert("Ошибка", $"{ex.Message}", "OK");
            }   
            
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
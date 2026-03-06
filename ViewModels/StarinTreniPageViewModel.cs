using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows.Input;
using TRAIN.Servies;

namespace TRAIN
{
   public  class StarinTreniPageViewModel : INotifyPropertyChanged 
    {

        private readonly StrarinTreniServies _loadedService;
        public ObservableCollection<StarinModelTren> Trenings { get; set; }



        public ICommand CompleteTrainingCommand { get; }

        public StarinTreniPageViewModel()
        {
            Trenings = new ObservableCollection<StarinModelTren>();
            _loadedService = new StrarinTreniServies();
            CompleteTrainingCommand = new Command<StarinModelTren>(async (model) =>
            {
                await CompleteTraining(model);
            });
            LoadTrenings();
        }

        private async Task CompleteTraining(StarinModelTren model)
        {
          var check =   await _loadedService.DeleteStarinTreni(model);
            if (check)
            {
                await DialogHelper.ShowAlert("Успех", "Завершенная тренировка удалена");
                Trenings.Remove(model);
            }
     
        }

        private async void LoadTrenings()
        {
            try
            {
                 var list =   await _loadedService.LoadedTreni();
                
                    Trenings.Clear();
               
                    foreach (var tren in list)
                     {
                        Trenings.Add(tren);
                    }
                
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Ошибка загрузки: {ex.Message}");
            }
        }

       
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

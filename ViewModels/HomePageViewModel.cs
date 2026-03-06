
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text;
using TRAIN.Servies;

namespace TRAIN.ViewModels
{
    public  class HomePageViewModel : INotifyPropertyChanged
    {
        private HomeServies HomeServies { get; set; }
        private int _goals;
        private int _truegoal;
        private int _falsegoal;
        private int _coin;
        public HomePageViewModel() { 
        HomeServies = new HomeServies();
            MainThread.BeginInvokeOnMainThread(async () =>
            {
                await LoadedProfil(); // Перезагружаем список
            });
        }
        public int Coin
        {
            get => _coin;
            set
            {
                _coin = value;
                OnPropertyChanged();
            }
        }
        public int Goal
        {
            get => _goals;
            set
            {
                _goals = value;
                OnPropertyChanged();
            }
        }

        public int TrueGoal
        {
            get => _truegoal;
            set
            {
                _truegoal = value;
                OnPropertyChanged();
            }
        }

        public int  FalseGoal
        {
            get => _falsegoal;
            set
            {
                _falsegoal = value;
                OnPropertyChanged();
            }
        }
        
      
        public async Task LoadedProfil()
        {
            try {
                var profilmodel = await HomeServies.LoadedProfil();
                if (profilmodel != null) {
                    Goal = profilmodel.Goals;
                    TrueGoal = profilmodel.Truegoal;
                    FalseGoal = profilmodel.Falsegoal;
                    Coin = profilmodel.Coin;
                }
               
            
            }
            catch(Exception ex) {
                await DialogHelper.ShowAlert("Ошибка", $"{ex.Message}");
            
            }
        }
        
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

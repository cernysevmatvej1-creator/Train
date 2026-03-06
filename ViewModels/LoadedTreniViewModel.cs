using Microsoft.Maui.Controls;
using Plugin.LocalNotification;
using System;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using System.Windows.Input;
using TRAIN.Servies;
using System.Timers;
namespace TRAIN.ViewModels
{
    public class LoadedTrenViewModel : INotifyPropertyChanged
    {

        
        private  LoadedSerisesTrens _loadedService;
        private int _countactivetren;
        private readonly InterfaceNotificain _pushService;
        public ObservableCollection<TrenModel> Trenings { get; set; }
        public ICommand CompleteTrainingCommand { get; }
        public ICommand NapominanieTrenisCommand { get; }
        public ICommand DeleTeTreniCommand {  get; }
        public ICommand NavigitoinZavTren {  get; }
        public int CountActiveTren
        {
            get => _countactivetren;
            set
            {
                _countactivetren = value;
                OnPropertyChanged();
            }
        }
        public LoadedTrenViewModel(InterfaceNotificain pushService)  
        {
            Trenings = new ObservableCollection<TrenModel>();
            _loadedService = new LoadedSerisesTrens();
            _pushService = pushService; 
    
            CompleteTrainingCommand = new Command<TrenModel>(CompleteTraining);
            NapominanieTrenisCommand = new Command<TrenModel>(async (model) =>
            {
                await NapominaieTreni(model);
            });
            DeleTeTreniCommand =  new Command<TrenModel>(async (model) =>
            {
                await DeleTreni(model);
            });
            d();
            // Проверяем разрешения при запуске через сервис
            
            
        }
        private async void d()
        {
          await  LoadTrenings();
        }
        private async Task LoadTrenings()
        {

            try
            {
                var result = await _loadedService.LoadedTrens();
                if (result != null)
                {
                    Trenings.Clear();
                    foreach (var tren in result)
                    {
                       
                            Trenings.Add(tren);
            CountActiveTren = Trenings.Count;
                    }
                    
                }

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Ошибка загрузки: {ex.Message}");
            }
        }
     
        private async void CompleteTraining(TrenModel training)
        {
            if (training != null)
            {
                for (int i = 0; i < training.Goals.Count; i++)
                {
                    var goal = training.Goals[i];
                }

                StarinModelTren starinModelTren = new StarinModelTren()
                {
                    Data = training.Data,
                    Name = training.Name,
                    Time = training.Time,
                    Goals = training.Goals,
                    Id = Guid.NewGuid().ToString()
                };

                bool check = await _loadedService.SaveZavTren(starinModelTren);
                if (check)
                {
                    bool checks = await _loadedService.DeleteTreni(training);
                    if (checks)
                    {
                        await AnimateItemRemoval(training);
                        Trenings.Remove(training);
                        await DialogHelper.ShowAlert("Успех", "Вы завершили тренировку");
            

               
                        await Application.Current.MainPage.DisplayAlert("Успех", $"  Вы завершили тренировку, она будет добавлена в раздел 'завершенные тренировки'", "OK");
                    }
                   
                }
                else
                {
                    await Application.Current.MainPage.DisplayAlert("Ошибка", $"К сожалению не удалось завершить тренировку", "OK");
                }

            }
        }
        private async Task AnimateItemRemoval(TrenModel item)
        {
            try
            {
                // Находим CollectionView по имени
                var page = Application.Current.MainPage as NavigationPage;
                var loadedTrensPage = page?.CurrentPage as LoadedTrens;

                if (loadedTrensPage != null)
                {
                    var collectionView = loadedTrensPage.FindByName<CollectionView>("TrainsCollection");

                    if (collectionView != null)
                    {
                        // Ищем элемент
                        var cells = collectionView.GetVisualTreeDescendants();

                        foreach (var cell in cells)
                        {
                            // Приводим к BindableObject чтобы получить BindingContext
                            if (cell is BindableObject bindable && bindable.BindingContext == item)
                            {
                                if (cell is VisualElement visualElement)
                                {
                                    // Анимация
                                    await visualElement.FadeTo(0, 300);
                                    await visualElement.ScaleTo(0.5, 300);

                                    // Сброс
                                  
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка анимации: {ex}");
            }

            await Task.Delay(300);
        }
        public async Task DeleTreni(TrenModel trenModel)
        {
            try
            {
                bool userConfirmed = await DialogHelper.ShowConfirmation(
    "Удаление",
    "Вы уверены, что хотите удалить тренировку?"
);

                if (userConfirmed)
                {
                    // Пользователь нажал "Да" — удаляем
                  var check =  await _loadedService.DeleteTreni(trenModel);
                    if(check)
                        Trenings.Remove(trenModel);
                }
               
               
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert(
                    "Ошибка",
                    $"Не удалось создать уведомление: {ex.Message}",
                    "OK");

                System.Diagnostics.Debug.WriteLine($"Ошибка уведомления: {ex.Message}");
            }
        }
        public async Task NapominaieTreni(TrenModel training)
        {
            try
            {
                string selectedTime = await DialogHelper.ShowTimeSelection();
                if (selectedTime != null)
                {
                    int i = 0;
                    switch (selectedTime)
                    {
                        case "1 - За час":
                            i = 1;
                            break;
                        case "2 - За 2 часа":
                            i = 2;
                            break;
                        case "3 - За 3 часа":
                            i = 3;
                            break;
                          default 
                            :
                            break;
                    }

                    if(i != 0 )
                       await _pushService.SendPushing(training, i);

                }
             
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert(
                    "Ошибка",
                    $"Не удалось создать уведомление: {ex.Message}",
                    "OK");

                System.Diagnostics.Debug.WriteLine($"Ошибка уведомления: {ex}");
            }
        }

        
        
      

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
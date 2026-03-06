using System.Diagnostics;
using TRAIN.Servies;
using TRAIN.ViewModels;

namespace TRAIN
{
    public partial class MainPage : ContentPage
    {
        private string basikinsta = "basikinsta";
        HomePageViewModel viewModel;
        public MainPage()
        {
            InitializeComponent();
            viewModel = new HomePageViewModel();
            BindingContext = viewModel;
            
        }
        
        public async Task f () {
            if (StaticIf.Dir == 1)
            {
                Application.Current.MainPage = new NavigationPage(new MainPage());
                StaticIf.Dir -= 1;
            }
            Debug.WriteLine(StaticIf.Dir);
            
        }
        private async void Button_Clicked(object sender, EventArgs e)
        {
            try
            {
                InterfaceNotificain interfaceNotificain = new PushService();
                var nextPage = new LoadedTrens(interfaceNotificain);

                // 1. Скрываем бар программно (дублируем для верности)
                NavigationPage.SetHasBackButton(nextPage, false);

                // 2. Делаем переход (Push)
                await Navigation.PushAsync(nextPage);

                // 3. ПОЛНАЯ ОЧИСТКА СТЕКА
                // Получаем список всех страниц, которые сейчас в памяти
              

             
                // Теперь в стеке осталась ТОЛЬКО LoadedTrens. Назад идти некуда.
            }
            catch (Exception ex)
            {
                // Используем вывод ошибки, как у тебя в ViewModel
                Debug.WriteLine(ex.Message);
            }
        }
        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            var newPage = new NewPage1();

            // Полностью заменяем текущую навигацию
  

            // 1. Скрываем бар программно (дублируем для верности)
            NavigationPage.SetHasBackButton(newPage, false);

            // 2. Делаем переход (Push)
            await Navigation.PushAsync(newPage);

        }
        protected override async void OnAppearing()
        {
            base.OnAppearing();
         await   viewModel.LoadedProfil();
   await f();
         
        }

        }
}            
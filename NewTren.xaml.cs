


using TRAIN.Servies;
using TRAIN.ViewModels;
namespace TRAIN;

public partial class NewPage1 : ContentPage
{
	public NewPage1()
	{
		InitializeComponent();
		BindingContext = new NewTrenWiewModel();

    }

    private async void Button_Clicked(object sender, EventArgs e)
    {
        try
        {
            InterfaceNotificain interfaceNotificain = new PushService();

            // Создаем новую страницу
            var newPage = new LoadedTrens(interfaceNotificain);

            // Полностью заменяем текущую навигацию
            await Navigation.PushAsync(newPage);
  

        }
        catch (Exception ex)
        {
            await DisplayAlert("Ошибка", $"Не удалось перейти: {ex.Message}", "OK");
        }
    }
   
    private async void Button_Clicked_1(object sender, EventArgs e)
    {
        var newPage = new MainPage();

        // Полностью заменяем текущую навигацию
        await Navigation.PushAsync(newPage);

    }

    private void Button_Clicked_2(object sender, EventArgs e)
    {

    }
}
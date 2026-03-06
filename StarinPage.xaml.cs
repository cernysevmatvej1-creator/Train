using System.Globalization;

namespace TRAIN;

public partial class StarinPage : ContentPage
{
	public StarinPage()
	{
		InitializeComponent();
		BindingContext = new StarinTreniPageViewModel();
	}
}

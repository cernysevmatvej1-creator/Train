using Microsoft.Maui.Controls;
using System;
using System.Collections.Generic;
using TRAIN.Servies;
using TRAIN.ViewModels;

namespace TRAIN;

public partial class LoadedTrens : ContentPage
{


    public LoadedTrens(InterfaceNotificain interfaceNotificain)
    {
        InitializeComponent();
        BindingContext = new LoadedTrenViewModel(interfaceNotificain);  // ViewModel уже готова, с сервисом внутри!
    }
    private async void Button_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MainPage());

    }

    private async  void Button_Clicked_1(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new NewPage1());
    }

    private async void Button_Clicked_2(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new StarinPage()) ;
    }
}
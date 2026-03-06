
using Microsoft.Extensions.Logging;
using Plugin.LocalNotification;
using TRAIN.Servies;
using TRAIN.ViewModels;

namespace TRAIN
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                //.UseLocalNotification() // 👈 ВАЖНО: добавляем эту строку!
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

#if DEBUG
            builder.Logging.AddDebug();
#endif
            

            builder.Services.AddSingleton<NewTraneServies>();
            builder.Services.AddSingleton<LoadedSerisesTrens>();

            // Регистрируем ViewModels
            builder.Services.AddTransient<NewTrenWiewModel>();
            builder.Services.AddTransient<LoadedTrenViewModel>();

            // Регистрируем страницы
            builder.Services.AddTransient<NewPage1>();
            builder.Services.AddTransient<LoadedTrens>();

            return builder.Build();
        }
    }
}

using Plugin.LocalNotification;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Text;

namespace TRAIN.Servies
{
   public  interface InterfaceNotificain
    {
        Task SendPushing(TrenModel training,int timeminus);

    }
    class PushService  : InterfaceNotificain
    {
        public PushService() 
        {
            MainThread.BeginInvokeOnMainThread(async () =>
            {
                await CheckNotificationPermission();
            });
        }
        private async Task CheckNotificationPermission()
        {
            try
            {
#if ANDROID
                // Для Android 13+ проверяем разрешение
                if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.Tiramisu) // API 33
                {
                    var status = await Permissions.CheckStatusAsync<Permissions.PostNotifications>();
                    if (status != PermissionStatus.Granted)
                    {
                        status = await Permissions.RequestAsync<Permissions.PostNotifications>();

                        if (status == PermissionStatus.Granted)
                        {
                            System.Diagnostics.Debug.WriteLine("Разрешение на уведомления получено");
                        }
                    }
                }
#endif
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Ошибка при проверке разрешений: {ex}");
            }
        }

        public async Task SendPushing(TrenModel training, int timeminus)
        {
            try
            {
                // Разбираем дату
                string[] dateParts = training.Data.Split('.');
                int day = int.Parse(dateParts[0]);
                int month = int.Parse(dateParts[1]);
                int year = DateTime.Now.Year;

                // Разбираем время
                string[] timeParts = training.Time.Split(':');
                int hours = int.Parse(timeParts[0]);
                int minutes = int.Parse(timeParts[1]);

                // Вычитаем часы
                hours -= timeminus;

                // Создаем DateTime напрямую (самый надежный способ)
                DateTime result = new DateTime(year, month, day, hours, minutes, 0);

                var request = new NotificationRequest
                {
                    NotificationId = new Random().Next(1000, 9999),
                    Title = "Напоминание о тренировке",
                    Description = $"Тренировка: {training?.Name ?? "Без названия"}",
                    Schedule = new NotificationRequestSchedule
                    {
                        NotifyTime = result
                    }
                };

#if ANDROID
                request.Android = new Plugin.LocalNotification.AndroidOption.AndroidOptions
                {
                    ChannelId = "default"
                };
#endif

                await LocalNotificationCenter.Current.Show(request);

                await Application.Current.MainPage.DisplayAlert(
                    "Успех",
                    $"Уведомление запланировано на {result:dd.MM.yyyy HH:mm}",
                    "OK");
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert(
                    "Ошибка",
                    $"Не удалось создать уведомление: {ex.Message}",
                    "OK");
            }
        }
    }
}

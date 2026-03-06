using SQLite;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;

    using SQLite;  // Важно!
    using System;
    using System.Collections.Generic;
    using System.Globalization;
    using System.Text;

    namespace TRAIN
    {
        public class GoalItem
        {
            [PrimaryKey, AutoIncrement]
            public int Id { get; set; }

            public string TrainId { get; set; }  // Связь с тренировкой

            public string Text { get; set; }
            public bool IsChecked { get; set; }

            public GoalItem(string text)
            {
                Text = text;
                IsChecked = false;
            }

            public GoalItem() { }
        }

        public class TrenModel
        {
            [PrimaryKey]
            public string Id { get; set; }

            public string Name { get; set; }
            public string Data { get; set; }
            public string Time { get; set; }

            [Ignore]  // SQLite не сохраняет это поле
            public List<GoalItem> Goals { get; set; }

            public bool ZaFer { get; set; }

            public TrenModel()
            {
                Goals = new List<GoalItem>();
            }
        }

        // Конвертеры остаются без изменений
        public class BoolToColorConverter : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                return (bool)value ? Color.FromArgb("#30D158") : Color.FromArgb("#8E8E93");
            }

            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }

        public class BoolToTextColorConverter : IValueConverter
        {
            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                return (bool)value ? Color.FromArgb("#0A0A0A") : Color.FromArgb("#8E8E93");
            }

            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }
    }
    public class BoolToColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return (bool)value ? Color.FromArgb("#30D158") : Color.FromArgb("#8E8E93");
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

    public class BoolToTextColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return (bool)value ? Color.FromArgb("#0A0A0A") : Color.FromArgb("#8E8E93");
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }

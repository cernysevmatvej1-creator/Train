using SQLite;
using System.Diagnostics;

namespace TRAIN.Servies
{
    // КЛАСС ОСТАЛСЯ С ТЕМ ЖЕ ИМЕНЕМ!
    class NewTraneServies : DataBaseSQL
    {
    

       

        public async Task<bool> SaveTren(TrenModel trenModel)
        {
            try
            {
                // Сохраняем тренировку
                if (string.IsNullOrEmpty(trenModel.Id))
                    trenModel.Id = Guid.NewGuid().ToString();

                await _database.InsertAsync(trenModel);

                // Сохраняем цели
                foreach (var goal in trenModel.Goals)
                {
                    goal.TrainId = trenModel.Id;  // Связываем с тренировкой
                    await _database.InsertAsync(goal);
                }

                Debug.WriteLine($"Сохранена тренировка: {trenModel.Name}");
                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка сохранения: {ex.Message}");
                return false;
            }
        }
    }
}
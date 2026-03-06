using SQLite;
using System.Diagnostics;

namespace TRAIN.Servies
{
    // КЛАСС ОСТАЛСЯ С ТЕМ ЖЕ ИМЕНЕМ!
    class LoadedSerisesTrens : DataBaseSQL
    {

       
       

        // МЕТОД ТОТ ЖЕ, НО ВНУТРИ ПО-НОВОМУ!
        public async Task<List<TrenModel>> LoadedTrens()
        {
            try
            {
               
                var trains = await _database.Table<TrenModel>().ToListAsync();
                List<TrenModel> Trens = new List<TrenModel>();
                Trens.Clear();
                foreach (var train in trains)
                {
                    // Загружаем цели для каждой тренировки
                    var goals = await _database.Table<GoalItem>()
                        .Where(g => g.TrainId == train.Id)
                        .ToListAsync();

                    train.Goals = goals;
                    Trens.Add(train);
                }

                Debug.WriteLine($"Загружено тренировок: {Trens.Count}");
                return Trens;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка загрузки: {ex.Message}");
                return null;
            }
        }

        // МЕТОД ТОТ ЖЕ!
        public async Task<bool> SaveZavTren(StarinModelTren starinModelTren)
        {
            try
            {
                await _database.InsertAsync(starinModelTren);

                // Сохраняем цели
                foreach (var goal in starinModelTren.Goals)
                {
                    goal.TrainId = starinModelTren.Id;  // Связываем с тренировкой
                    await _database.InsertAsync(goal);
                }
                return true;
            }
            catch
            {
                return false;
            }
        }

        // МЕТОД ТОТ ЖЕ!
        public async Task<bool> DeleteTreni(TrenModel trenModel)
        {
            try
            {
                // Удаляем сначала цели
                var goals = await _database.Table<GoalItem>()
                    .Where(g => g.TrainId == trenModel.Id)
                    .ToListAsync();

                foreach (var goal in goals)
                    await _database.DeleteAsync(goal);

                // Потом тренировку
                await _database.DeleteAsync(trenModel);

                // Обновляем профиль (как в твоем коде)
                bool check = await SaveProfilOknov(trenModel);

                return check;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при удалении: {ex.Message}");
                return false;
            }
        }

        private async Task<bool> SaveProfilOknov(TrenModel trenModel)
        {
            try
            {
                // Загружаем или создаем профиль
                var profilModel = await _database.Table<ProfilModel>().FirstOrDefaultAsync();

                if (profilModel == null)
                {
                    profilModel = new ProfilModel
                    {
                        Coin = 0,
                        Falsegoal = 0,
                        Goals = 0,
                        Truegoal = 0
                    };
                    await _database.InsertAsync(profilModel);
                }

                // Обновляем статистику
                foreach (var goals in trenModel.Goals)
                {
                    if (goals.IsChecked)
                    {
                        profilModel.Coin += 50;
                        profilModel.Truegoal += 1;
                        profilModel.Goals += 1;
                    }
                    else
                    {
                        if (profilModel.Coin > 49)
                            profilModel.Coin -= 50;
                        profilModel.Goals += 1;
                        profilModel.Falsegoal += 1;
                    }
                }

                await _database.UpdateAsync(profilModel);
                return true;
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка профиля: {ex.Message}");
                return false;
            }
        }
    }
}
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;

namespace TRAIN.Servies
{
    class StrarinTreniServies : DataBaseSQL
    {
        private  List<StarinModelTren> starinModelTrens { get; set; } = new List<StarinModelTren>();
       
        public async Task<List<StarinModelTren>> LoadedTreni()
        {
            var trains = await _database.Table<StarinModelTren>().ToListAsync();
            List<StarinModelTren> Trens = new List<StarinModelTren>();
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
        public async Task<bool> DeleteStarinTreni(StarinModelTren starinModelTren)
        {
            try
            {
                var goals = await _database.Table<GoalItem>()
                    .Where(g => g.TrainId == starinModelTren.Id)
                    .ToListAsync();

                foreach (var goal in goals)
                    await _database.DeleteAsync(goal);

                // Потом тренировку
                await _database.DeleteAsync(starinModelTren);
                return true;
               
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Ошибка при удалении: {ex.Message}");
                return false;
            }
        }

    }
}

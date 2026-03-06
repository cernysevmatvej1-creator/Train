using Firebase.Database;
using Firebase.Database.Offline;
using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TRAIN.Servies
{
    class DataBaseSQL
    {
         protected SQLiteAsyncConnection _database;
        public DataBaseSQL()
        {

            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "trains.db");


            _database = new SQLiteAsyncConnection(dbPath);

            // Создаем таблицы заново
            _database.CreateTableAsync<TrenModel>().Wait();
            _database.CreateTableAsync<GoalItem>().Wait();
            _database.CreateTableAsync<ProfilModel>().Wait();
            _database.CreateTableAsync<StarinModelTren>().Wait();

        }
    }
}

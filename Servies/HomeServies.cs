using System;
using System.Collections.Generic;
using System.Text;
using Firebase.Database.Query;
using Firebase.Database;
using System.Diagnostics;
namespace TRAIN.Servies
{
    class HomeServies : DataBaseSQL
    {
        public async Task<ProfilModel> LoadedProfil()
        {
            try
            {
                var profilModel = await _database.Table<ProfilModel>().FirstOrDefaultAsync();
                return profilModel;
            }
            catch (Exception ex) 
            {
                Debug.WriteLine(ex.Message);
                return null;
            }
        }
    }
}

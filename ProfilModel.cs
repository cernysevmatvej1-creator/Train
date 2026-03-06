using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TRAIN
{
    public  class ProfilModel
    {
        [PrimaryKey, AutoIncrement]  // Вот это добавить!
        public int Id { get; set; }

        public int Falsegoal {  get; set; }
        public int Truegoal { get; set; }
        public int Goals { get; set; }
        public int Coin { get; set; }
    }
}

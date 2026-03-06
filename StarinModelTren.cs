using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace TRAIN
{
    public class StarinModelTren
    {
        [PrimaryKey]
        public string Id { get; set; }
       public string Name { get; set; }
        public string Data {  get; set; }
        [Ignore]
        public List<GoalItem> Goals { get; set; }
        public string Time {  get; set; }
        public StarinModelTren()
        {
            Goals = new List<GoalItem>();
        }
    }
}

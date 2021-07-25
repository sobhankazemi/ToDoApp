using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToDo.Tools
{
   public static class DateFormatter
    {
        public static string DayFormatter(this DateTime date)
        {
            if (date.Day.ToString().Length < 2)
            {
                return "0" + date.Day.ToString();
            }
            else
            {
                return date.Day.ToString();
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business
{
    public class WeatherStatus
    {
        private string province;
        private string humidity;
        private string temperature;

        public WeatherStatus(string province)
        {
            Province = province;
            Humidity = "";
            Temperature = "";
        }

        public async Task LoadTaskClimate()
        {
            await ApiCall.WeatherApi(Province);
            humidity = ApiCall.ProvinceHumidity;
            temperature = ApiCall.ProvinceTempeture;
        }

        public async Task LoadAsync()
        {
            await LoadTaskClimate();
        }

        public string Province { get => province; set => province = value; }
        public string Humidity { get => humidity; set => humidity = value; }
        public string Temperature { get => temperature; set => temperature = value; }
    }
}

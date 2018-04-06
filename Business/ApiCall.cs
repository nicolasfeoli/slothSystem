using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;

namespace Business
{
    public class ApiCall
    {
        public static ProvinceName provinceName = new ProvinceName();
        public static string ProvinceTempeture { get; private set; }
        public static string ProvinceHumidity { get; private set; }

        public static async Task WeatherApi(string placeName)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://api.openweathermap.org/data/2.5/weather");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                string key = "a92aac927f229adb88e4efb0c25ddcb8";
                HttpResponseMessage respon = await client.GetAsync("?q=" + placeName + "&APPID=" + key);
                if (respon.StatusCode == HttpStatusCode.OK)
                {
                    //String kq = await respon.Content.ReadAsStringAsync();
                    //System.Diagnostics.Debug.Write(kq);                    
                    ProvinceName province = respon.Content.ReadAsAsync<ProvinceName>().Result;
                    System.Diagnostics.Debug.Write("Nombre de lugar: " + province.name + "\n");
                    provinceName.name = province.name;
                    System.Diagnostics.Debug.Write("humidity: " + province.main.humidity);                    
                    province.main.humidity = province.main.humidity;
                    System.Diagnostics.Debug.Write("tempeture: " + province.main.temp);                   
                    province.main.temp = province.main.temp;
                }
                Console.ReadKey();
            }
        }       
    }
}

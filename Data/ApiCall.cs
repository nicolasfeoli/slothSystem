using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;

namespace Data
{
    class ApiCall
    {
        public static string ProvinceName { get; private set; }
        public static string provinceTempeture { get; private set; }
        public static string provinceHumidity { get; private set; }
        static async Task WeatherApi(string placeName)
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
                    //Console.Write(kq);
                    ProvinceName province = respon.Content.ReadAsAsync<ProvinceName>().Result;
                    Console.WriteLine("Nombre de lugar: " + province.name);
                    ProvinceName = province.name;
                    Console.WriteLine("humidity: " + province.main.humidity);
                    provinceHumidity = province.main.humidity;
                    Console.WriteLine("tempeture: " + province.main.temp);
                    provinceTempeture = province.main.temp;

                }

                Console.ReadKey();
            }
        }
        


    }
}

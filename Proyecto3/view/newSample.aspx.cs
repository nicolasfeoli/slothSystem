using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;

namespace Proyecto3.view
{
    public partial class newSample : System.Web.UI.Page
    {
        private string province;
        private string humidity;
        private string temperature;

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dateTime = DateTime.Now;
            currentTime.Text = "Hora: " + dateTime.Hour + ":" + dateTime.Minute;
            province = DropDownList1.SelectedItem.Value;            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            province = DropDownList1.SelectedItem.Value;
            System.Diagnostics.Debug.Write(province + "\n");
            RegisterAsyncTask(new PageAsyncTask(LoadTaskClimate));            
        }

        public async Task LoadTaskClimate()
        {
            await ApiCall.WeatherApi(province);
            humidityLabel.Text = ApiCall.ProvinceHumidity;
            temperatureLabel.Text = ApiCall.ProvinceTempeture;
            //Imprimir los valores
            System.Diagnostics.Debug.Write(humidity + "\n");
            System.Diagnostics.Debug.Write(temperature + "\n");
        }
    }
}
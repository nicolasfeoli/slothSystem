using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Data;
using Domain;

namespace Business
{
    public class SampleBusiness
    {
        private SampleData sampleData;

        public SampleBusiness()
        {
            this.sampleData = new SampleData();
        }

        public bool insertNewSample(Sample sample)
        {
            return sampleData.insertNewSample(sample);
        }
    }
}

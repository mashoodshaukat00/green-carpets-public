using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class CountryModel : ModelBase
    {
        public CountryModel()
        {
        }

        public CountryModel(int id, string iso, string name, string iso3, int? numCode, int phoneCode)
        {
            Id = id;
            Iso = iso ?? throw new ArgumentNullException(nameof(iso));
            Name = name ?? throw new ArgumentNullException(nameof(name));
            Iso3 = iso3 ?? throw new ArgumentNullException(nameof(iso3));
            NumCode = numCode;
            PhoneCode = phoneCode;
        }

        public int Id { get; set; }
        public string Iso { get; set; }
        public string Name { get; set; }
        public string Iso3 { get; set; }
        public int? NumCode { get; set; }
        public int PhoneCode { get; set; }
    }
}

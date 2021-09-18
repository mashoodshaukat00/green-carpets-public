using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Country
    {
        public Country()
        {
            BaseCompanies = new HashSet<BaseCompany>();
        }

        public int Id { get; set; }
        public string Iso { get; set; }
        public string Name { get; set; }
        public string Iso3 { get; set; }
        public int? NumCode { get; set; }
        public int PhoneCode { get; set; }

        public virtual ICollection<BaseCompany> BaseCompanies { get; set; }
    }
}

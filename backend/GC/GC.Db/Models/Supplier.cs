using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Supplier
    {
        public Supplier()
        {
            Products = new HashSet<Product>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Adress { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public string LegalName { get; set; }
        public string ContactPersonName { get; set; }
        public string ContactPersonEmail { get; set; }
        public string ContactPersonPhone { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}

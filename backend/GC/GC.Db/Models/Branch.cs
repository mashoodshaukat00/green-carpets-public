using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Branch
    {
        public Branch()
        {
            Employees = new HashSet<Employee>();
            Products = new HashSet<Product>();
            Vehicles = new HashSet<Vehicle>();
        }

        public int Id { get; set; }
        public int? BaseCompanyId { get; set; }
        public string Name { get; set; }
        public bool IsDeleted { get; set; }
        public string Address { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual BaseCompany BaseCompany { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
        public virtual ICollection<Product> Products { get; set; }
        public virtual ICollection<Vehicle> Vehicles { get; set; }
    }
}

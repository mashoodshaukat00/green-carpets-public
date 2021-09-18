using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class BaseCompany
    {
        public BaseCompany()
        {
            Branches = new HashSet<Branch>();
            Subscriptions = new HashSet<Subscription>();
        }

        public int Id { get; set; }
        public int CountryId { get; set; }
        public long CompanyOwnerId { get; set; }
        public string Name { get; set; }
        public string LegalName { get; set; }
        public string OrganizationNumber { get; set; }
        public string Address { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual CompanyOwner CompanyOwner { get; set; }
        public virtual Country Country { get; set; }
        public virtual ICollection<Branch> Branches { get; set; }
        public virtual ICollection<Subscription> Subscriptions { get; set; }
    }
}

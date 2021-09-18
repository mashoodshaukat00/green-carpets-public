using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class CompanyOwner
    {
        public CompanyOwner()
        {
            BaseCompanies = new HashSet<BaseCompany>();
        }

        public long Id { get; set; }
        public Guid UserId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
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

        public virtual WebUser User { get; set; }
        public virtual ICollection<BaseCompany> BaseCompanies { get; set; }
    }
}

using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Customer
    {
        public Customer()
        {
            MmCustomerSubscriptions = new HashSet<MmCustomerSubscription>();
            Orders = new HashSet<Order>();
            PaymentMethods = new HashSet<PaymentMethod>();
        }

        public long Id { get; set; }
        public int CustomerTypeId { get; set; }
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

        public virtual CustomerType CustomerType { get; set; }
        public virtual WebUser User { get; set; }
        public virtual ICollection<MmCustomerSubscription> MmCustomerSubscriptions { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
        public virtual ICollection<PaymentMethod> PaymentMethods { get; set; }
    }
}

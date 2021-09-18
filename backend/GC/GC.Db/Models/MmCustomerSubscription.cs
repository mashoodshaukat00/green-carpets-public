using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class MmCustomerSubscription
    {
        public long Id { get; set; }
        public long? CustomerId { get; set; }
        public long? SubscriptionId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime ExpiryDate { get; set; }
        public bool AutoRenewal { get; set; }
        public bool IsActive { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual Customer Customer { get; set; }
        public virtual Subscription Subscription { get; set; }
    }
}

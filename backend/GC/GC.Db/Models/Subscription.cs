using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Subscription
    {
        public Subscription()
        {
            MmCustomerSubscriptions = new HashSet<MmCustomerSubscription>();
            MmSubscriptionServices = new HashSet<MmSubscriptionService>();
        }

        public long Id { get; set; }
        public int SubscriptionTypeId { get; set; }
        public int BaseCompanyId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal? PriceExcludingVat { get; set; }
        public decimal? Vat { get; set; }
        public bool? IsActive { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual BaseCompany BaseCompany { get; set; }
        public virtual SubscriptionType SubscriptionType { get; set; }
        public virtual ICollection<MmCustomerSubscription> MmCustomerSubscriptions { get; set; }
        public virtual ICollection<MmSubscriptionService> MmSubscriptionServices { get; set; }
    }
}

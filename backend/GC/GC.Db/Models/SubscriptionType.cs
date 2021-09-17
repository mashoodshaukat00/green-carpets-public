using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class SubscriptionType
    {
        public SubscriptionType()
        {
            Subscriptions = new HashSet<Subscription>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public bool? IsDailySubscription { get; set; }
        public bool? IsMonthlySubscription { get; set; }
        public bool? IsYearlySubscription { get; set; }

        public virtual ICollection<Subscription> Subscriptions { get; set; }
    }
}

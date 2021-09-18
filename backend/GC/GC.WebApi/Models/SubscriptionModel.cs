using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class SubscriptionModel : ModelBase
    {
        public SubscriptionModel()
        {

        }

        public SubscriptionModel(long id, int subscriptionTypeId, string subscriptionName, int baseCompanyId, string baseCompanyName, string name, string description, decimal? priceExcludingVat, decimal? vat, bool? isActive, bool isDeleted, string createdBy, DateTime? createdAt, string modifiedBy, DateTime? modifiedAt)
        {
            Id = id;
            SubscriptionTypeId = subscriptionTypeId;
            SubscriptionName = subscriptionName ?? throw new ArgumentNullException(nameof(subscriptionName));
            BaseCompanyId = baseCompanyId;
            BaseCompanyName = baseCompanyName ?? throw new ArgumentNullException(nameof(baseCompanyName));
            Name = name ?? throw new ArgumentNullException(nameof(name));
            Description = description ?? throw new ArgumentNullException(nameof(description));
            PriceExcludingVat = priceExcludingVat;
            Vat = vat;
            IsActive = isActive;
            IsDeleted = isDeleted;
            CreatedBy = createdBy ?? throw new ArgumentNullException(nameof(createdBy));
            CreatedAt = createdAt;
            ModifiedBy = modifiedBy ?? throw new ArgumentNullException(nameof(modifiedBy));
            ModifiedAt = modifiedAt;
        }

        public long Id { get; set; }
        public int SubscriptionTypeId { get; set; }
        public string SubscriptionName { get; set; }
        public int BaseCompanyId { get; set; }
        public string BaseCompanyName { get; set; }
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
    }
}

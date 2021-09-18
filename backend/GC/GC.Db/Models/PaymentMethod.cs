using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class PaymentMethod
    {
        public long Id { get; set; }
        public int CardTypeId { get; set; }
        public long CustomerId { get; set; }
        public int? CatdNumber { get; set; }
        public DateTime? CardExpiredAt { get; set; }
        public string Cvc { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual PaymentMethodType CardType { get; set; }
        public virtual Customer Customer { get; set; }
    }
}

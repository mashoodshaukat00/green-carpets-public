using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Order
    {
        public Order()
        {
            InvoiceLines = new HashSet<InvoiceLine>();
            OrderLines = new HashSet<OrderLine>();
        }

        public long Id { get; set; }
        public int OrderTypeId { get; set; }
        public long CustomerId { get; set; }
        public long? EmployeeId { get; set; }
        public decimal? TotalAmount { get; set; }
        public decimal? TotalVat { get; set; }
        public int OrderStatus { get; set; }
        public long? DeliveryAddressId { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual Customer Customer { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual OrderType OrderType { get; set; }
        public virtual ICollection<InvoiceLine> InvoiceLines { get; set; }
        public virtual ICollection<OrderLine> OrderLines { get; set; }
    }
}

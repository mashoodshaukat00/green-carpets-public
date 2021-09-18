using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Invoice
    {
        public Invoice()
        {
            InvoiceLines = new HashSet<InvoiceLine>();
        }

        public long Id { get; set; }
        public int? InvoiceTypeId { get; set; }
        public int? InvoiceStatusTypeId { get; set; }
        public decimal? TotalAmount { get; set; }
        public decimal? TotalVat { get; set; }
        public decimal? TotalPaidAmount { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual InvoiceStatusType InvoiceStatusType { get; set; }
        public virtual InvoiceType InvoiceType { get; set; }
        public virtual ICollection<InvoiceLine> InvoiceLines { get; set; }
    }
}

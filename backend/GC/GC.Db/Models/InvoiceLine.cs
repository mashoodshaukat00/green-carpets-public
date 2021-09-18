using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class InvoiceLine
    {
        public long Id { get; set; }
        public long? InvoiceId { get; set; }
        public long? OrderId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public decimal? OrderSum { get; set; }
        public decimal? Vat { get; set; }

        public virtual Invoice Invoice { get; set; }
        public virtual Order Order { get; set; }
    }
}

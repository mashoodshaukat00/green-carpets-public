using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class OrderLine
    {
        public long Id { get; set; }
        public long OrderId { get; set; }
        public long? ProductId { get; set; }
        public string Title { get; set; }
        public decimal PriceExcludingVat { get; set; }
        public decimal Vat { get; set; }
        public int Quantity { get; set; }

        public virtual Order Order { get; set; }
        public virtual Product Product { get; set; }
    }
}

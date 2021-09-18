using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Product
    {
        public Product()
        {
            OrderLines = new HashSet<OrderLine>();
        }

        public long Id { get; set; }
        public int CategoryId { get; set; }
        public int SupplierId { get; set; }
        public int BranchId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int Quantity { get; set; }
        public decimal? PurchasePrice { get; set; }
        public decimal? DisplayPrice { get; set; }
        public decimal? ProfitMargin { get; set; }
        public string ImageUrl { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual Branch Branch { get; set; }
        public virtual ProductCategory Category { get; set; }
        public virtual Supplier Supplier { get; set; }
        public virtual ICollection<OrderLine> OrderLines { get; set; }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class ProductModel
    {
        public ProductModel()
        {
        }

        public ProductModel(long id, int categoryId, int supplierId, int branchId, string name, string description, int quantity, decimal? price)
        {
            Id = id;
            CategoryId = categoryId;
            SupplierId = supplierId;
            BranchId = branchId;
            Name = name ?? throw new ArgumentNullException(nameof(name));
            Description = description ?? throw new ArgumentNullException(nameof(description));
            Quantity = quantity;
            Price = price;
        }

        public long Id { get; set; }

        public int CategoryId { get; set; }

        public int SupplierId { get; set; }

        public int BranchId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public int Quantity { get; set; }

        public decimal? Price { get; set; }

        public DateTime FetchedAt => System.DateTime.UtcNow;
    }
}

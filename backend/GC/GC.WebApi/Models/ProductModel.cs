using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class ProductModel : ModelBase
    {
        public ProductModel()
        {
        }

        public ProductModel(long id, int categoryId, int supplierId, int branchId, string name, string description, int quantity, decimal? price, string imageUrl)
        {
            Id = id;
            CategoryId = categoryId;
            SupplierId = supplierId;
            BranchId = branchId;
            Name = name;
            Description = description;
            Quantity = quantity;
            Price = price;
            ImageUrl = imageUrl;
        }

        public long Id { get; set; }

        public int CategoryId { get; set; }

        public int SupplierId { get; set; }

        public int BranchId { get; set; }

        public string Name { get; set; }

        public string Description { get; set; }

        public int Quantity { get; set; }

        public decimal? Price { get; set; }
        public string ImageUrl { get; set; }
    }
}

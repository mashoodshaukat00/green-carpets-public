using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GC.Db;
using GC.Db.Models;
using GC.WebApi.Models;
using Microsoft.EntityFrameworkCore;

namespace GC.WebApi.Services
{
    public class ProductService 
    {
        private readonly GreenCarpetsDbContext _context;
        public ProductService(GreenCarpetsDbContext context)
        {
            this._context = context;
        }

        public async Task<IEnumerable<ProductModel>> GetAllAsync()
        {
            var result = await _context.Products.ToListAsync();

            var models = new List<ProductModel>();

            foreach (var product in result)
            {
                models.Add(MapEntityToModel(product));
            }

            return models;
        }

        public async Task<bool> AddAsync(ProductModel model)
        {
            var product = MapModelToEntity(model);
            await _context.Products.AddAsync(product);
            return await _context.SaveChangesAsync() > 0;                        
        }

        public async Task<bool> UpdateAsync(ProductModel model)
        {
            var result = await _context.Products.FirstOrDefaultAsync(x => x.Id == model.Id);
            if (result != null)
            {
                var entity = MapModelToEntity(model);
                _context.Products.Update(entity);
                return await _context.SaveChangesAsync() > 0;
            }
            else
            {
                throw new Exception("Entry not found in database.");
            }

        }
        public async Task<bool> DeleteAsync(int id)
        {
            var result = await _context.Products.FirstOrDefaultAsync(x => x.Id == id);
            if (result != null)
            {
                _context.Products.Remove(result);
                return await _context.SaveChangesAsync() > 0;

            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }

        public async Task<ProductModel> GetProductById(int id)
        {
            var result = await _context.Products.FirstOrDefaultAsync(x => x.Id == id);
            if (result != null)
            {
                return MapEntityToModel(result);
                
            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }

        public async Task<ProductModel> GetProductByCategoryId(int id)
        {
            var result = await _context.Products.FirstOrDefaultAsync(x => x.CategoryId == id);
            if (result != null)
            {
                return MapEntityToModel(result);

            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }

        private static ProductModel MapEntityToModel(Product product)
        {
            return new ProductModel()
            {
                Id = product.Id,
                Name = product.Name,
                BranchId = product.BranchId,
                Description = product.Description,
                CategoryId = product.CategoryId,
                Quantity = product.Quantity,
                Price = product.DisplayPrice,
                SupplierId = product.SupplierId,
                ImageUrl = product.ImageUrl
            };
        }

        private static Product MapModelToEntity(ProductModel model)
        {
            return new Product()
            {
                Id = model.Id,
                Name = model.Name,
                BranchId = model.BranchId,
                Description = model.Description,
                CategoryId = model.CategoryId,
                Quantity = model.Quantity,
                DisplayPrice = model.Price,
                SupplierId = model.SupplierId,
                ImageUrl = model.ImageUrl

            };
        }


    }
}

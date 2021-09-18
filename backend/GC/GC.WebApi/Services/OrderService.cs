using GC.Db;
using GC.WebApi.Models;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using GC.Db.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace GC.WebApi.Services
{
    public class OrderService
    {
        private readonly GreenCarpetsDbContext _context;
        public OrderService (GreenCarpetsDbContext context)
        {
            this._context = context;
        }

        public async Task<IEnumerable<OrderModel>> GetAllAsync()
        {
            var result = await _context.Orders.ToListAsync();

            var models = new List<OrderModel>();

            foreach (var order in result)
            {
                models.Add(MapEntityToModel(order));
            }

            return models;
        }

        public async Task<bool> AddAsync(OrderModel model)
        {
            var order = MapModelToEntity(model);
            await _context.Orders.AddAsync(order);
            return await _context.SaveChangesAsync() > 0;
        }

        public async Task<bool> UpdateAsync(OrderModel model)
        {
            var result = await _context.Orders.FirstOrDefaultAsync(x => x.Id == model.Id);
            if (result != null)
            {
                var entity = MapModelToEntity(model);
                _context.Orders.Update(entity);
                return await _context.SaveChangesAsync() > 0;
            }
            else
            {
                throw new Exception("Entry not found in database.");
            }

        }
        public async Task<bool> DeleteAsync(int id)
        {
            var result = await _context.Orders.FirstOrDefaultAsync(x => x.Id == id);
            if (result != null)
            {
                _context.Orders.Remove(result);
                return await _context.SaveChangesAsync() > 0;

            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }

        public async Task<OrderModel> GetOrderById(int id)
        {
            var result = await _context.Orders.FirstOrDefaultAsync(x => x.Id == id);
            if (result != null)
            {
                return MapEntityToModel(result);

            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }    

        private static OrderModel MapEntityToModel(Order order)
        {
            return new OrderModel()
            {
                Id = order.Id,
                OrderTypeId = order.OrderTypeId,
                CustomerId = order.CustomerId,
                EmployeeId = order.EmployeeId,
                TotalAmount = order.TotalAmount,
                TotalVat = order.TotalVat,
                OrderStatus = order.OrderStatus,
                DeliveryAddressId = order.DeliveryAddressId,
                IsDeleted = order.IsDeleted,
                CreatedBy = order.CreatedBy,
                CreatedAt = order.CreatedAt,
                ModifiedBy = order.ModifiedBy,
                ModifiedAt = order.ModifiedAt,
                OrderLines = MapEntityToModel(order.OrderLines.ToList())
            };
        }

        private static List<OrderLineModel> MapEntityToModel(List<OrderLine> lines)
        {
            var result = new List<OrderLineModel>();
            foreach(var line in lines)
            {
                result.Add(new OrderLineModel()
                {
                    Id = line.Id,
                    OrderId = line.OrderId,
                    ProductId = line.ProductId,
                    Title = line.Title,
                    PriceExcludingVat = line.PriceExcludingVat,
                    Vat = line.Vat,
                    Quantity = line.Quantity
                });
            }
            return result;
            
        }

        private static List<OrderLine> MapModelToEntity(List<OrderLineModel> lines)
        {
            var result = new List<OrderLine>();
            foreach (var line in lines)
            {
                result.Add(new OrderLine()
                {
                    Id = line.Id,
                    OrderId = line.OrderId,
                    ProductId = line.ProductId,
                    Title = line.Title,
                    PriceExcludingVat = line.PriceExcludingVat,
                    Vat = line.Vat,
                    Quantity = line.Quantity
                });
            }
            return result;

        }

        private static Order MapModelToEntity(OrderModel model)
        {
            return new Order()
            {
                Id = model.Id,
                OrderTypeId = model.OrderTypeId,
                CustomerId = model.CustomerId,
                EmployeeId = model.EmployeeId,
                TotalAmount = model.TotalAmount,
                TotalVat = model.TotalVat,
                OrderStatus = model.OrderStatus,
                DeliveryAddressId = model.DeliveryAddressId,
                IsDeleted = model.IsDeleted,
                CreatedBy = model.CreatedBy,
                CreatedAt = model.CreatedAt,
                ModifiedBy = model.ModifiedBy,
                ModifiedAt = model.ModifiedAt,
                OrderLines = MapModelToEntity(model.OrderLines.ToList())
            };
        }



    }
}

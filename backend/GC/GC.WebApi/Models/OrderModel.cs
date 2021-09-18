using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class OrderModel : ModelBase
    {
        public OrderModel()
        {
        }

        public OrderModel(long id, int orderTypeId, long customerId, long? employeeId, decimal? totalAmount, decimal? totalVat, int orderStatus, long? deliveryAddressId, bool isDeleted, string createdBy, DateTime? createdAt, string modifiedBy, DateTime? modifiedAt, List<OrderLineModel> orderLines)
        {
            Id = id;
            OrderTypeId = orderTypeId;
            CustomerId = customerId;
            EmployeeId = employeeId;
            TotalAmount = totalAmount;
            TotalVat = totalVat;
            OrderStatus = orderStatus;
            DeliveryAddressId = deliveryAddressId;
            IsDeleted = isDeleted;
            CreatedBy = createdBy ?? throw new ArgumentNullException(nameof(createdBy));
            CreatedAt = createdAt;
            ModifiedBy = modifiedBy ?? throw new ArgumentNullException(nameof(modifiedBy));
            ModifiedAt = modifiedAt;
            OrderLines = orderLines ?? throw new ArgumentNullException(nameof(orderLines));
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

        public List<OrderLineModel> OrderLines {get;set;}
    }
}

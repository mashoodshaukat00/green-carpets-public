using System;

namespace GC.WebApi.Models
{
    public class OrderLineModel : ModelBase
    {
        public OrderLineModel()
        {
        }

        public OrderLineModel(long id, long orderId, long? productId, string title, decimal priceExcludingVat, decimal vat, int quantity)
        {
            Id = id;
            OrderId = orderId;
            ProductId = productId;
            Title = title ?? throw new ArgumentNullException(nameof(title));
            PriceExcludingVat = priceExcludingVat;
            Vat = vat;
            Quantity = quantity;
        }

        public long Id { get; set; }
        public long OrderId { get; set; }
        public long? ProductId { get; set; }
        public string Title { get; set; }
        public decimal PriceExcludingVat { get; set; }
        public decimal Vat { get; set; }
        public int Quantity { get; set; }
    }
}
using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class DeliveryReport
    {
        public long Id { get; set; }
        public int? VehicleId { get; set; }
        public long? DeliveryAddressId { get; set; }
        public int? DeliveryStatusTypeId { get; set; }
        public decimal? Latitude { get; set; }
        public decimal? Longitude { get; set; }
        public bool IsActive { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual DeliveryAddress DeliveryAddress { get; set; }
        public virtual DeliveryStatusType DeliveryStatusType { get; set; }
        public virtual Vehicle Vehicle { get; set; }
    }
}

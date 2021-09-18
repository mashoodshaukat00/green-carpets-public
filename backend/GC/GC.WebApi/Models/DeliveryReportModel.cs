using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class DeliveryReportModel : ModelBase
    {
        public DeliveryReportModel()
        {
        }

        public DeliveryReportModel(long id, int? vehicleId, long? deliveryAddressId, int? deliveryStatusTypeId, decimal? latitude, decimal? longitude, bool isActive, bool isDeleted, string createdBy, DateTime? createdAt, string modifiedBy, DateTime? modifiedAt)
        {
            Id = id;
            VehicleId = vehicleId;
            DeliveryAddressId = deliveryAddressId;
            DeliveryStatusTypeId = deliveryStatusTypeId;
            Latitude = latitude;
            Longitude = longitude;
            IsActive = isActive;
            IsDeleted = isDeleted;
            CreatedBy = createdBy ?? throw new ArgumentNullException(nameof(createdBy));
            CreatedAt = createdAt;
            ModifiedBy = modifiedBy ?? throw new ArgumentNullException(nameof(modifiedBy));
            ModifiedAt = modifiedAt;
        }

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
    }
}

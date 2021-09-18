using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class DeliveryAddress
    {
        public DeliveryAddress()
        {
            DeliveryReports = new HashSet<DeliveryReport>();
        }

        public long Id { get; set; }
        public string RecieverName { get; set; }
        public string Address { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public decimal? Latitude { get; set; }
        public decimal? Longitude { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual ICollection<DeliveryReport> DeliveryReports { get; set; }
    }
}

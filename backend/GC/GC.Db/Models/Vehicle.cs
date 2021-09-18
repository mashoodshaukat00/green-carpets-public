using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class Vehicle
    {
        public Vehicle()
        {
            DeliveryReports = new HashSet<DeliveryReport>();
        }

        public int Id { get; set; }
        public int? BranchId { get; set; }
        public string Make { get; set; }
        public string Model { get; set; }
        public string RegistrationNo { get; set; }

        public virtual Branch Branch { get; set; }
        public virtual ICollection<DeliveryReport> DeliveryReports { get; set; }
    }
}

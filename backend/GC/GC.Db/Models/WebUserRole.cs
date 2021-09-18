using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class WebUserRole
    {
        public WebUserRole()
        {
            WebUsers = new HashSet<WebUser>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual ICollection<WebUser> WebUsers { get; set; }
    }
}

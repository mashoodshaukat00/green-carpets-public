using System;
using System.Collections.Generic;

#nullable disable

namespace GC.Db.Models
{
    public partial class WebUser
    {
        public WebUser()
        {
            Employees = new HashSet<Employee>();
        }

        public Guid Id { get; set; }
        public int RoleId { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string MobileNumber { get; set; }
        public string Email { get; set; }
        public bool IsUserActive { get; set; }
        public bool IsUserLocked { get; set; }
        public DateTime? UserLocketAt { get; set; }
        public DateTime? LastLoginTime { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }

        public virtual WebUserRole Role { get; set; }
        public virtual CompanyOwner CompanyOwner { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual ICollection<Employee> Employees { get; set; }
    }
}

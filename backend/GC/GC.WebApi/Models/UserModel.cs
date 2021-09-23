using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class UserModel : ModelBase
    {
        public UserModel()
        {

        }

        public UserModel(Guid id, int roleId, string role, string userName, string password, string mobileNumber, string email, bool isUserActive, bool isUserLocked, DateTime? userLocketAt, DateTime? lastLoginTime, bool isDeleted, string createdBy, DateTime? createdAt, string modifiedBy, DateTime? modifiedAt)
        {
            Id = id;
            RoleId = roleId;
            Role = role ?? throw new ArgumentNullException(nameof(role));
            UserName = userName ?? throw new ArgumentNullException(nameof(userName));
            Password = password ?? throw new ArgumentNullException(nameof(password));
            MobileNumber = mobileNumber ?? throw new ArgumentNullException(nameof(mobileNumber));
            Email = email ?? throw new ArgumentNullException(nameof(email));
            IsUserActive = isUserActive;
            IsUserLocked = isUserLocked;
            UserLocketAt = userLocketAt;
            LastLoginTime = lastLoginTime;
            IsDeleted = isDeleted;
            CreatedBy = createdBy ?? throw new ArgumentNullException(nameof(createdBy));
            CreatedAt = createdAt;
            ModifiedBy = modifiedBy ?? throw new ArgumentNullException(nameof(modifiedBy));
            ModifiedAt = modifiedAt;
        }

        public Guid Id { get; set; }
        public int RoleId { get; set; }
        public string Role { get; set; }
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
    }

    public class UserLoginModel
    {
        public UserLoginModel()
        {
        }

        public UserLoginModel(bool isValidUser, Guid? userId, string userName)
        {
            IsValidUser = isValidUser;
            UserId = userId;
            UserName = userName;
        }

        public bool IsValidUser { get; set; }
        public Guid? UserId { get; set; }

        public string UserName { get; set; }
    }
}

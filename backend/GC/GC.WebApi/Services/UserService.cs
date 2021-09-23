using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GC.Db;
using GC.Db.Models;
using GC.WebApi.Models;
using Microsoft.EntityFrameworkCore;

namespace GC.WebApi.Services
{
    public class UserService
    {
        private readonly GreenCarpetsDbContext _context;
        public UserService(GreenCarpetsDbContext context)
        {
            this._context = context;
        }

        public async Task<IEnumerable<UserModel>> GetAllAsync()
        {
            var result = await _context.WebUsers.ToListAsync();

            var models = new List<UserModel>();

            foreach (var product in result)
            {
                models.Add(MapEntityToModel(product));
            }

            return models;
        }
        public async Task<bool> AddAsync(UserModel model)
        {
            var entity = MapModelToEntity(model);
            await _context.WebUsers.AddAsync(entity);
            return await _context.SaveChangesAsync() > 0;
        }
        public async Task<bool> UpdateAsync(UserModel model)
        {
            var result = await _context.WebUsers.FirstOrDefaultAsync(x => x.Id == model.Id);
            if (result != null)
            {
                var entity = MapModelToEntity(model);
                _context.WebUsers.Update(entity);
                return await _context.SaveChangesAsync() > 0;
            }
            else
            {
                throw new Exception("Entry not found in database.");
            }

        }
        public async Task<bool> DeleteAsync(Guid id)
        {
            var result = await _context.WebUsers.FirstOrDefaultAsync(x => x.Id == id);
            if (result != null)
            {
                _context.WebUsers.Remove(result);
                return await _context.SaveChangesAsync() > 0;

            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }
        public async Task<UserLoginModel> AttemptLoginAsync(string userName,string password)
        {
            var result = await _context.WebUsers.FirstOrDefaultAsync(x => x.UserName == userName && x.Password == password);
            if(result is null)
            {
                return null;
            }

            return new UserLoginModel
            {
                IsValidUser = true,
                UserId = result.Id,
                UserName = result.UserName
            };

        }
        public async Task<UserModel> GetUserById(Guid id)
        {
            var result = await _context.WebUsers.FirstOrDefaultAsync(x => x.Id == id);
            if (result != null)
            {
                return MapEntityToModel(result);

            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }

        private static UserModel MapEntityToModel(WebUser entity)
        {
            return new UserModel()
            {
                Id = entity.Id,
                RoleId = entity.RoleId,
                Role = entity.Role.Name,
                UserName = entity.UserName,
                Password = entity.Password,
                MobileNumber = entity.MobileNumber,
                Email = entity.Email,
                IsUserActive = entity.IsUserActive,
                IsUserLocked = entity.IsUserLocked,
                UserLocketAt = entity.UserLocketAt,
                LastLoginTime = entity.LastLoginTime,
                IsDeleted = entity.IsDeleted,
                CreatedBy = entity.CreatedBy,
                CreatedAt = entity.CreatedAt,
                ModifiedBy = entity.ModifiedBy,
                ModifiedAt = entity.ModifiedAt
            };
        }

        private static WebUser MapModelToEntity(UserModel model)
        {
            return new WebUser()
            {
                Id = model.Id,
                RoleId = model.RoleId,
                UserName = model.UserName,
                Password = model.Password,
                MobileNumber = model.MobileNumber,
                Email = model.Email,
                IsUserActive = model.IsUserActive,
                IsUserLocked = model.IsUserLocked,
                UserLocketAt = model.UserLocketAt,
                LastLoginTime = model.LastLoginTime,
                IsDeleted = model.IsDeleted,
                CreatedBy = model.CreatedBy,
                CreatedAt = model.CreatedAt,
                ModifiedBy = model.ModifiedBy,
                ModifiedAt = model.ModifiedAt
            };
        }
    }
}

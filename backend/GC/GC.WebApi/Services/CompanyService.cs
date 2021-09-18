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
    public class CompanyService
    {
        private readonly GreenCarpetsDbContext _context;
        public CompanyService(GreenCarpetsDbContext context)
        {
            this._context = context;
        }

        public async Task<IEnumerable<CompanyModel>> GetAllAsync()
        {
            var result = await _context.BaseCompanies.ToListAsync();

            var models = new List<CompanyModel>();

            foreach (var company in result)
            {
                models.Add(MapEntityToModel(company));
            }

            return models;
        }

        public async Task<bool> AddAsync(CompanyModel model)
        {
            var company = MapModelToEntity(model);
            await _context.BaseCompanies.AddAsync(company);
            return await _context.SaveChangesAsync() > 0;
        }

        public async Task<bool> UpdateAsync(CompanyModel model)
        {
            var result = await _context.BaseCompanies.FirstOrDefaultAsync(x => x.Id == model.Id);
            if (result != null)
            {
                var entity = MapModelToEntity(model);
                _context.BaseCompanies.Update(entity);
                return await _context.SaveChangesAsync() > 0;
            }
            else
            {
                throw new Exception("Entry not found in database.");
            }

        }
        public async Task<bool> DeleteAsync(int id)
        {
            var result = await _context.BaseCompanies.FirstOrDefaultAsync(x => x.Id == id);
            if (result != null)
            {
                _context.BaseCompanies.Remove(result);
                return await _context.SaveChangesAsync() > 0;

            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }

        public async Task<CompanyModel> GetCompanyById(int id)
        {
            var result = await _context.BaseCompanies.FirstOrDefaultAsync(x => x.Id == id);
            if (result != null)
            {
                return MapEntityToModel(result);

            }
            else
            {
                throw new Exception("Entry not found in database.");
            }
        }
        
        private static CompanyModel MapEntityToModel(BaseCompany company)
        {
            return new CompanyModel()
            {
                Id = company.Id,
                CountryId = company.CountryId,
                Country = company.Country.Name,
                CompanyOwnerId = company.CompanyOwnerId,
                CompanyOwnerName = $"{company.CompanyOwner.FirstName} {(string.IsNullOrWhiteSpace(company.CompanyOwner.MiddleName)? string.Empty:company.CompanyOwner.MiddleName)} {company.CompanyOwner.LastName}",
                Name = company.Name,
                LegalName = company.LegalName,
                OrganizationNumber = company.OrganizationNumber,
                Address = company.Address,
                PostalCode = company.PostalCode,
                City = company.City,
                Phone = company.Phone,
                Email = company.Email,
                IsDeleted = company.IsDeleted,
                CreatedBy = company.CreatedBy,
                CreatedAt = company.CreatedAt,
                ModifiedBy = company.ModifiedBy,
                ModifiedAt = company.ModifiedAt
            };
        }

        private static BaseCompany MapModelToEntity(CompanyModel company)
        {
            return new BaseCompany()            
            {
                Id = company.Id,
                CountryId = company.CountryId,
                CompanyOwnerId = company.CompanyOwnerId,
                Name = company.Name,
                LegalName = company.LegalName,
                OrganizationNumber = company.OrganizationNumber,
                Address = company.Address,
                PostalCode = company.PostalCode,
                City = company.City,
                Phone = company.Phone,
                Email = company.Email,
                IsDeleted = company.IsDeleted,
                CreatedBy = company.CreatedBy,
                CreatedAt = company.CreatedAt,
                ModifiedBy = company.ModifiedBy,
                ModifiedAt = company.ModifiedAt
            };
        }




    }
}

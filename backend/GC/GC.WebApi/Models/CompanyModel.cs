using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class CompanyModel : ModelBase
    {
        public CompanyModel()
        {
        }

        public CompanyModel(int id, int countryId, string country, long companyOwnerId, string companyOwnerName, string name, string legalName, string organizationNumber, string address, string postalCode, string city, string phone, string email, bool isDeleted, string createdBy, DateTime? createdAt, string modifiedBy, DateTime? modifiedAt)
        {
            Id = id;
            CountryId = countryId;
            Country = country ?? throw new ArgumentNullException(nameof(country));
            CompanyOwnerId = companyOwnerId;
            CompanyOwnerName = companyOwnerName ?? throw new ArgumentNullException(nameof(companyOwnerName));
            Name = name ?? throw new ArgumentNullException(nameof(name));
            LegalName = legalName ?? throw new ArgumentNullException(nameof(legalName));
            OrganizationNumber = organizationNumber ?? throw new ArgumentNullException(nameof(organizationNumber));
            Address = address ?? throw new ArgumentNullException(nameof(address));
            PostalCode = postalCode ?? throw new ArgumentNullException(nameof(postalCode));
            City = city ?? throw new ArgumentNullException(nameof(city));
            Phone = phone ?? throw new ArgumentNullException(nameof(phone));
            Email = email ?? throw new ArgumentNullException(nameof(email));
            IsDeleted = isDeleted;
            CreatedBy = createdBy ?? throw new ArgumentNullException(nameof(createdBy));
            CreatedAt = createdAt;
            ModifiedBy = modifiedBy ?? throw new ArgumentNullException(nameof(modifiedBy));
            ModifiedAt = modifiedAt;
        }

        public int Id { get; set; }
        public int CountryId { get; set; }
        public string Country { get; set; }
        public long CompanyOwnerId { get; set; }
        public string CompanyOwnerName { get; set; }
        public string Name { get; set; }
        public string LegalName { get; set; }
        public string OrganizationNumber { get; set; }
        public string Address { get; set; }
        public string PostalCode { get; set; }
        public string City { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }       

    }
}

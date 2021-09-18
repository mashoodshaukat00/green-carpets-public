using GC.WebApi.Models;
using GC.WebApi.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

namespace GC.WebApi.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class CompanyController : ControllerBase
    {
        private readonly CompanyService _service;

        public CompanyController(CompanyService service)
        {
            _service = service;
        }

        [HttpGet]
        public Task<IEnumerable<CompanyModel>> GetCompanies()
        {
            return _service.GetAllAsync();
        }

        [HttpGet("{id}")]
        public Task<CompanyModel> GetCompanyAsync(int id)
        {
            return _service.GetCompanyById(id);
        }


        [HttpPost]
        public async Task<HttpStatusCode> AddCompany([FromBody] CompanyModel model)
        {
            var result = await _service.AddAsync(model);
            return result ? HttpStatusCode.Created : HttpStatusCode.BadRequest;
        }

        [HttpPut]
        public async Task<HttpStatusCode> Put([FromBody] CompanyModel model)
        {
            var result = await _service.UpdateAsync(model);
            return result ? HttpStatusCode.OK : HttpStatusCode.NotModified;
        }

        [HttpDelete("{id}")]
        public async Task<HttpStatusCode> Delete(int id)
        {
            var result = await _service.DeleteAsync(id);

            return result ? HttpStatusCode.OK : HttpStatusCode.NotModified;
        }
    }
}

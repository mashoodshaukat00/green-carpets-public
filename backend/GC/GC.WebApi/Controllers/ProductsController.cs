using GC.WebApi.Models;
using GC.WebApi.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace GC.WebApi.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {
        private readonly ProductService _service;

        public ProductsController(ProductService service)
        {
            _service = service;
        }

        [HttpGet]
        public Task<IEnumerable<ProductModel>> GetProducts()
        {
            return _service.GetAllAsync();
        }

        [HttpGet("{id}")]
        public Task<ProductModel> GetProductAsync(int id)
        {
            return _service.GetProductById(id);
        }

        //[ActionName("ProductByCateogry")]
        [HttpGet("{id:int}")]        
        public Task<ProductModel> GetProductByCategoryIdAsync(int id)
        {
            return _service.GetProductByCategoryId(id);
        }

        [HttpPost]
        public async Task<HttpStatusCode> AddProduct([FromBody] ProductModel model)
        {
            var result = await _service.AddAsync(model);
            return result ? HttpStatusCode.Created : HttpStatusCode.BadRequest;
        }
                
        [HttpPut]
        public async Task<HttpStatusCode> Put([FromBody] ProductModel model)
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

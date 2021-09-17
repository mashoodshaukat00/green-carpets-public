using GC.WebApi.Models;
using GC.WebApi.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace GC.WebApi.Controllers
{
    [Route("api/[controller]")]
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

        [HttpPost]
        public Task AddProduct([FromBody] ProductModel model)
        {
            return _service.AddAsync(model);
        }
    }
}

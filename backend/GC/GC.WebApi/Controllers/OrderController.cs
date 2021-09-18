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
    public class OrderController : ControllerBase
    {
        private readonly OrderService _service;

        public OrderController(OrderService service)
        {
            _service = service;
        }

        [HttpGet]
        public Task<IEnumerable<OrderModel>> GetOrders()
        {
            return _service.GetAllAsync();
        }

        [HttpGet("{id}")]
        public async Task<OrderModel> GetOrderAsync(int id)
        {
            return await _service.GetOrderById(id);
        }


        [HttpPost]
        public async Task<HttpStatusCode> AddOrder([FromBody] OrderModel model)
        {
            var result = await _service.AddAsync(model);
            return result ? HttpStatusCode.Created : HttpStatusCode.BadRequest;
        }

        [HttpPut]
        public async Task<HttpStatusCode> Put([FromBody] OrderModel model)
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

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
    public class UserController : ControllerBase
    {
        private readonly UserService _service;

        public UserController(UserService service)
        {
            _service = service;
        }

        [HttpGet]
        public Task<IEnumerable<UserModel>> GetUsers()
        {
            return _service.GetAllAsync();
        }

        [HttpGet("{id:guid}")]
        public Task<UserModel> GetUserAsync(Guid id)
        {
            return _service.GetUserById(id);
        }

        [HttpGet("{userName}/{password}")]
        public async Task<UserLoginModel> LoginAsync(string userName, string password)
        {
            return await _service.AttemptLoginAsync(userName, password);
            
        }


        [HttpPost]
        public async Task<HttpStatusCode> AddUser([FromBody] UserModel model)
        {
            var result = await _service.AddAsync(model);
            return result ? HttpStatusCode.Created : HttpStatusCode.BadRequest;
        }

        [HttpPut]
        public async Task<HttpStatusCode> Put([FromBody] UserModel model)
        {
            var result = await _service.UpdateAsync(model);
            return result ? HttpStatusCode.OK : HttpStatusCode.NotModified;
        }

        [HttpDelete("{id:guid}")]
        public async Task<HttpStatusCode> Delete(Guid id)
        {
            var result = await _service.DeleteAsync(id);

            return result ? HttpStatusCode.OK : HttpStatusCode.NotModified;
        }
    }
}

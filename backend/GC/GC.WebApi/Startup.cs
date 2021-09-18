using GC.Db;
using GC.WebApi.HealthChecks;
using GC.WebApi.Services;
using HealthChecks.UI.Client;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Diagnostics.HealthChecks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Diagnostics.HealthChecks;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            var connectionString = this.Configuration.GetConnectionString("DbConnection");

            services.AddDbContext<GreenCarpetsDbContext>(options => options.UseLazyLoadingProxies().UseSqlServer(connectionString));

            services.AddCors();

            services.AddTransient<ProductService>();
            services.AddTransient<CompanyService>();
            services.AddTransient<OrderService>();
            services.AddTransient<UserService>();

            services.AddHealthChecksUI().AddInMemoryStorage();

            services.AddHealthChecks()
                .AddApplicationInsightsPublisher()
                .AddCheck("GreenCarpetsDb-check",
                          new SqlConnectionHealthCheck(this.Configuration.GetConnectionString("DbConnection")),
                          HealthStatus.Healthy,
                          new string[] { "GreenCarpetsDb" });

            services.AddControllers();
            services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new OpenApiInfo { Title = "GC.WebApi", Version = "v1" });
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "GC.WebApi v1"));
            }

            


            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseCors(x => x
               .AllowAnyMethod()
               .AllowAnyHeader()
               .SetIsOriginAllowed(origin => true) // allow any origin
               .AllowCredentials()); // allow credentials


            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                //https://localhost:44391/healthchecks-ui
                endpoints.MapHealthChecksUI();

                endpoints.MapHealthChecks("/hapi", new HealthCheckOptions()
                {
                    ResponseWriter = UIResponseWriter.WriteHealthCheckUIResponse
                });

                endpoints.MapControllers();
            });
        }
    }
}

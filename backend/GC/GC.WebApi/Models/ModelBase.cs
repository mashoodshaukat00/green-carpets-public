using System;

namespace GC.WebApi.Models
{
    public class ModelBase
    {
        public DateTime FetchedAt => System.DateTime.UtcNow;
    }
}
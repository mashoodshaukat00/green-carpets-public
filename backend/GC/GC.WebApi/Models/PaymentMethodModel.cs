using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GC.WebApi.Models
{
    public class PaymentMethodModel : ModelBase
    {
        public PaymentMethodModel()
        {

        }

        public PaymentMethodModel(long id, int cardTypeId, string cardTypeName, string cardNumber, DateTime? cardExpiredAt, string cvc, bool isDeleted, string createdBy, DateTime? createdAt, string modifiedBy, DateTime? modifiedAt)
        {
            Id = id;
            CardTypeId = cardTypeId;
            CardTypeName = cardTypeName ?? throw new ArgumentNullException(nameof(cardTypeName));
            CardNumber = cardNumber ?? throw new ArgumentNullException(nameof(cardNumber));
            CardExpiredAt = cardExpiredAt;
            Cvc = cvc ?? throw new ArgumentNullException(nameof(cvc));
            IsDeleted = isDeleted;
            CreatedBy = createdBy ?? throw new ArgumentNullException(nameof(createdBy));
            CreatedAt = createdAt;
            ModifiedBy = modifiedBy ?? throw new ArgumentNullException(nameof(modifiedBy));
            ModifiedAt = modifiedAt;
        }

        public long Id { get; set; }
        public int CardTypeId { get; set; }
        public string CardTypeName { get; set; }        
        public string CardNumber { get; set; }
        public DateTime? CardExpiredAt { get; set; }
        public string Cvc { get; set; }
        public bool IsDeleted { get; set; }
        public string CreatedBy { get; set; }
        public DateTime? CreatedAt { get; set; }
        public string ModifiedBy { get; set; }
        public DateTime? ModifiedAt { get; set; }
    }
}

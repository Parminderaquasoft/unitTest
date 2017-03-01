using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProcessOrder.Models
{
    public class Order
    {
        public int OrderId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string CardNumber { get; set; }
        public string ProductId { get; set; }
        public Nullable<int> CardExpirationMonth { get; set; }
        public Nullable<int> CardExpirationYear { get; set; }
        public Nullable<int> CardSecurityCode { get; set; }
        public Nullable<decimal> Price { get; set; }
        public Nullable<int> Status { get; set; }
    }
}
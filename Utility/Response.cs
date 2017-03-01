using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProcessOrder.Utility
{
    public class Response
    {
        public string ResponseMessage { get; set; }
        public object ResponseData { get; set; }
        public Boolean ResponseStatus { get; set; }
    }
}
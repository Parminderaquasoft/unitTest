using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProcessOrder.Utility
{
    public static class ObjectFactory
    {
        private static Response _ObjResponse;
        public static Response ObjResponse
        {
            get
            {
                if (_ObjResponse == null)
                    _ObjResponse = new Response();
                return _ObjResponse;
            }
        }
    }
}
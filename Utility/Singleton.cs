using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProcessOrder.Utility
{
  
    public static class Singleton
    {

        private static UnitTestEntities _ctx;
        public static UnitTestEntities ctx
        {
            get
            {
                if (_ctx == null)
                    _ctx = new UnitTestEntities();
                return _ctx;
            }

        }

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
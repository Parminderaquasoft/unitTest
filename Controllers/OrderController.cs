using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ProcessOrder.Models;
using System.Web.Http.Description;
using ProcessOrder.Utility;
using ProcessOrder.Repository;


namespace ProcessOrder.Controllers
{
    public class OrderController : ApiController
    {
        public IHttpActionResult Index()
        {
            return Ok(ObjectFactory.ObjResponse);
        }
        [HttpPost]
        [Route("api/Order/OrderProcess")]
        [ResponseType(typeof(Response))]
        public IHttpActionResult OrderProcess(Order cModel)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    using ( UnitTestEntities  ctx = new UnitTestEntities())
                    {
                      AddOrder.InsertOrder(cModel);
                    }
                    ObjectFactory.ObjResponse.ResponseMessage = "Save Successfully";
                    ObjectFactory.ObjResponse.ResponseData = cModel;
                    ObjectFactory.ObjResponse.ResponseStatus = true;
                    return Ok(ObjectFactory.ObjResponse);
                }
                ObjectFactory.ObjResponse.ResponseMessage = "API Call Fields are required";
                ObjectFactory.ObjResponse.ResponseData = "";
                ObjectFactory.ObjResponse.ResponseStatus = false;
            }
            catch (Exception ex)
            {
                ObjectFactory.ObjResponse.ResponseMessage = ex.ToString();
                ObjectFactory.ObjResponse.ResponseData = "";
                ObjectFactory.ObjResponse.ResponseStatus = false;
            }
            return Ok(ObjectFactory.ObjResponse);
        }
    }
}

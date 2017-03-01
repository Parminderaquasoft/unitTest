using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ProcessOrder.Repository;
using ProcessOrder.Models;
using System.Data.Entity.Validation;

namespace ProcessOrder.Controllers
{
    public class ProductOrderController : Controller
    {
        // GET: Product
        UnitTestEntities ctx = new UnitTestEntities();
        public ActionResult Index(string Msg)
        {
            ViewBag.Message = Msg;
            return View();
        }
        [HttpPost]
        
        public ActionResult Index(Order cModel )
        {
            try
            {
                if (ModelState.IsValid)
                {
                    AddOrder.InsertOrder(cModel);
                    string msg = "Record has been saved Successfully!!";
                    return RedirectToAction("Index", new { Msg = msg });
                   
                }
                else
                {
                    
                   //ModelState.AddModelError("", "The Password and Confirm Password do not match.");
                    return View(cModel);
                }
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
            return View();
        }
    }
}
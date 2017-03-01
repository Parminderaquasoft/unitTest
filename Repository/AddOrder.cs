using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProcessOrder.Models;

namespace ProcessOrder.Repository
{
    public class AddOrder
    {
        public static void InsertOrder( Order cModel)
        {
            using (UnitTestEntities ctx = new UnitTestEntities())
            {
                var dModel = new Orderstable();
                var Currentmonth = DateTime.Now.Month;
                var Currentyear = DateTime.Now.Year;
                if(cModel.CardExpirationMonth < Currentmonth || cModel.CardExpirationYear < Currentyear)
                {
                    cModel.Status = 2;
                    dModel.Status = 2;
                }
                else
                {
                    cModel.Status = 1;
                    dModel.Status = 1;
                }
               
                dModel.FirstName = cModel.FirstName;
                dModel.LastName = cModel.LastName;
                dModel.Address = cModel.Address;
                dModel.City = cModel.City;
                dModel.State = cModel.State;
                dModel.Zip = cModel.Zip;
                dModel.Phone = cModel.Phone;
                dModel.Email = cModel.Email;
                dModel.CardNumber = cModel.CardNumber;
                dModel.CardExpirationMonth = cModel.CardExpirationMonth;
                dModel.CardExpirationYear = cModel.CardExpirationYear;
                dModel.CardSecurityCode = cModel.CardSecurityCode;
                dModel.ProductId = cModel.ProductId;
                dModel.Price = cModel.Price;
                ctx.Orderstables.Add(dModel);
                ctx.SaveChanges();
                cModel.OrderId= dModel.OrderId;

            }
        }
    }
}
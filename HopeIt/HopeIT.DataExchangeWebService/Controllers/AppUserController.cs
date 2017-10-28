using HopeIT.Database.Repository;
using HopeIT.DataExchangeWebService.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace HopeIT.DataExchangeWebService.Controllers
{
    public class AppUserController : ApiController
    {
        public List<Database.Model.AppUser> GetAllAppUsers()
        {
            var repo = new AppUserRepo();
            var result = repo.GetAppUser();
            return result;
        }

        public IHttpActionResult GetAppUser(int id)
        {
            var repo = new AppUserRepo();
            var result = repo.GetAppUserById(id);
            if (result == null)
            {
                return NotFound();
            }
            return Ok(result);
        }
    }
}

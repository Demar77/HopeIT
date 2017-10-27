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
        AppUser[] appUsers = new AppUser[]
        {
            new AppUser { Id = 1, Name = "Tomato-Soup" },
            new AppUser { Id = 2, Name = "Yo-Yo" },
            new AppUser { Id = 3, Name = "Hammer-Ho" },
        };

        public IEnumerable<AppUser> GetAllAppUsers()
        {
            return appUsers;
        }

        public IHttpActionResult GetAppUser(int id)
        {
            var appUser = appUsers.FirstOrDefault(r => r.Id == id);
            if (appUser == null)
            {
                return NotFound();
            }
            return Ok(appUser);
        }
    }
}

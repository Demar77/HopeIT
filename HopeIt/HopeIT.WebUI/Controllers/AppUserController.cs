using HopeIT.Database.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HopeIT.WebUI.Controllers
{
    public class AppUserController : Controller
    {
        //// GET: AppUser
        public ActionResult Index()
        {
            var repo = new AppUserRepo();
            var result = repo.GetAppUser();
            
            return View(result);
        }

        // 
        // GET: /AppUser/ 

        //public string Index()
        //{
        //    return "This is my <b>default</b> <i>AppUser</i> action...";
        //}

        // 
        // GET: /AppUser/List/ 

        public string List()
        {
            return "This is the AppUser list action method...";
        }

        // 
        // GET: /AppUser/List/ 

        public ActionResult Profile(int idUser)
        {
            var repo = new AppUserRepo();
            var result = repo.GetDonationDetailsByUserId(idUser);

            return View(result);
        }


    }
}
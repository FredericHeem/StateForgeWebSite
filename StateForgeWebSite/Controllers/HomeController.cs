using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StateForgeWebSite.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult Download()
        {
            return View();
        }

        public ActionResult Buy()
        {
            return View();
        }

        public ActionResult License()
        {
            return View();
        }

        public ActionResult Documentation()
        {
            return View();
        }

        public ActionResult Faq()
        {
            return View();
        }

        public ActionResult Features()
        {
            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}

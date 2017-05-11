using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StateForgeWebSite.Controllers
{
    [HandleError]
    public class DeployUninstallController : Controller
    {
        public ActionResult StateBuilderDotNet()
        {
            return View();
        }

        public ActionResult StateBuilderJava()
        {
            return View();
        }

        public ActionResult StateBuilderCpp()
        {
            return View();
        }        
    }
}

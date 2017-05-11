using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StateForgeWebSite.Controllers
{
    [HandleError]
    public class DeployController : Controller
    {
        public ActionResult StateBuilderDotNetInstalled()
        {
            return View();
        }

        public ActionResult StateBuilderDotNetUninstalled()
        {
            return View();
        }        
    }
}

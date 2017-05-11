using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace StateForgeWebSite
{
    // Note: For instructions on enabling IIS6 or IIS7 classic mode, 
    // visit http://go.microsoft.com/?LinkId=9394801

    public class MvcApplication : System.Web.HttpApplication
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                "DeployInstall",                                           // Route name
                "Deploy/Install/{action}/{id}",                            // URL with parameters
                new { controller = "DeployInstall", action = "StateBuilderDotNet", id = UrlParameter.Optional }  // Parameter defaults
            );

            routes.MapRoute(
                "DeployUnInstall",                                           // Route name
                "Deploy/UnInstall/{action}/{id}",                            // URL with parameters
                new { controller = "DeployUninstall", action = "StateBuilderDotNet", id = UrlParameter.Optional }  // Parameter defaults
            );

            routes.MapRoute(
                "Default", // Route name
                "{controller}/{action}/{id}", // URL with parameters
                new { controller = "Home", action = "Index", id = UrlParameter.Optional } // Parameter defaults
            );

        }

        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();

            RegisterRoutes(RouteTable.Routes);
        }
    }
}
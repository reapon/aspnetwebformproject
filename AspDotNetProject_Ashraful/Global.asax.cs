using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.AspNet.FriendlyUrls;


namespace AspDotNetProject_Ashraful
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            //
            //RouteTable.Routes.MapPageRoute(
            //routeName: "CustomerRegistration",
            //routeUrl: "ContentPages/{id}/Register",
            //physicalFile: "~/ContentPages/CustomerRegistrationForm.aspx"
            //);

            ////

            //RouteTable.Routes.MapPageRoute(
            //routeName: "ViewBookInformation",
            //routeUrl: "ContentPages/{id}/BookInfo",
            //physicalFile: "~/ContentPages/ViewBookInformation.aspx"
            //);

            ////Default Route

            //RouteTable.Routes.MapPageRoute(
            //routeName: "Default",
            //routeUrl: "",
            //physicalFile: "~/Default.aspx"
            //);
        }
    }
}
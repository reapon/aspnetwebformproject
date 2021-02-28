using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace AspDotNetProject_Ashraful
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);

            //
            RouteTable.Routes.MapPageRoute(
            routeName: "CustomerRegistration",
            routeUrl: "ContentPages/{id}/Register",
            physicalFile: "~/ContentPages/CustomerRegistrationForm.aspx"
            );

            //

            RouteTable.Routes.MapPageRoute(
            routeName: "ViewBookInformation",
            routeUrl: "ContentPages/{id}/BookInfo",
            physicalFile: "~/ContentPages/ViewBookInformation.aspx"
            );

            //Default Route

            RouteTable.Routes.MapPageRoute(
            routeName: "Default",
            routeUrl: "",
            physicalFile: "~/Default.aspx"
            );

        }
    }
}

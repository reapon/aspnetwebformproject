using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AspDotNetProject_Ashraful.Startup))]
namespace AspDotNetProject_Ashraful
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

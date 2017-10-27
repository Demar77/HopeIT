using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HopeIt.Web.WWW.Startup))]
namespace HopeIt.Web.WWW
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

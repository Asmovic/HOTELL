using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HOTELL.Startup))]
namespace HOTELL
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

using System.Web;
using System.Web.Mvc;

namespace HopeIt.Web.WWW
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}

using HopeIt.Web.Core.PayPal;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace HopeIt.Web.Core.Test
{
    [TestClass]
    public class PayPalTest
    {
        [TestMethod]
        public void GetHistory()
        {


            var history = new History();
            history.GetAllTransactions();
        }
    }
}

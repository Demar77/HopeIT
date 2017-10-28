using System;
using HopeIT.Common;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace HopeIT.Database.UnitTest
{
    [TestClass]
    public class UnitTest
    {
        [TestMethod]
        public void AppUserAddTest()
        {
            var repo = new HopeIT.Database.Repository.AppUserRepo();
            var appUser = new HopeIT.Database.Model.AppUser { Id = 1, Name = "Łukasz", };
            var response = repo.Update(appUser);

            TestResponseExtension(response);

            Assert.AreEqual(Common.BaseResponseStatusEnum.Success, response.Status, "Database add operation failed.");
        }

        [TestMethod]
        public void AppUserUpdateTest()
        {
            var repo = new HopeIT.Database.Repository.AppUserRepo();
            var appUser = new HopeIT.Database.Model.AppUser { Id = 1, Name = "Maciek", };
            var response = repo.Update(appUser);

            TestResponseExtension(response);

            Assert.AreEqual(Common.BaseResponseStatusEnum.Success, response.Status, "Database add operation failed.");
        }

        private void TestResponseExtension(BaseResponse response)
        {
            if(response.Notification.Count > 0)
            {
                foreach(string message in response.Notification)
                {
                    System.Diagnostics.Trace.WriteLine(message);
                }
            }
        }
    }
}

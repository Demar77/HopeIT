using PayPal.Api;
using System.Collections.Generic;

namespace HopeIt.Web.Core.PayPal
{
    public class History
    {
        public void GetAllTransactions()
        {
            //var config = ConfigManager.Instance.GetProperties();
            //var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            //var apiContext = new APIContext(@"access_token$sandbox$8s3h6whmgk2b5fck$4dd4cc46d88e5875e0fa65c77b09b57e");

            //var apiContext = new APIContext("APUFQmLx9NphmBcTIE3oGC1r73WUAoXZKTZDLE0sPV5oiu5aPEO3oSAN");

            var config = new Dictionary<string, string>();
            config[BaseConstants.ClientId] = "ATuSOprPCDSS-d-yx71tzDG7c-Og47vYuTVAi8OsZIv9xeIUz5JSmvEanPmPS5FX9HrvDz7Q0zqK5OdC";
            config[BaseConstants.ClientSecret] = "EEacAoBEf5wmBfW794gFeNNnzYlLwdBDuGxt0W988diZxt9V87UFqz4oyDahOdl1_c6SWEd71rRxcNM1";
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            // Make an API call

            var paymentList = Payment.List(apiContext, count: 10, startIndex: 5);
        }
    }
}

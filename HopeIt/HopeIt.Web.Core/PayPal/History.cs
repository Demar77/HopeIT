using PayPal.Api;
using System.Collections.Generic;
using System.Linq;

namespace HopeIt.Web.Core.PayPal
{
    public class History
    {
        public List<Payment> GetAllTransactions()
        {
            //var config = ConfigManager.Instance.GetProperties();
            //var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            //var apiContext = new APIContext(@"access_token$sandbox$8s3h6whmgk2b5fck$4dd4cc46d88e5875e0fa65c77b09b57e");

            //var apiContext = new APIContext("APUFQmLx9NphmBcTIE3oGC1r73WUAoXZKTZDLE0sPV5oiu5aPEO3oSAN");

            var config = new Dictionary<string, string>();
            config[BaseConstants.ApplicationModeConfig] = "sandbox";
            config[BaseConstants.ClientId] = "ATuSOprPCDSS-d-yx71tzDG7c-Og47vYuTVAi8OsZIv9xeIUz5JSmvEanPmPS5FX9HrvDz7Q0zqK5OdC";
            config[BaseConstants.ClientSecret] = "EEacAoBEf5wmBfW794gFeNNnzYlLwdBDuGxt0W988diZxt9V87UFqz4oyDahOdl1_c6SWEd71rRxcNM1";
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            // Make an API call

            var paymentList = Payment.List(apiContext);
            return paymentList.payments;
        }

        public List<PayerInfo> GetDonors()
        {
            var payerInfoList = new List<PayerInfo>();
            var payments = GetAllTransactions();
            foreach (var payment in payments)
            {
                try
                {
                    payerInfoList.Add(payment.payer.payer_info);
                }
                catch 
                {

                    
                }
               
            }
            return payerInfoList;
        }

        public List<Transaction> GetDonorHistory(string payer_id)
        {
            var paymentList = GetAllTransactions();
            var transactions = paymentList.Where(d => d.payer.payer_info.payer_id == payer_id).SelectMany(t => t.transactions);
            return transactions.ToList();
        }

        public List<Transaction> GetDonorHistoryByName(string name)
        {
            var paymentList = GetAllTransactions().Where(p => p.payer != null);
            var transactions = paymentList.Where(d => d.payer.payer_info.first_name + " " + d.payer.payer_info.last_name == name).SelectMany(t => t.transactions);
            return transactions.ToList();
        }
    }
}

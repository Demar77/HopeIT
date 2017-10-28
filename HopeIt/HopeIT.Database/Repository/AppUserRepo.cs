using HopeIT.Common;
using HopeIT.Database.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HopeIT.Database.Repository
{
    public class AppUserRepo
    {
        public List<AppUser> GetAppUser()
        {
            using (var context = new HopeITEntities())
            {
                var query = context.AppUsers.ToList();

                return query;
            }
        }

        public AppUser GetAppUserById(int id)
        {
            using (var context = new HopeITEntities())
            {
                var query = context.AppUsers.Where(r => r.Id == id).SingleOrDefault();

                return query;
            }
        }

        public List<DonationDetail> GetDonationDetailsByUserId(int id)
        {
            using (var context = new HopeITEntities())
            {
                var query = context.DonationDetails.Where(r => r.IdAppUser == id);
               var listDonations = new List<DonationDetail>();

                foreach (var item in query)
                {
                    listDonations.Add(new DonationDetail { Id = item.Id, IdAppUser = item.IdAppUser, Kwota = item.Kwota, Opis = item.Opis });
                }

                return listDonations;
            }
        }

        public BaseResponse Update(AppUser appUser)
        {
            var result = new BaseResponse();

            try
            {
                using (var context = new HopeITEntities())
                {
                    var original = context.AppUsers.SingleOrDefault(r => r.Id == appUser.Id);
                    if (original != null)
                    {
                        original.Name = appUser.Name;
                    }
                    else { context.AppUsers.Add(appUser); }
                    context.SaveChanges();
                    result.Status = BaseResponseStatusEnum.Success;
                }
            }
            catch(Exception ex)
            {
                result.Notification.Add(ex.Message);
            }

            return result;
        }


    }
}

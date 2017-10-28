using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HopeIT.Common
{
    public class BaseResponse
    {
        public object Output { get; set; }
        public BaseResponseStatusEnum Status { get; set; }
        public List<string> Notification { get; set; }

        public BaseResponse()
        {
            Status = BaseResponseStatusEnum.Fail;
            Notification = new List<string>();
        }
    }
}

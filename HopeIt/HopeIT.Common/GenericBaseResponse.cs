using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HopeIT.Common
{
    public class GenericBaseResponse<T>
    {
        public T Output { get; set; }
        public BaseResponseStatusEnum Status { get; set; }
        public List<string> Notification { get; set; }

        public GenericBaseResponse()
        {
            Status = BaseResponseStatusEnum.Fail;
            Notification = new List<string>();
        }
    }
}

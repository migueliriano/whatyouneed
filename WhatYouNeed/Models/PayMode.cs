using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhatYouNeed.Models
{
    public class PayMode
    {
        public int payModeId { get; set; }
        public int description { get; set; }
        public string monetaryInstitution { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhatYouNeed.Models
{
    public class Category
    {
        public int categoryId { get; set; }
        public string description { get; set; }
        public int categoryParent { get; set; }
    }
}
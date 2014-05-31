using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhatYouNeed.Models
{
    public class ProductImage
    {
        public int imageId { get; set; }
        public int productId { get; set; }
        public List<string> images { get; set; }
    }
}
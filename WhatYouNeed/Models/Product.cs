using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhatYouNeed.Models
{
    public class Product
    {
        public int  productId { get; set; }
        public string description { get; set; }
        public int countryId { get; set; }
        public int stateId { get; set; }
        public float price { get; set; }
        public float currencyTypeId { get; set; }
        public int conditionId { get; set; }
        public int stock { get; set; }
        public string categoryId { get; set; }
        public int serviceId { get; set; }
        public int brandId { get; set; }
        public int userId { get; set; }
    }
}
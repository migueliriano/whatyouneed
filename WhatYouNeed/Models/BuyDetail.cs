using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhatYouNeed.Models
{
    public class BuyDetail
    {
        public int buyId { get; set; }
        public int quantity { get; set; }
        public string productId { get; set; }
        public float subTotal { get; set; }
        public float taxPercentage { get; set; }
    }
}
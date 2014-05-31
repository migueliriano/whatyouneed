using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhatYouNeed.Models
{
    public class BuyHeader
    {
        public int buyId { get; set; }
        public string buyerId { get; set; }
        public DateTime buyDate { get; set; }
        public string sellerId { get; set; }
        public int payModeId { get; set; }
        public float total { get; set; }
        public float discountPercentage { get; set; }
    }
}
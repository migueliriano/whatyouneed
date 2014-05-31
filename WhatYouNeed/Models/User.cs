using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WhatYouNeed.Models
{
    public class User
    {
        public string userId { get; set; }
        public string name { get; set; }
        public string lastName { get; set; }
        public string userName { get; set; }
        public string phoneNumber { get; set; }
        public string address { get; set; }
        public int countryId { get; set; }
        public int stateId { get; set; }
        public string city { get; set; }
        public string password { get; set; }
        public int accountId { get; set; }
        public string profileImage { get; set; }
        public string securityQuestion { get; set; }
        public string answer { get; set; }
        public string accountState { get; set; }
    }
}
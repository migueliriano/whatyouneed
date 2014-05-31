using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WhatYouNeed.Controllers
{
    [SessionState(System.Web.SessionState.SessionStateBehavior.Default)]
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            Session["login"] = true;
            return View();
        }

        public ActionResult Login()
        {
            return View();
        }


    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WhatYouNeed.Models
{
    public class DBConnection
    {
        protected SqlConnection SqlConn;

        public bool openConnection(string connection = "DataBaseConnection") 
        {
            SqlConn = new SqlConnection(@WebConfigurationManager.ConnectionStrings[connection].ToString());
            try
            {
                bool test = true;
                if (SqlConn.State.ToString() == "open")
                {
                    SqlConn.Open();
                }
                return test;
            }
            catch (Exception)
            {
                
                throw;
            }
        }

        public bool closeConnection()
        {
            try
            {
                SqlConn.Close();
                return true;
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
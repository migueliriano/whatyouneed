using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


namespace WhatYouNeed.Models
{
    public class DBConnection
    {
        // Clase de acceso a datos.

        #region "Variables (Clases) de Conexion"
        private SqlConnection Conexion;
        #endregion

        //Constructor
        public DBConnection()
        {
            Conexion = new SqlConnection(CadenaConexion);
        }
        private string CadenaConexion
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["DataBaseConnection"].ToString();
            }
        }

        public SqlConnection ObtenerConexion()
        {
            return Conexion;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WhatYouNeed.Models;

namespace WhatYouNeed.Datos
{
    public class ServicesDAL
    {

        public DataSet ShowAllServices()
        {
            DataSet servicesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ServicesLoadAll", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(servicesDataset, "services");
                return servicesDataset;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                dataBaseConnection.ObtenerConexion().Close();
            }
        }

        public DataSet ShowServicesByKey(int serviceId)
        {
            DataSet servicesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ServicesLoadByPrimaryKey", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ServiceId", serviceId);
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(servicesDataset, "servicesByKey");
                return servicesDataset;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                dataBaseConnection.ObtenerConexion().Close();
            }
        }

        public void InsertService(Service service)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ServicesInsert", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ServiceId", service.serviceId);
                sqlCommand.Parameters.AddWithValue("@Description", service.description);
                sqladapter.InsertCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                dataBaseConnection.ObtenerConexion().Close();
            }
        }

        public void UpdateService(Service service)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ServicesUpdate", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ServiceId", service.serviceId);
                sqlCommand.Parameters.AddWithValue("@Description", service.description);
                sqladapter.UpdateCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                dataBaseConnection.ObtenerConexion().Close();
            }
        }

        public void DeleteService(int serviceId)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ServicesDelete", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ServiceId", serviceId);
                sqladapter.DeleteCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                dataBaseConnection.ObtenerConexion().Close();
            }
        }

    }
}
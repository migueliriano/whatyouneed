using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WhatYouNeed.Models;

namespace WhatYouNeed.Datos
{
    public class CountriesDAL
    {
        public DataSet ShowAllCountries() 
        {
            DataSet countriesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_CountriesLoadAll", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(countriesDataset, "countries");
                return countriesDataset;
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

        public DataSet ShowCountryByKey(int countryId)
        {
            DataSet countriesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_CountriesLoadByPrimaryKey", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@CountryId", countryId);
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(countriesDataset, "countriesByKey");
                return countriesDataset;
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

        public void InsertCountry(Country country)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_CountriesInsert", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@CountryId", country.countryId);
                sqlCommand.Parameters.AddWithValue("@Description", country.description);
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

        public void UpdateCountry(Country country)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_CountriesUpdate", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@CountryId", country.countryId);
                sqlCommand.Parameters.AddWithValue("@Description", country.description);
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

        public void DeleteCountry(int countryId)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_CountriesDelete", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@CountryId", countryId);
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
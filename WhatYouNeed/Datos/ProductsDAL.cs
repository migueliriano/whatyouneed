using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WhatYouNeed.Models;

namespace WhatYouNeed.Datos
{
    public class ProductsDAL
    {

        public DataSet ShowAllProducts()
        {
            DataSet ProductsDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductLoadAll", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(ProductsDataset, "products");
                return ProductsDataset;
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

        public DataSet ShowProductsByKey(int productId)
        {
            DataSet ProductsDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductLoadByPrimaryKey", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ProductId", productId);
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(ProductsDataset, "productByKey");
                return ProductsDataset;
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

        public void InsertProducts(AccountType accountType)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductInsert", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ProductId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@Description", accountType.description);
                sqlCommand.Parameters.AddWithValue("@CountryId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@StateId", accountType.description);
                sqlCommand.Parameters.AddWithValue("@Price", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@CurrencyTypeId", accountType.description);
                sqlCommand.Parameters.AddWithValue("@ConditionId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@Stock", accountType.description);
                sqlCommand.Parameters.AddWithValue("@CategoryId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@ServiceId", accountType.description);
                sqlCommand.Parameters.AddWithValue("@BrandId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@UserId", accountType.description);
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

        public void UpdateProducts(AccountType accountType)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductUpdate", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ProductId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@Description", accountType.description);
                sqlCommand.Parameters.AddWithValue("@CountryId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@StateId", accountType.description);
                sqlCommand.Parameters.AddWithValue("@Price", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@CurrencyTypeId", accountType.description);
                sqlCommand.Parameters.AddWithValue("@ConditionId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@Stock", accountType.description);
                sqlCommand.Parameters.AddWithValue("@CategoryId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@ServiceId", accountType.description);
                sqlCommand.Parameters.AddWithValue("@BrandId", accountType.accountId);
                sqlCommand.Parameters.AddWithValue("@UserId", accountType.description);
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

        public void DeleteProducts(int productId)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductDelete", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ProductId", productId);
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
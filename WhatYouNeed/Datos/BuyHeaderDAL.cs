using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WhatYouNeed.Models;

namespace WhatYouNeed.Datos
{
    public class BuyHeaderDAL
    {

        public DataSet ShowAllBuyHeaders()
        {
            DataSet buyHeaderDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_BuyHeaderLoadAll", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(buyHeaderDataset, "buyHeaders");
                return buyHeaderDataset;
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

        public DataSet ShowBuyHeaderByKey(int buyHeaderId)
        {
            DataSet categoriesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_BuyHeaderLoadByPrimaryKey", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@BuyId", buyHeaderId);
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(categoriesDataset, "buyHeaderByKey");
                return categoriesDataset;
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

        /*public Dataset ShowLastId(){
         * 
         * 
         * }*/

        public void InsertBuyHeader(BuyHeader buyHeader)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_BuyHeaderInsert", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@BuyId", buyHeader.buyId);
                sqlCommand.Parameters.AddWithValue("@BuyerId", buyHeader.buyerId);
                sqlCommand.Parameters.AddWithValue("@Date", buyHeader.buyDate);
                sqlCommand.Parameters.AddWithValue("@SellerId", buyHeader.sellerId);
                sqlCommand.Parameters.AddWithValue("@PayModeId", buyHeader.payModeId);
                sqlCommand.Parameters.AddWithValue("@Total", buyHeader.total);
                sqlCommand.Parameters.AddWithValue("@DiscountPercentage", buyHeader.discountPercentage);
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

        public void UpdateBuyHeader(BuyHeader buyHeader)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_BuyHeaderUpdate", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@BuyId", buyHeader.buyId);
                sqlCommand.Parameters.AddWithValue("@BuyerId", buyHeader.buyerId);
                sqlCommand.Parameters.AddWithValue("@Date", buyHeader.buyDate);
                sqlCommand.Parameters.AddWithValue("@SellerId", buyHeader.sellerId);
                sqlCommand.Parameters.AddWithValue("@PayModeId", buyHeader.payModeId);
                sqlCommand.Parameters.AddWithValue("@Total", buyHeader.total);
                sqlCommand.Parameters.AddWithValue("@DiscountPercentage", buyHeader.discountPercentage);
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

        public void DeleteBuyHeader(int buyId)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_BuyHeaderDelete", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@BuyId", buyId);
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
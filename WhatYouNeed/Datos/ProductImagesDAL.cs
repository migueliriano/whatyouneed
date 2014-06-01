using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WhatYouNeed.Models;

namespace WhatYouNeed.Datos
{
    public class ProductImagesDAL
    {

        public DataSet ShowAllProductImages()
        {
            DataSet productImagesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductImagesLoadAll", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(productImagesDataset, "productImages");
                return productImagesDataset;
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

        public DataSet ShowProductImageByKey(int productId)
        {
            DataSet productImagesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductImagesLoadByPrimaryKey", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ProductId", productId);
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(productImagesDataset, "productImageByKey");
                return productImagesDataset;
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

        public void InsertProductImage(ProductImage productImages)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductImagesInsert", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ImageId", productImages.imageId);
                sqlCommand.Parameters.AddWithValue("@ProductId", productImages.images);
                sqlCommand.Parameters.AddWithValue("@Images", productImages.productId);
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

        public void UpdateProductImage(ProductImage productImages)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductImagesUpdate", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@ImageId", productImages.imageId);
                sqlCommand.Parameters.AddWithValue("@ProductId", productImages.images);
                sqlCommand.Parameters.AddWithValue("@Images", productImages.productId);
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

        public void DeleteProductImage(int productId)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_ProductImagesDelete", dataBaseConnection.ObtenerConexion());
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WhatYouNeed.Models;

namespace WhatYouNeed.Datos
{
    public class UsersDAL
    {

        public DataSet ShowAllUsers()
        {
            DataSet accountTypesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_UserLoadAll", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(accountTypesDataset, "users");
                return accountTypesDataset;
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

        public DataSet ShowUserByKey(int userId)
        {
            DataSet userDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_UserLoadByPrimaryKey", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@UserId", userId);
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(userDataset, "userByKey");
                return userDataset;
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

        public void InsertUser(User user)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_UserInsert", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@UserId", user.userId);
                sqlCommand.Parameters.AddWithValue("@Name", user.name);
                sqlCommand.Parameters.AddWithValue("@LastName", user.lastName);
                sqlCommand.Parameters.AddWithValue("@UserName", user.userName);
                sqlCommand.Parameters.AddWithValue("@PhoneNumber", user.phoneNumber);
                sqlCommand.Parameters.AddWithValue("@Address", user.address);
                sqlCommand.Parameters.AddWithValue("@CountryId", user.countryId);
                sqlCommand.Parameters.AddWithValue("@StateId", user.stateId);
                sqlCommand.Parameters.AddWithValue("@City", user.city);
                sqlCommand.Parameters.AddWithValue("@Password", user.password);
                sqlCommand.Parameters.AddWithValue("@AccountId", user.accountId);
                sqlCommand.Parameters.AddWithValue("@ProfileImage", user.profileImage);
                sqlCommand.Parameters.AddWithValue("@SecurityQuestion", user.securityQuestion);
                sqlCommand.Parameters.AddWithValue("@Answer", user.answer);
                sqlCommand.Parameters.AddWithValue("@AccountState", user.accountState);
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

        public void UpdateUser(User user)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_UserUpdate", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@UserId", user.userId);
                sqlCommand.Parameters.AddWithValue("@Name", user.name);
                sqlCommand.Parameters.AddWithValue("@LastName", user.lastName);
                sqlCommand.Parameters.AddWithValue("@UserName", user.userName);
                sqlCommand.Parameters.AddWithValue("@PhoneNumber", user.phoneNumber);
                sqlCommand.Parameters.AddWithValue("@Address", user.address);
                sqlCommand.Parameters.AddWithValue("@CountryId", user.countryId);
                sqlCommand.Parameters.AddWithValue("@StateId", user.stateId);
                sqlCommand.Parameters.AddWithValue("@City", user.city);
                sqlCommand.Parameters.AddWithValue("@Password", user.password);
                sqlCommand.Parameters.AddWithValue("@AccountId", user.accountId);
                sqlCommand.Parameters.AddWithValue("@ProfileImage", user.profileImage);
                sqlCommand.Parameters.AddWithValue("@SecurityQuestion", user.securityQuestion);
                sqlCommand.Parameters.AddWithValue("@Answer", user.answer);
                sqlCommand.Parameters.AddWithValue("@AccountState", user.accountState);
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

        public void DeleteUser(int userId)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_UserDelete", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@UserId", userId);
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
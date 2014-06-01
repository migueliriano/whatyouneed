using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using WhatYouNeed.Models;

namespace WhatYouNeed.Datos
{
    public class StatesDAL
    {

        public DataSet ShowAllStates()
        {
            DataSet statesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_StatesLoadAll", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(statesDataset, "states");
                return statesDataset;
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

        public DataSet ShowStateByKey(int stateId)
        {
            DataSet statesDataset = new DataSet();
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_StatesLoadByPrimaryKey", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@StateId", stateId);
                sqladapter.SelectCommand = sqlCommand;
                sqlCommand.ExecuteNonQuery();
                sqladapter.Fill(statesDataset, "stateByKey");
                return statesDataset;
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

        public void InsertState(States state)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_StatesInsert", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@StateId", state.stateId);
                sqlCommand.Parameters.AddWithValue("@StateDescription", state.state);
                sqlCommand.Parameters.AddWithValue("@StateDescription", state.countryId);
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

        public void UpdateState(States state)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();
            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_StatesUpdate", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@StateId", state.stateId);
                sqlCommand.Parameters.AddWithValue("@StateDescription", state.state);
                sqlCommand.Parameters.AddWithValue("@StateDescription", state.countryId);
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

        public void DeleteState(int stateId)
        {
            SqlCommand sqlCommand = new SqlCommand();
            SqlDataAdapter sqladapter = new SqlDataAdapter();
            DBConnection dataBaseConnection = new DBConnection();

            try
            {
                dataBaseConnection.ObtenerConexion().Open();
                sqlCommand = new SqlCommand("proc_StatesDelete", dataBaseConnection.ObtenerConexion());
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.AddWithValue("@StateId", stateId);
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
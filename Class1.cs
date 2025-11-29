using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class DB
    {
        public DataTable dataTable(string query)
        {
            // Connection string
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            SqlCommand cmd = new SqlCommand(query, conn);
            DataTable tbl = new DataTable();

            try
            {
                conn.Open();
                tbl.Load(cmd.ExecuteReader(CommandBehavior.CloseConnection));

            }
            catch (Exception ex)
            {

                //("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return tbl;

        }

        public int ExecuteNoneQry(string query)
        {
            // Connection string
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            SqlCommand cmd = new SqlCommand(query, conn);
            int result = 0;

            try
            {
                conn.Open();
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Error in Execute query: " + ex.Message);
                //("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return result;

        }

        public object ExecuteScalar(string query)
        {
            // Connection string
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            SqlCommand cmd = new SqlCommand(query, conn);
            object result = null;

            try
            {
                conn.Open();
                result = cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {

                //("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return result;

        }

        public DataTable dataTable(string query, SqlParameter[] p)
        {
            // Connection string
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            SqlCommand cmd = new SqlCommand(query, conn);
            DataTable tbl = new DataTable();

            try
            {
                conn.Open();
                cmd.Parameters.AddRange(p);
                tbl.Load(cmd.ExecuteReader(CommandBehavior.CloseConnection));

            }
            catch (Exception ex)
            {

                throw new Exception("Error in Execute query: " + ex.Message);
                //("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return tbl;

        }

        public int ExecuteNoneQry(string query, SqlParameter[] p)
        {
            // Connection string
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddRange(p);
            int result = 0;

            try
            {
                conn.Open();
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Error in Execute query: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return result;

        }


        public object ExecuteScalar(string query, SqlParameter[] p)
        {
            // Connection string
            string connstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connstring);
            SqlCommand cmd = new SqlCommand(query, conn);
            object result = null;

            try
            {
                conn.Open();
                result = cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {

                //("Error: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return result;

        }
    }
}
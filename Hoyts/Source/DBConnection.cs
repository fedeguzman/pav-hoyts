using Npgsql;
using System;
using System.Data;


namespace Hoyts.Source
{
    class DBConnection
    {
        private NpgsqlConnection conn = new NpgsqlConnection("Host=ec2-54-83-13-119.compute-1.amazonaws.com;Username=plktymuyvnnoci;Password=a53ef50b5274e2355d0bdef3c8623c03690b219ed5e18c45dba9c4be875b4b71;Database=d8t1keg8rrv8oo;SSL Mode=Require;Trust Server Certificate=true");

        public void connect()
        {
            conn.Open();
        }

        private void close()
        {
            conn.Close();
        }

        public void SetData(string query, NpgsqlParameter[] param)
        {
            connect();
            var cmd = new NpgsqlCommand(query, conn);
            foreach (NpgsqlParameter p in param)
            {
                cmd.Parameters.Add(p);
            }
            var reader = cmd.ExecuteNonQuery();
            close();
        }


        public void DeleteData(string query)
        {
            connect();
            var cmd = new NpgsqlCommand(query, conn);
            var reader = cmd.ExecuteNonQuery();
            close();
        }

        public DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            connect();
            var cmd = new NpgsqlCommand(query, conn);
            var reader = cmd.ExecuteReader();
            dt.Load(reader);
            close();
            return dt;
        }     


    }
}

using Npgsql;
using System.Configuration;
using System.Data;


namespace Hoyts.Source
{
    class DBConnection
    {
        private static string connection_string = ConfigurationManager.AppSettings["connectionPostgres"].ToString();
        private NpgsqlConnection conn = new NpgsqlConnection(connection_string);

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

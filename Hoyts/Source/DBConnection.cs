using System.Configuration;
using System.Data;
using System.Data.OleDb;

namespace Hoyts.Source
{
    class DBConnection
    {
        private static string connection_string = ConfigurationManager.AppSettings["connectionPostgres"].ToString();
        private OleDbConnection conn = new OleDbConnection(connection_string);

        public void connect()
        {
            conn.Open();
        }

        private void close()
        {
            conn.Close();
        }

        public void SetData(string query, OleDbParameter[] param)
        {
            connect();
            var cmd = new OleDbCommand(query, conn);
            foreach (OleDbParameter p in param)
            {
                cmd.Parameters.Add(p);
            }
            var reader = cmd.ExecuteNonQuery();
            close();
        }

        public void SetData(string query)
        {
            connect();
            var cmd = new OleDbCommand(query, conn);
            var reader = cmd.ExecuteNonQuery();
            close();
        }


        public void DeleteData(string query)
        {
            connect();
            var cmd = new OleDbCommand(query, conn);
            var reader = cmd.ExecuteNonQuery();
            close();
        }

        public DataTable GetData(string query)
        {
            DataTable dt = new DataTable();
            connect();
            var cmd = new OleDbCommand(query, conn);
            var reader = cmd.ExecuteReader();
            dt.Load(reader);
            close();
            return dt;
        }     


    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Hoyts.Forms;
using Hoyts.Source;

namespace Hoyts.Forms.Compra
{
    public partial class FuncionesPorPelicula : Form
    {
        private DBConnection db = new DBConnection();
        private string id = "";
        private DataRow movie;
     
        public FuncionesPorPelicula(string id)
        {
            InitializeComponent();
            this.id = id;
        }

        private void getDataMovie()
        {
            DataTable data = db.GetData("SELECT * FROM Pelicula WHERE id = '" + id +"'");
            movie = data.Rows[0];
        }

        private string formato_audio(string id)
        {
            switch (id)
            {
                case "1":
                    return "Original";
                case "2":
                    return "Subtitulado";
                case "3":
                    return "Doblado";
            }
            return "";
        }

        private string formato_video(string id)
        {
            switch (id)
            {
                case "1":
                    return "2D";
                case "2":
                    return "3D";
            }
            return "";
        }

        private void loadFunciones()
        {
            DataTable hoy = db.GetData("SELECT * FROM Funciones WHERE id_pelicula = '" + id + "' AND fecha_funcion =  cast(getdate() as date) AND horario_comienzo >= cast(getdate() as time) ORDER BY horario_comienzo ASC");
            DataRowCollection funciones = hoy.Rows;

            foreach (DataRow funcion in funciones)
            {
                dgv_hoy.Rows.Add(funcion["id"].ToString(), funcion["id_sala"].ToString(), funcion["horario_comienzo"].ToString().Split('.')[0] + " - " + funcion["horario_fin"].ToString().Split('.')[0], formato_video(funcion["id_formato"].ToString()) + " - " + formato_audio(funcion["id_audio"].ToString()));
            }

            DataTable mañana = db.GetData("SELECT * FROM Funciones WHERE id_pelicula = '" + id + "' AND fecha_funcion = cast(DATEADD(d, 1, getdate()) as date) AND stock_tickets > 0 ORDER BY horario_comienzo ASC");
            funciones = mañana.Rows;

            foreach (DataRow funcion in funciones)
            {
                dgv_tomorrow.Rows.Add(funcion["id"].ToString(), funcion["id_sala"].ToString(), funcion["horario_comienzo"].ToString().Split('.')[0] + " - " + funcion["horario_fin"].ToString().Split('.')[0], formato_video(funcion["id_formato"].ToString()) + " - " + formato_audio(funcion["id_audio"].ToString()));
            }

            DataTable futuro = db.GetData("SELECT * FROM Funciones WHERE id_pelicula = '" + id + "' AND fecha_funcion >= cast(DATEADD(d, 1, getdate()) as date) AND stock_tickets > 0  ORDER BY horario_comienzo ASC");
            funciones = futuro.Rows;

            foreach (DataRow funcion in funciones)
            {
                if(Convert.ToInt32(funcion["stock_tickets"]) > 0)
                {
                    dgv_futuro.Rows.Add(funcion["id"].ToString(), funcion["fecha_funcion"].ToString().Split(' ')[0], funcion["horario_comienzo"].ToString().Split('.')[0] + " - " + funcion["horario_fin"].ToString().Split('.')[0], formato_video(funcion["id_formato"].ToString()) + " - " + formato_audio(funcion["id_audio"].ToString()));
                }
            }

        }

        private void load(object sender, EventArgs e)
        {
            getDataMovie();
            movie_title.Text = movie["titulo_para_presentar"].ToString();
            movie_subtitle.Text = movie["titulo_original"].ToString();
            this.Text = "Funciones de " + movie_title.Text;
            loadFunciones();
        }

        private void selectMovieHoy(object sender, DataGridViewCellEventArgs e)
        {
            string id = dgv_hoy.Rows[e.RowIndex].Cells[0].Value.ToString();
            ventaEntradas(id);
        }

        private void selectMovieTomorrow(object sender, DataGridViewCellEventArgs e)
        {
            string id = dgv_tomorrow.Rows[e.RowIndex].Cells[0].Value.ToString();
            ventaEntradas(id);
        }

        private void selectMovieFuturo(object sender, DataGridViewCellEventArgs e)
        {
            string id = dgv_futuro.Rows[e.RowIndex].Cells[0].Value.ToString();
            ventaEntradas(id);
        }

        private void ventaEntradas(string id_funcion)
        {
            string sql = "SELECT * FROM Funciones WHERE id = " + id_funcion + "";
            Console.WriteLine(sql);
            DataTable datos = db.GetData(sql);
            DataRow funcion = datos.Rows[0];
            Hoyts.Forms.Compra.Compra compra = new Forms.Compra.Compra(movie, funcion);
            compra.ShowDialog();
        }

    }
}

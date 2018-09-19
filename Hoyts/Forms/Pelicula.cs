using Hoyts.Source;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

namespace Hoyts.Forms
{
    public partial class Pelicula : Form
    {

        private DBConnection db = new DBConnection();
        private string id_selected = "";

        public Pelicula()
        {
            InitializeComponent();
        }

        private void load(object sender, System.EventArgs e)
        {
            mostrarPeliculas();
            cargarCalificaciones();
            cargarPaisesOrigen();
            btn_eliminar.Visible = false;
        }

        private void cargarCalificaciones()
        {
            var sql = "SELECT c.* FROM pav1_hoyts.\"Calificacion\" c";
            DataTable data = db.GetData(sql);
            DataRowCollection calificaciones = data.Rows;

            ComboboxItem dft = new ComboboxItem();
            dft.Text = "Seleccione una calificacion";
            dft.Value = 0;
            cb_calificaciones.Items.Add(dft);
            cb_calificaciones.SelectedIndex = 0;

            foreach (DataRow calificacion in calificaciones)
            {
                ComboboxItem item = new ComboboxItem();
                item.Text = calificacion[1].ToString();
                item.Value = calificacion[0].ToString();
                cb_calificaciones.Items.Add(item);

            }

        }

        private void cargarPaisesOrigen()
        {
            var sql = "SELECT p.* FROM pav1_hoyts.\"PaisOrigen\" p";
            DataTable data = db.GetData(sql);
            DataRowCollection paises = data.Rows;

            ComboboxItem dft = new ComboboxItem();
            dft.Text = "Seleccione un país de Origen";
            dft.Value = 0;
            cb_paisorigen.Items.Add(dft);
            cb_paisorigen.SelectedIndex = 0;

            foreach (DataRow pais in paises)
            {
                ComboboxItem item = new ComboboxItem();
                item.Text = pais[1].ToString();
                item.Value = pais[0].ToString();
                cb_paisorigen.Items.Add(item);

            }

        }

        private void mostrarPeliculas()
        {
            var sql = "SELECT t.id, t.titulo_original, t.titulo_para_presentar, t.duracion_min, t.argumento," +
                " c.nombre, P.nombre, t.url_image FROM pav1_hoyts.\"Pelicula\" t " +
                "JOIN pav1_hoyts.\"Calificacion\" C ON C.\"id\" = t.\"id_calificacion\" JOIN pav1_hoyts.\"PaisOrigen\" p ON P.id = t.id_paisdeorigen";

            DataTable data = db.GetData(sql);
            DataRowCollection movies = data.Rows;

            dt_movieTables.Rows.Clear();

            foreach(DataRow row in data.Rows)
            {
                dt_movieTables.Rows.Add(row[0].ToString(), row[1].ToString(), row[2].ToString(), row[3].ToString(), row[4].ToString(), row[5].ToString(), row[6].ToString(), row[7].ToString());
            }

            dt_movieTables.ClearSelection();
        }

        private void insertar()
        {

            string titulo = tb_titulo_original.Text.ToString();
            string titulo_español = tb_titulo_español.Text.ToString();
            string duracion = tb_duracion.Text.ToString();
            string argumento = tb_argumento.Text.ToString();
            string url = tb_url.Text.ToString();
            string calificacion = (cb_calificaciones.SelectedItem as ComboboxItem).Value.ToString();
            string paisOrigen = (cb_paisorigen.SelectedItem as ComboboxItem).Value.ToString();

            var sql = "";

            if (id_selected == "")
            {
                sql = "INSERT INTO pav1_hoyts.\"Pelicula\" " +
                  "(titulo_original, titulo_para_presentar, duracion_min, argumento, id_calificacion, id_paisdeorigen, url_image) " +
                  "VALUES (:titulo_original, :titulo_presentar, :duracion, :argumento, :id_calificacion, :id_paisorigen, :url_image)";
            }
            else
            {
                sql = "UPDATE pav1_hoyts.\"Pelicula\" SET titulo_original = '" + titulo
                    + "', titulo_para_presentar = '" + titulo_español
                    + "', duracion_min = '" + duracion
                    + "', argumento = '" + argumento
                    + "', url_image = '" + url
                    + "', id_calificacion = '" + calificacion
                    + "', id_paisdeorigen = '" + paisOrigen
                    + "' WHERE id = " + "'" + id_selected + "'";
            }

            NpgsqlParameter[] parameters = new NpgsqlParameter[7];
            parameters[0] = new NpgsqlParameter("titulo_original", titulo);
            parameters[1] = new NpgsqlParameter("titulo_presentar", titulo_español);
            parameters[2] = new NpgsqlParameter("duracion", Convert.ToInt32(duracion));
            parameters[3] = new NpgsqlParameter("argumento", argumento);
            parameters[4] = new NpgsqlParameter("id_calificacion", Convert.ToInt32(calificacion));
            parameters[5] = new NpgsqlParameter("id_paisorigen", Convert.ToInt32(paisOrigen));
            parameters[6] = new NpgsqlParameter("url_image", url);

            db.SetData(sql, parameters);

            limpiarCampos();
            mostrarPeliculas();
            id_selected = "";
            btn_eliminar.Visible = false;

            dt_movieTables.ClearSelection();
        }



        private void btn_save_Click(object sender, System.EventArgs e)
        {

            List<string> errores = new List<string> { };

            if (tb_titulo_original.TextLength == 0)
            {
                errores.Add("Debes ingresar un titulo para la pelicula.");
            }
            if (tb_titulo_español.TextLength == 0)
            {
                tb_titulo_español.Text = tb_titulo_original.Text;
            }
            if (tb_duracion.TextLength == 0)
            {
                errores.Add("Debes ingresar una duración en minutos para la pelicula.");
            }
            if (tb_argumento.TextLength == 0)
            {
                errores.Add("Debes ingresar un argumento para la pelicula.");
            }
            if (tb_url.TextLength == 0)
            {
                errores.Add("Debes ingresar una URL para la pelicula.");
            }

            if((cb_calificaciones.SelectedItem as ComboboxItem).Value.ToString() == "0")
            {
                errores.Add("Debes seleccionar una calificación.");
            }

            if ((cb_paisorigen.SelectedItem as ComboboxItem).Value.ToString() == "0")
            {
                errores.Add("Debes seleccionar un pais de origen.");
            }

            if (errores.Count > 0)
            {
                var error = "";

                foreach(String i in errores)
                {
                    error += "  - ";              
                    error += i;
                    error += "\n";
                }

                MessageBox.Show("Es necesario corregir los siguientes errores: \n" + error, "Ups", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                insertar();
            }      
        }

        private void limpiarCampos()
        {
            tb_titulo_original.Text = "";
            tb_titulo_español.Text = "";
            tb_duracion.Text = "";
            tb_argumento.Text = "";
            tb_url.Text = "";
            cb_calificaciones.SelectedIndex = 0;
            cb_paisorigen.SelectedIndex = 0;
        }

        private void selectMovie(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in dt_movieTables.SelectedRows)
            {
                
                id_selected = row.Cells[0].Value.ToString();
                tb_titulo_original.Text = row.Cells[1].Value.ToString();
                tb_titulo_español.Text = row.Cells[2].Value.ToString();
                tb_duracion.Text = row.Cells[3].Value.ToString();
                tb_argumento.Text = row.Cells[4].Value.ToString();
                tb_url.Text = row.Cells[7].Value.ToString();

                for (int i = 0; i < cb_calificaciones.Items.Count; i++)
                {
                    string valueInDb = row.Cells[5].Value.ToString();
                    string value = cb_calificaciones.GetItemText(cb_calificaciones.Items[i]);
                    if(value == valueInDb)
                    {
                        cb_calificaciones.SelectedIndex = i;
                    }
                }

                for (int i = 0; i < cb_paisorigen.Items.Count; i++)
                {
                    string valueInDb = row.Cells[6].Value.ToString();
                    string value = cb_paisorigen.GetItemText(cb_paisorigen.Items[i]);
                    if (value == valueInDb)
                    {
                        cb_paisorigen.SelectedIndex = i;
                    }
                }

            }

            btn_eliminar.Visible = true;

        }

        private void btn_eliminar_Click(object sender, EventArgs e)
        {
            var sql = "DELETE FROM pav1_hoyts.\"Pelicula\" WHERE id = "+ "'"+ id_selected + "'";
            db.DeleteData(sql);

            Console.WriteLine(sql);

            mostrarPeliculas();
            limpiarCampos();
            btn_eliminar.Visible = false;
        }
    }
}

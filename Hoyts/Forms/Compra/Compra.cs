using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Hoyts.Source;

namespace Hoyts.Forms.Compra
{
    public partial class Compra : Form
    {
        private DataRow movie;
        private DataRow funcion;
        private Boolean esMiercoles;
        private DBConnection db = new DBConnection();
        private double total = 0.00;
        private int cantidad = 0;

        public Compra(DataRow movie, DataRow funcion)
        {
            InitializeComponent();
            this.movie = movie;
            this.funcion = funcion;
            this.esMiercoles = false;
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

        private void cargarPrecios()
        {
            string sql = "SELECT CONCAT(nombre,' $', precio ) as nombre_precio, precio FROM Precio P";

            if (esMiercoles && funcion["id_formato"].ToString() == "1")
            {
                sql += " WHERE nombre = 'MIERCOLES 2D'";
            }
            else
            {
                if(esMiercoles && funcion["id_formato"].ToString() == "2")
                {
                    sql += " WHERE nombre = 'MIERCOLES 3D'";
                }
            }

            if (!esMiercoles && funcion["id_formato"].ToString() == "1")
            {
                sql += " WHERE id_formato = '1' AND nombre != 'MIERCOLES 2D'";
            }
            else
            {
                if (!esMiercoles && funcion["id_formato"].ToString() == "2")
                {
                    sql += " WHERE id_formato = '2' AND nombre != 'MIERCOLES 3D'";
                }
            }


            DataTable data = db.GetData(sql);
            cb_precios.DataSource = data;
            cb_precios.ValueMember = "precio";
            cb_precios.DisplayMember = "nombre_precio";
        }

        private void load(object sender, EventArgs e)
        {
            txt_movie.Text = movie["titulo_para_presentar"].ToString();
            txt_fecha.Text = funcion["fecha_funcion"].ToString().Split(' ')[0] + " " + funcion["horario_comienzo"].ToString().Split('.')[0] + " - " + funcion["horario_fin"].ToString().Split('.')[0];
            txt_formato.Text = formato_video(funcion["id_formato"].ToString()) + " - " + formato_audio(funcion["id_audio"].ToString());
            esMiercoles = funcion["dia"].ToString() == "3" ? true : false;
            cargarPrecios();
        }

        private void cargar(object sender, EventArgs e)
        {
            string concepto = cb_precios.Text.Split('-')[0];
            string precio = cb_precios.SelectedValue.ToString();

            if (concepto.Contains("2X1"))
            {
                double precio_dividido = Convert.ToDouble(precio) / 2;
                cantidad++;
                cantidad++;
                dgv_conceptos.Rows.Add(concepto, "$" + precio_dividido.ToString());
                dgv_conceptos.Rows.Add(concepto, "$" + precio_dividido.ToString());
            }
            else
            {
                cantidad++;
                dgv_conceptos.Rows.Add(concepto, "$" + precio);
            }
            total += Convert.ToDouble(precio);
            txt_total.Text = "$" + total;
            txt_cantidad.Text = "Cantidad: " + cantidad;
        }

        private void registrarTicket(double precioHistorico, string promocion)
        {

            db.SetData("INSERT INTO Ticket (id_funcion, precio_historico, promocion, id_pelicula) VALUES (" +
                "'" + funcion["id"].ToString() + "', " +
                 "'" + precioHistorico + "', " +
                 "'" + promocion + "', " +
                 "'" + movie["id"].ToString() + "'" +
                ")");

            int capacidad = Convert.ToInt32(db.GetData("SELECT stock_tickets FROM Funciones WHERE id = '" + funcion["id"] + "'").Rows[0]["stock_tickets"]) - 1;

            db.SetData("UPDATE Funciones SET stock_tickets = " + capacidad + " WHERE id = '" + funcion["id"] + "'");

        }

        private void cobrar(object sender, EventArgs e)
        {
            DataGridViewRowCollection conceptos = dgv_conceptos.Rows;
            string mensaje = "Esta a punto de cargar " + (conceptos.Count - 1).ToString() + " tickets de la pelicula " + txt_movie.Text + " con los datos: " + txt_fecha.Text + " - " + txt_formato.Text + "\n¿Estas seguro?";

            DialogResult result = MessageBox.Show(mensaje, "Atención", MessageBoxButtons.OKCancel, MessageBoxIcon.Exclamation);

            if(result == DialogResult.OK)
            {

                foreach (DataGridViewRow concepto in conceptos)
                {
                    if(concepto.Cells[1].Value != null)
                    {
                        registrarTicket(Convert.ToDouble(concepto.Cells[1].Value.ToString().Split('$')[1]), concepto.Cells[0].Value.ToString());
                    }
                }
            }

            MessageBox.Show("Los tickets se registraron exitosamente", "Exitoso", MessageBoxButtons.OK, MessageBoxIcon.Information);
            this.Close();
        }
    }
}

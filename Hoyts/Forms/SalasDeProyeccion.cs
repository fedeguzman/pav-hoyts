using Hoyts.Source;
using Npgsql;
using System;
using System.Data;
using System.Windows.Forms;

namespace Hoyts.Forms
{
    public partial class Salas_de_Proyección : Form
    {

        private DBConnection db = new DBConnection();

        public Salas_de_Proyección()
        {
            InitializeComponent();
        }

        private void load(object sender, EventArgs e)
        {
            CargarGrilla();
        }

        private void CargarGrilla()
        {
            var sql = "SELECT * FROM  pav1_hoyts.\"Sala\" ORDER BY numero_sala ASC";
            DataTable datos = db.GetData(sql);
            DataRowCollection rows = datos.Rows;

            dgv_data.Rows.Clear();

            int capacidadTotal = 0;

            foreach (DataRow row in rows)
            {
                dgv_data.Rows.Add(row["numero_sala"], row["capacidad"] + " butacas");
                capacidadTotal += Convert.ToInt32(row["capacidad"]);
            }

            lbl_capacidad_total.Text = "Capacidad total: " + capacidadTotal + " en " + rows.Count + " salas.";

        }

        private void btn_saveAndNew_Click(object sender, EventArgs e)
        {
            int numero_sala = txt_numsala.Text == "" ? -1 : Convert.ToInt32(txt_numsala.Text);
            int capacidad = txt_capacidad.Text == "" ? -1 : Convert.ToInt32(txt_capacidad.Text);

            string errores = "";

            if (numero_sala == -1)
            {
                errores += "\n - Debes ingresar un numero de sala.";
            }

            if (capacidad == -1)
            {
                errores += "\n - La sala debe tener una capacidad.";
            }

            if (errores != "")
            {
                MessageBox.Show("Debes solucionar los siguientes errores para continuar: " + errores, "Atención", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                var verificar_si_existe = "SELECT * FROM pav1_hoyts.\"Sala\" WHERE numero_sala = " + numero_sala;

                DataTable datos = db.GetData(verificar_si_existe);

                if (datos.Rows.Count == 0)
                {
                    if (capacidad == 0)
                    {
                        MessageBox.Show("La sala no puede tener una capacidad de 0", "Atención", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        var sql = "INSERT INTO pav1_hoyts.\"Sala\" (numero_sala, capacidad) VALUES (:numero_sala, :capacidad)";
                        NpgsqlParameter[] parameters = new NpgsqlParameter[2];
                        parameters[0] = new NpgsqlParameter("numero_sala", numero_sala);
                        parameters[1] = new NpgsqlParameter("capacidad", capacidad);

                        db.SetData(sql, parameters);
                        CargarGrilla();
                        limpiar();
                    }
                }
                else
                {
                    if (capacidad == 0)
                    {
                        DialogResult result = MessageBox.Show("¿Desea eliminar la sala " + numero_sala + "?", "Atención", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                        if (result == DialogResult.Yes)
                        {
                            var sql = "DELETE FROM pav1_hoyts.\"Sala\" where numero_sala = :numero_sala";
                            NpgsqlParameter[] parameters = new NpgsqlParameter[1];
                            parameters[0] = new NpgsqlParameter("numero_sala", numero_sala);
                            db.SetData(sql, parameters);
                            CargarGrilla();
                            limpiar();
                        }
                    }
                    else
                    {
                        DialogResult result = MessageBox.Show("¿Desea modificar la capacidad de la sala " + numero_sala + " por " + capacidad + "?", "Atención", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                        if (result == DialogResult.Yes)
                        {
                            var sql = "UPDATE pav1_hoyts.\"Sala\" SET capacidad = :capacidad WHERE numero_sala = :numero_sala";
                            NpgsqlParameter[] parameters = new NpgsqlParameter[2];
                            parameters[0] = new NpgsqlParameter("capacidad", capacidad);
                            parameters[1] = new NpgsqlParameter("numero_sala", numero_sala);

                            db.SetData(sql, parameters);
                            CargarGrilla();
                            limpiar();
                        }
                    }
                }
            }
        }

        private void limpiar()
        {
            txt_capacidad.Text = "";
            txt_numsala.Text = "";
            txt_numsala.Focus();
        }
    }
}

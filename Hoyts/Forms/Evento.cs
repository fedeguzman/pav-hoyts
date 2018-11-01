using Hoyts.Source;
using Npgsql;
using System;
using System.Data;
using System.Data.OleDb;
using System.Windows.Forms;

namespace Hoyts.Forms
{
    public partial class Evento : Form
    {

        private DBConnection db = new DBConnection();
        private string table_name = "Evento";
        private string id_selected = "";
        private int length = 0;

        public Evento()
        {
            InitializeComponent();
        }

        private void load(object sender, EventArgs e)
        {
            CargarGrilla();
        }

        private void CargarGrilla()
        {
            var sql = "SELECT * FROM " + table_name + " ORDER BY nombre DESC";
            DataTable datos = db.GetData(sql);
            DataRowCollection rows = datos.Rows;
            length = rows.Count;

            dgv_data.Rows.Clear();

            foreach (DataRow row in rows)
            {
                dgv_data.Rows.Add(row["id"], row["nombre"]);
            }
        }

        private void limpiar()
        {
            txt_data.Text = "";
            txt_data.Focus();
            id_selected = "";
            btn_eliminar.Visible = false;
            btn_new.Visible = false;
            btn_saveAndNew.Text = "Guardar";
        }

        private void btn_saveAndNew_Click(object sender, EventArgs e)
        {
            string nombre = txt_data.Text;
            if (nombre == "")
            {
                MessageBox.Show("Falta completar el campo.");
            }
            else
            {
                if (id_selected == "")
                {
                    var sql = "INSERT INTO " + table_name + " (nombre) VALUES ('" + nombre.ToString() + "')";
                    OleDbParameter[] parameters = new OleDbParameter[1];
                    parameters[0] = new OleDbParameter("nombre", nombre);
                    db.SetData(sql, parameters);
                    CargarGrilla();
                    limpiar();
                }
                else
                {
                    var sql = "UPDATE " + table_name + " SET nombre = + '" + nombre + "' WHERE id = " + id;
                    OleDbParameter[] parameters = new OleDbParameter[2];
                    parameters[0] = new OleDbParameter("nombre", nombre);
                    parameters[1] = new OleDbParameter("id", Convert.ToInt32(id_selected));
                    db.SetData(sql, parameters);
                    CargarGrilla();
                    limpiar();
                }
            }
        }

        private void selectData(object sender, DataGridViewCellEventArgs e)
        {

            foreach (DataGridViewRow row in dgv_data.SelectedRows)
            {
                id_selected = row.Cells[0].Value.ToString();
                txt_data.Text = row.Cells[1].Value.ToString();
                btn_new.Visible = true;
                btn_saveAndNew.Text = "Modificar";
            }

        }

        private void btn_eliminar_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("¿Estas seguro de eliminar este registro?", "Atención", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);

            if (result == DialogResult.Yes)
            {
                var sql = "DELETE FROM " + table_name + " WHERE id = " + id_selected;
                OleDbParameter[] parameters = new OleDbParameter[1];
                parameters[0] = new OleDbParameter("id", Convert.ToInt32(id_selected));
                db.SetData(sql, parameters);
                CargarGrilla();
                limpiar();
            }
        }

        private void btn_new_Click(object sender, EventArgs e)
        {
            limpiar();
        }
    }
}

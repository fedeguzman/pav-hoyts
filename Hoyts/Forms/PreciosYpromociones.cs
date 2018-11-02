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
using Npgsql;



namespace Hoyts.Forms
{
    public partial class PreciosYpromociones : Form

        private DBConnection db = new DBConnection();
        private string table_name = "Precio";
        private string id_selected = "";
        private int length = 0;
    {
        public PreciosYpromociones()
        {
            InitializeComponent();
        }
    private void load(object sender, EventArgs e)
    {
        CargarGrilla();
    }

    private void CargarGrilla()
    {
        var sql = "SELECT * FROM pav1_hoyts.\"" + table_name + "\" ORDER BY nombre ASC";
        DataTable datos = db.GetData(sql);
        DataRowCollection rows = datos.Rows;
        length = rows.Count;

        dgv_data.Rows.Clear();

        foreach (DataRow row in rows)
        {
            dgv_data.Rows.Add(row["id"], row["nombre"]);
        }
    }


    private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void PreciosYpromociones_Load(object sender, EventArgs e)
        {

        }

        private void label_NombrePromo_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_PreciosPromos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btn_Modificar_Click(object sender, EventArgs e)
        {
            formularioPrecios formulario = new formularioPrecios();
            formulario.ShowDialog();
            
        }

        private void btn_Agregar_Click(object sender, EventArgs e)
        {
           
            formularioPrecios formularioPrecios = new formularioPrecios();
            formularioPrecios.ShowDialog();

        }
    }
}

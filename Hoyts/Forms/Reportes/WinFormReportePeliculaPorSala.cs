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

namespace Hoyts.Forms.Reportes
{
    public partial class WinFormReportePeliculaPorSala : Form
    {

        DBConnection db = new DBConnection();

        public WinFormReportePeliculaPorSala()
        {
            InitializeComponent();
        }

        private void cargarSalas()
        {
            DataTable salas = db.GetData("SELECT DISTINCT(F.id_sala) FROM Funciones F WHERE F.fecha_funcion >= GETDATE() ORDER BY F.id_sala");
            cb_sala.DataSource = salas;
            cb_sala.DisplayMember = "id_sala";
            cb_sala.ValueMember = "id_sala";

        }

        private void WinFormReportePeliculaPorSala_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'DataSet3.PeliculaPorSala' Puede moverla o quitarla según sea necesario.
            cargarSalas();
            this.PeliculaPorSalaTableAdapter.Fill(this.DataSet3.PeliculaPorSala, 1, "21/10/2018", "21/10/2019");
            this.reportViewer1.RefreshReport();
        }

        private void btn_cargar_Click(object sender, EventArgs e)
        {

            DataRow selectedDataRow = ((DataRowView)cb_sala.SelectedItem).Row;
            int sala = Convert.ToInt32(selectedDataRow["id_sala"]);

            string fecha_inicio = dtp_inicio.Value.Date.ToString();
            string fecha_fin = dtp_fin.Value.Date.ToString();

            this.PeliculaPorSalaTableAdapter.Fill(this.DataSet3.PeliculaPorSala, sala, fecha_inicio, fecha_fin);
            this.reportViewer1.RefreshReport();
        }
    }
}

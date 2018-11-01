using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hoyts.Forms.Reportes.ReporteHistoricoPeliculasMasVendidas
{
    public partial class WinFormsReporte : Form
    {
        public WinFormsReporte()
        {
            InitializeComponent();
        }

        private void WinFormsReporte_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'ConjuntoDatos.Pelicula' Puede moverla o quitarla según sea necesario.
            this.PeliculaTableAdapter.Fill(this.ConjuntoDatos.Pelicula, "1/1/2000", "1/1/2020");

            this.reportViewer1.RefreshReport();
        }

        private void btn_cargar_Click(object sender, EventArgs e)
        {
            string fecha_inicio = dtp_inicio.Value.Date.ToString();
            string fecha_fin = dtp_fin.Value.Date.ToString();

            this.PeliculaTableAdapter.Fill(this.ConjuntoDatos.Pelicula, fecha_inicio, fecha_fin);
            this.reportViewer1.RefreshReport();
        }
    }
}

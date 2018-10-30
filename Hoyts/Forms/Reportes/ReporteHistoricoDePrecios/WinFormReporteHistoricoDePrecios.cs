using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hoyts.Forms.Reportes.ReporteHistoricoDePrecios
{
    public partial class WinFormReporteHistoricoDePrecios : Form
    {
        public WinFormReporteHistoricoDePrecios()
        {
            InitializeComponent();
        }

        private void WinFormReporteHistoricoDePrecios_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'ReporteHistoricoDePrecios.Precio' Puede moverla o quitarla según sea necesario.
            this.PrecioTableAdapter.Fill(this.ReporteHistoricoDePrecios.Precio);

            this.reportViewer1.RefreshReport();
        }

        private void btn_cargar_Click(object sender, EventArgs e)
        {
            this.PrecioTableAdapter.Fill(this.ReporteHistoricoDePrecios.Precio);
            this.reportViewer1.RefreshReport();
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hoyts.Forms
{
    public partial class ReportesMain : Form
    {
        public ReportesMain()
        {
            InitializeComponent();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Forms.Reportes.Reporte r = new Reportes.Reporte();
            r.ShowDialog();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Forms.Reportes.ReporteTicketsIntervalo r = new Forms.Reportes.ReporteTicketsIntervalo();
            r.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Forms.Reportes.WinFormReportePeliculaPorSala r = new Forms.Reportes.WinFormReportePeliculaPorSala();
            r.ShowDialog();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Forms.Reportes.ReporteHistoricoPeliculasMasVendidas.WinFormsReporte r = new Forms.Reportes.ReporteHistoricoPeliculasMasVendidas.WinFormsReporte();
            r.ShowDialog();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Forms.Reportes.ReporteHistoricoTicketsPorSala.WinForms r = new Forms.Reportes.ReporteHistoricoTicketsPorSala.WinForms();
            r.ShowDialog();
        }
    }
}

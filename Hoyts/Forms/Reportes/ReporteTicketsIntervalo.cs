using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hoyts.Forms.Reportes
{
    public partial class ReporteTicketsIntervalo : Form
    {
        public ReporteTicketsIntervalo()
        {
            InitializeComponent();
        }

        private void ReporteTicketsIntervalo_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'DataSet2.TicketsIntervalo' Puede moverla o quitarla según sea necesario.
            dtp_desde.Value = DateTime.Now;
            dtp_hasta.MinDate = DateTime.Now;

            String hoy = DateTime.Now.Date.ToString();
            this.TicketsIntervaloTableAdapter.Fill(this.DataSet2.TicketsIntervalo, hoy, hoy);
            this.reportViewer1.RefreshReport();
        }

        private void updateHasta(object sender, EventArgs e)
        {
            dtp_hasta.Enabled = true;
            dtp_hasta.MinDate = dtp_desde.Value;
            recargarReporte();
        }

        private void recargarReporte()
        {
            string desde = dtp_desde.Value.Date.ToString();
            string hasta = dtp_hasta.Value.Date.ToString();
            this.TicketsIntervaloTableAdapter.Fill(this.DataSet2.TicketsIntervalo, desde, hasta);
            this.reportViewer1.RefreshReport();
        }

        private void recargar(object sender, EventArgs e)
        {
            recargarReporte();
        }
    }
}

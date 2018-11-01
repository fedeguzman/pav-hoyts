using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hoyts.Forms.Reportes.ReporteHistoricoTicketsPorSala
{
    public partial class WinForms : Form
    {
        public WinForms()
        {
            InitializeComponent();
        }

        private void WinForms_Load(object sender, EventArgs e)
        {
            // TODO: esta línea de código carga datos en la tabla 'DataSet1.Funciones' Puede moverla o quitarla según sea necesario.
            this.FuncionesTableAdapter.Fill(this.DataSet1.Funciones, "20/10/2018", "31/10/2018");
            this.reportViewer1.RefreshReport();
        }

        private void btn_cargar_Click(object sender, EventArgs e)
        {
            string fecha_inicio = dtp_inicio.Value.Date.ToString();
            string fecha_fin = dtp_fin.Value.Date.ToString();

            this.FuncionesTableAdapter.Fill(this.DataSet1.Funciones, fecha_inicio, fecha_fin);
            this.reportViewer1.RefreshReport();
        }
    }
}

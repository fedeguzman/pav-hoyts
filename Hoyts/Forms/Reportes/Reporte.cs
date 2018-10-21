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
    public partial class Reporte : Form
    {
        private Source.DBConnection db = new Source.DBConnection();

        public Reporte()
        {
            InitializeComponent();
        }

        public void getMovies()
        {
            DataTable data = db.GetData("SELECT id, titulo_original FROM Pelicula P WHERE P.id IN (SELECT F.id_pelicula FROM Funciones F WHERE F.id_pelicula = P.id)");
            cb_pelicula.DataSource = data;
            cb_pelicula.DisplayMember = "titulo_original";
            cb_pelicula.ValueMember = "id";

        }

        private void Reporte_Load(object sender, EventArgs e)
        {
            getMovies();
        }

        private void setReport(object sender, EventArgs e)
        {
            DataRow selectedDataRow = ((DataRowView)cb_pelicula.SelectedItem).Row;
            int id_movie = Convert.ToInt32(selectedDataRow["Id"]);
            this.DataTable1TableAdapter.Fill(this.DataSet1.DataTable1, id_movie);
            this.reportViewer1.RefreshReport();
        }

        
    }
}

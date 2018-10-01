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
    public partial class Configuración : Form
    {
        public Configuración()
        {
            InitializeComponent();
        }

        private void btn_salas_Click(object sender, EventArgs e)
        {
            Forms.Salas_de_Proyección sdp = new Salas_de_Proyección();
            sdp.ShowDialog();
        }

        private void btn_calificaciones_Click(object sender, EventArgs e)
        {
            Forms.Calificaciones c = new Calificaciones();
            c.ShowDialog();
        }

        private void btn_genre_Click(object sender, EventArgs e)
        {
            Forms.Genero g = new Genero();
            g.ShowDialog();
        }

        private void btn_eventos_Click(object sender, EventArgs e)
        {
            Forms.Evento evento = new Evento();
            evento.ShowDialog();
        }
    }
}

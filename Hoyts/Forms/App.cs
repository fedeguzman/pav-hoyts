using System;
using System.Windows.Forms;
using Hoyts.Source;
using System.Data;
using System.Drawing;
using System.Net;
using System.IO;

namespace Hoyts
{
    public partial class App : Form
    {
        private DBConnection db = new DBConnection();
    
        public App()
        {
            InitializeComponent();
        }

        private void load(object sender, EventArgs e)
        {
            currentTime.Start();
            cargarPelisEnCartelera();
        }

        private void currentTime_Tick(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            date.Text = dt.ToString();
        }

        private void cargarFuncionesPelicula(object sender, EventArgs e, string id)
        {
            Forms.Compra.FuncionesPorPelicula fpp = new Forms.Compra.FuncionesPorPelicula(id);
            fpp.ShowDialog();
        }

        private void cargarPelisEnCartelera()
        {
            var sql = "SELECT P.* FROM Pelicula P WHERE P.id IN (SELECT DISTINCT F.id_pelicula FROM Funciones F WHERE F.fecha_funcion >= GETDATE())";

            DataTable data = db.GetData(sql);
            DataRowCollection movies = data.Rows;
            int ButtonWidth = 170;
            int ButtonHeight = 270;
            int Distance = 20;
            int start_x = 0;
            int start_y = 0;
            int currentLength = 5;

            var length = data.Rows.Count;
            var lengthRows = (length / currentLength) + 1;

            int m = 0;

            for (int x = 0; x < lengthRows; x++)
            {
                if(x == lengthRows - 1)
                {
                    currentLength = currentLength - ((lengthRows * currentLength) - length);
                }
                for (int y = 0; y < currentLength; y++)
                {
                    Button tmpButton = new Button();
                    tmpButton.Top = start_x + (x * ButtonHeight + Distance);
                    tmpButton.Left = start_y + (y * ButtonWidth + Distance);
                    tmpButton.Width = ButtonWidth;
                    tmpButton.Height = ButtonHeight;
                    tmpButton.FlatStyle = FlatStyle.Flat;
                    tmpButton.BackgroundImageLayout = ImageLayout.Stretch;                  
                    
                    string url = movies[m][7].ToString();

                    if(url == "")
                    {
                        url = "file:///C:/Users/fedeg/source/repos/pav-hoyts/Hoyts/img/817972f4f61c54772c2d601ea5645655394deb8e.jpg";
                        tmpButton.Text = movies[m]["titulo_original"].ToString();
                        tmpButton.TextAlign = ContentAlignment.MiddleCenter;
                        FontFamily fontFamily = new FontFamily("Google Sans");
                        tmpButton.Font = new Font(fontFamily, 16, FontStyle.Bold);
                        tmpButton.ForeColor = Color.White;
                    }

                    string id = movies[m]["id"].ToString();

                    tmpButton.Click += (sender, EventArgs) => {
                        cargarFuncionesPelicula(sender, EventArgs, id);
                    };

                    WebClient wc = new WebClient();
                    byte[] bytes = wc.DownloadData(url);
                    MemoryStream ms = new MemoryStream(bytes);
                    Image poster = Image.FromStream(ms);
                    tmpButton.BackgroundImage = poster;

                    m++;
                    body.Controls.Add(tmpButton);
                }
            }            
        }

        private void btn_sellTickets_Click(object sender, EventArgs e)
        {

        }

        private void openMovies(object sender, EventArgs e)
        {
            Forms.Pelicula pelicula = new Forms.Pelicula();
            pelicula.ShowDialog();
            cargarPelisEnCartelera();
        }

        private void btn_settings_Click(object sender, EventArgs e)
        {
            Forms.Configuración settings = new Forms.Configuración();
            settings.ShowDialog();
        }
    }
}
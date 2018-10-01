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



        private void cargarPelisEnCartelera()
        {
            var sql = "SELECT t.* FROM pav1_hoyts.\"Pelicula\" t";

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
                    WebClient wc = new WebClient();
                    byte[] bytes = wc.DownloadData(movies[m][7].ToString());
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
            Forms.Settings settings = new Forms.Settings();
            settings.ShowDialog();
        }
    }
}
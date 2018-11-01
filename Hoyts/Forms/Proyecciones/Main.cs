using Hoyts.Source;
using Npgsql;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Hoyts.Forms.Proyecciones
{
    public partial class Main : Form
    {

        private string id_selected = "";
        private DBConnection db = new DBConnection();
        private DataTable datos;
        private Boolean dias_cargados = false;

        public Main()
        {
            InitializeComponent();
        }

        private void load(object sender, EventArgs e)
        {
            id_selected = Forms.Pelicula.id_selected;
            cargarDatosDePelicula();
            this.Text = "Proyecciones de " + datos.Rows[0]["titulo_original"];
            title.Text = this.Text;
            dtp_desde.MinDate = DateTime.Now;
            dtp_hasta.MinDate = DateTime.Now;
            getFormatos();
            getEventos();
            getSala();
            cargarFunciones();
        }

        private void cargarDatosDePelicula()
        {
            datos = db.GetData("SELECT * FROM Pelicula WHERE id = '" + id_selected + "'");
        }

        private void updateHasta(object sender, EventArgs e)
        {
            dtp_hasta.Enabled = true;
            dtp_hasta.MinDate = dtp_desde.Value;
        }

       
        private void getEventos()
        {
            DataTable eventos = db.GetData("SELECT * FROM Evento ORDER BY id ASC");
            cb_eventos.DataSource = eventos;
            cb_eventos.DisplayMember = "nombre";
            cb_eventos.ValueMember = "id";
        }

        private void getFormatos()
        {
            DataTable audio = db.GetData("SELECT * FROM FormatoAudio");
            cb_audio.DataSource = audio;
            cb_audio.DisplayMember = "nombre";
            cb_audio.ValueMember = "id";

            DataTable video = db.GetData("SELECT * FROM FormatoVideo");
            cb_video.DataSource = video;
            cb_video.DisplayMember = "nombre";
            cb_video.ValueMember = "id";
        }

        private void getSala()
        {
            DataTable sala = db.GetData("SELECT * FROM Sala ORDER BY numero_sala ASC");
            cb_sala.DataSource = sala;
            cb_sala.DisplayMember = "numero_sala";
            cb_sala.ValueMember = "numero_sala";
        }

        private string switchDays(string day)
        {
            switch (day)
            {
                case "Dom":
                    return "Sunday";
                case "Lun":
                    return "Monday";
                case "Mar":
                    return "Tuesday";
                case "Mie":
                    return "Wednesday";
                case "Jue":
                    return  "Thursday";
                case "Vie":
                    return "Friday";
                case "Sab":
                    return "Saturday";
                case "Sunday":
                    return "0";
                case "Monday":
                    return "1";
                case "Tuesday":
                    return "2";
                case "Wednesday":
                    return "3";
                case "Thursday":
                    return "4";
                case "Friday":
                    return "5";
                case "Saturday":
                    return "6";
            }
            return "";
        }

        private void cargarFunciones()
        {
            string sql = "SELECT F.id_sala, F.fecha_funcion, " +
                "F.horario_comienzo, F.horario_fin, D.nombre, " +
                "Fa.nombre, Fv.nombre, F.stock_tickets FROM Funciones F " +
                "JOIN dias D ON D.number = F.dia " +
                "JOIN evento E ON E.id = F.id_evento " +
                "JOIN FormatoAudio Fa ON Fa.id = F.id_audio " +
                "JOIN FormatoVideo Fv ON Fv.id = F.id_formato WHERE F.id_pelicula = '" + id_selected + "'  ORDER BY F.fecha_funcion, F.horario_comienzo ASC ";

            DataTable datos = db.GetData(sql);
            DataRowCollection funciones = datos.Rows;

            dgv_datos.Rows.Clear();
            
            foreach(DataRow funcion in funciones)
            {
                string sala = funcion[0].ToString();
                string dia = funcion[4].ToString();
                string fecha = funcion[1].ToString().Split(' ')[0];
                string hora = funcion[2] + " - " + funcion[3];
                string formato = funcion[6] + " - " + funcion[5];
                string capacidad = funcion[7].ToString();

                dgv_datos.Rows.Add(sala, dia, fecha, hora, formato, capacidad);
            }

        }

        private void cargar(object sender, EventArgs e)
        {
            DateTime comienzo = dtp_desde.Value;
            DateTime hasta = dtp_hasta.Value;
            DateTime hora_comienzo = dtp_hora.Value;

            List<String> dias = new List<String>();
            
            foreach(var checkbox in this.Controls.OfType<CheckBox>())
            {
                if (checkbox.Checked)
                {
                    dias.Add(switchDays(checkbox.Text));
                }
            }

            double diasDelIntervalo = Convert.ToInt32((hasta - comienzo).TotalDays);

            DateTime aux_date = comienzo;
            for(int i = 0; i <= diasDelIntervalo; i++)
            {
                foreach (string day in dias)
                {
                    if (day.Contains(aux_date.DayOfWeek.ToString()))
                    {
                        string sala = cb_sala.SelectedValue.ToString();
                        DataTable datos_sala = db.GetData("SELECT capacidad FROM Sala WHERE numero_sala = '" + sala + "'");
                        int capacidad = Convert.ToInt32(datos_sala.Rows[0]["capacidad"]);

                        string hr = hora_comienzo.Hour.ToString();
                        string min = hora_comienzo.Minute.ToString();
                        string startTime = hr + ":" + min;

                        int duracion = Convert.ToInt32(datos.Rows[0]["duracion_min"]) + 15;

                        DateTime horario_fin = dtp_hora.Value.AddMinutes(duracion);

                        string f_hr = horario_fin.Hour.ToString();
                        string f_min = horario_fin.Minute.ToString();
                        string finishTime = f_hr + ":" + f_min;

                        string sql = "INSERT INTO Funciones " +
                            "(id_pelicula, fecha_funcion, horario_comienzo, horario_fin, dia, id_evento, id_formato, id_audio, id_sala, stock_tickets)" +
                            " VALUES (" +
                            "'" + id_selected + "', " +
                            "'" + aux_date.ToString("s") + "', " +
                            "'" + startTime + "', " +
                            "'" + finishTime + "', " +
                            Convert.ToInt32(switchDays(day.ToString())) + ", " +
                            cb_eventos.SelectedValue + ", " +
                            cb_video.SelectedValue + ", " +
                            cb_audio.SelectedValue + ", " +
                            sala + ", " +
                            capacidad +
                            ")";

                        db.SetData(sql);
                    }
                }
                
                aux_date = aux_date.AddDays(1);
            }
            cargarFunciones();
        }
    }
}

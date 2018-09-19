using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hoyts.Source
{
    class PeliculasEnCartelera
    {
        private DBConnection db = new DBConnection();
        public void obtenerPeliculasEnCartelera()
        {
            db.GetData("SELECT P.* FROM pav1_hoyts.Pelicula P");
        }
    }
}

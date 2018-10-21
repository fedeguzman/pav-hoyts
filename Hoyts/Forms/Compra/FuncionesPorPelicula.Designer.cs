namespace Hoyts.Forms.Compra
{
    partial class FuncionesPorPelicula
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FuncionesPorPelicula));
            this.movie_title = new System.Windows.Forms.Label();
            this.movie_subtitle = new System.Windows.Forms.Label();
            this.dgv_hoy = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dgv_tomorrow = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgv_futuro = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Fecha = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.id_funcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.sala = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.horario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.formato = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_hoy)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_tomorrow)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_futuro)).BeginInit();
            this.SuspendLayout();
            // 
            // movie_title
            // 
            this.movie_title.BackColor = System.Drawing.Color.Transparent;
            this.movie_title.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.movie_title.Font = new System.Drawing.Font("Google Sans", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.movie_title.ForeColor = System.Drawing.Color.White;
            this.movie_title.Location = new System.Drawing.Point(12, 9);
            this.movie_title.Name = "movie_title";
            this.movie_title.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.movie_title.Size = new System.Drawing.Size(982, 36);
            this.movie_title.TabIndex = 6;
            this.movie_title.Text = "Peliculas en Cartelera";
            this.movie_title.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // movie_subtitle
            // 
            this.movie_subtitle.BackColor = System.Drawing.Color.Transparent;
            this.movie_subtitle.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.movie_subtitle.Font = new System.Drawing.Font("Google Sans", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.movie_subtitle.ForeColor = System.Drawing.Color.White;
            this.movie_subtitle.Location = new System.Drawing.Point(14, 45);
            this.movie_subtitle.Name = "movie_subtitle";
            this.movie_subtitle.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.movie_subtitle.Size = new System.Drawing.Size(980, 23);
            this.movie_subtitle.TabIndex = 7;
            this.movie_subtitle.Text = "Peliculas en Cartelera";
            this.movie_subtitle.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dgv_hoy
            // 
            this.dgv_hoy.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_hoy.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_hoy.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id_funcion,
            this.sala,
            this.horario,
            this.formato});
            this.dgv_hoy.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_hoy.Location = new System.Drawing.Point(12, 100);
            this.dgv_hoy.Name = "dgv_hoy";
            this.dgv_hoy.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Sunken;
            this.dgv_hoy.RowHeadersVisible = false;
            this.dgv_hoy.Size = new System.Drawing.Size(315, 338);
            this.dgv_hoy.TabIndex = 8;
            this.dgv_hoy.CellContentDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.selectMovieHoy);
            this.dgv_hoy.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.selectMovieHoy);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Google Sans Medium", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(14, 68);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 23);
            this.label1.TabIndex = 11;
            this.label1.Text = "Hoy";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Google Sans Medium", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(329, 74);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(85, 23);
            this.label2.TabIndex = 12;
            this.label2.Text = "Mañana";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Google Sans Medium", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(650, 74);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(205, 23);
            this.label3.TabIndex = 13;
            this.label3.Text = "Proximas Funciones";
            // 
            // dgv_tomorrow
            // 
            this.dgv_tomorrow.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_tomorrow.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_tomorrow.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4});
            this.dgv_tomorrow.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_tomorrow.Location = new System.Drawing.Point(333, 100);
            this.dgv_tomorrow.Name = "dgv_tomorrow";
            this.dgv_tomorrow.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Sunken;
            this.dgv_tomorrow.RowHeadersVisible = false;
            this.dgv_tomorrow.Size = new System.Drawing.Size(315, 338);
            this.dgv_tomorrow.TabIndex = 14;
            this.dgv_tomorrow.CellContentDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.selectMovieTomorrow);
            this.dgv_tomorrow.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.selectMovieTomorrow);
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.HeaderText = "id";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.Visible = false;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.FillWeight = 55F;
            this.dataGridViewTextBoxColumn2.HeaderText = "Sala";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.ReadOnly = true;
            this.dataGridViewTextBoxColumn2.Width = 55;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.FillWeight = 132F;
            this.dataGridViewTextBoxColumn3.HeaderText = "Horario";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.ReadOnly = true;
            this.dataGridViewTextBoxColumn3.Width = 132;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.FillWeight = 125F;
            this.dataGridViewTextBoxColumn4.HeaderText = "Formato";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            this.dataGridViewTextBoxColumn4.ReadOnly = true;
            this.dataGridViewTextBoxColumn4.Width = 125;
            // 
            // dgv_futuro
            // 
            this.dgv_futuro.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_futuro.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_futuro.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn5,
            this.Fecha,
            this.dataGridViewTextBoxColumn7,
            this.dataGridViewTextBoxColumn8});
            this.dgv_futuro.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_futuro.Location = new System.Drawing.Point(654, 100);
            this.dgv_futuro.Name = "dgv_futuro";
            this.dgv_futuro.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Sunken;
            this.dgv_futuro.RowHeadersVisible = false;
            this.dgv_futuro.Size = new System.Drawing.Size(346, 338);
            this.dgv_futuro.TabIndex = 15;
            this.dgv_futuro.CellContentDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.selectMovieFuturo);
            this.dgv_futuro.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.selectMovieFuturo);
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.HeaderText = "id";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            this.dataGridViewTextBoxColumn5.Visible = false;
            // 
            // Fecha
            // 
            this.Fecha.HeaderText = "Fecha";
            this.Fecha.Name = "Fecha";
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.HeaderText = "Horario";
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            this.dataGridViewTextBoxColumn7.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn8
            // 
            this.dataGridViewTextBoxColumn8.FillWeight = 125F;
            this.dataGridViewTextBoxColumn8.HeaderText = "Formato";
            this.dataGridViewTextBoxColumn8.Name = "dataGridViewTextBoxColumn8";
            this.dataGridViewTextBoxColumn8.ReadOnly = true;
            this.dataGridViewTextBoxColumn8.Width = 125;
            // 
            // id_funcion
            // 
            this.id_funcion.HeaderText = "id";
            this.id_funcion.Name = "id_funcion";
            this.id_funcion.Visible = false;
            // 
            // sala
            // 
            this.sala.FillWeight = 55F;
            this.sala.HeaderText = "Sala";
            this.sala.Name = "sala";
            this.sala.ReadOnly = true;
            this.sala.Width = 55;
            // 
            // horario
            // 
            this.horario.FillWeight = 132F;
            this.horario.HeaderText = "Horario";
            this.horario.Name = "horario";
            this.horario.ReadOnly = true;
            this.horario.Width = 132;
            // 
            // formato
            // 
            this.formato.FillWeight = 125F;
            this.formato.HeaderText = "Formato";
            this.formato.Name = "formato";
            this.formato.ReadOnly = true;
            this.formato.Width = 125;
            // 
            // FuncionesPorPelicula
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1006, 450);
            this.Controls.Add(this.dgv_futuro);
            this.Controls.Add(this.dgv_tomorrow);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dgv_hoy);
            this.Controls.Add(this.movie_subtitle);
            this.Controls.Add(this.movie_title);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "FuncionesPorPelicula";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Funciones Por Pelicula";
            this.Load += new System.EventHandler(this.load);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_hoy)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_tomorrow)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_futuro)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label movie_title;
        private System.Windows.Forms.Label movie_subtitle;
        private System.Windows.Forms.DataGridView dgv_hoy;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dgv_tomorrow;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridView dgv_futuro;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Fecha;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn8;
        private System.Windows.Forms.DataGridViewTextBoxColumn id_funcion;
        private System.Windows.Forms.DataGridViewTextBoxColumn sala;
        private System.Windows.Forms.DataGridViewTextBoxColumn horario;
        private System.Windows.Forms.DataGridViewTextBoxColumn formato;
    }
}
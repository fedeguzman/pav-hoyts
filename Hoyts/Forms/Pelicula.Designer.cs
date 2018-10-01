namespace Hoyts.Forms
{
    partial class Pelicula
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Pelicula));
            this.label1 = new System.Windows.Forms.Label();
            this.label_tituloOriginal = new System.Windows.Forms.Label();
            this.tb_titulo_original = new System.Windows.Forms.TextBox();
            this.tb_titulo_español = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tb_duracion = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.tb_argumento = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cb_calificaciones = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.cb_paisorigen = new System.Windows.Forms.ComboBox();
            this.btn_save = new System.Windows.Forms.Button();
            this.tb_url = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.dt_movieTables = new System.Windows.Forms.DataGridView();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.titulo_original = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Titulo_español = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.duracion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.argumento = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.calificación = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.pais = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.URL = new System.Windows.Forms.DataGridViewLinkColumn();
            this.btn_eliminar = new System.Windows.Forms.Button();
            this.img_poster = new System.Windows.Forms.PictureBox();
            this.shw_tituloOriginal = new System.Windows.Forms.Label();
            this.shw_descripcion = new System.Windows.Forms.RichTextBox();
            this.panel_movie = new System.Windows.Forms.Panel();
            this.btn_nuevo = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dt_movieTables)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.img_poster)).BeginInit();
            this.panel_movie.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Google Sans", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(13, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(138, 36);
            this.label1.TabIndex = 6;
            this.label1.Text = "Peliculas";
            // 
            // label_tituloOriginal
            // 
            this.label_tituloOriginal.AutoSize = true;
            this.label_tituloOriginal.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tituloOriginal.ForeColor = System.Drawing.Color.White;
            this.label_tituloOriginal.Location = new System.Drawing.Point(16, 44);
            this.label_tituloOriginal.Name = "label_tituloOriginal";
            this.label_tituloOriginal.Size = new System.Drawing.Size(83, 15);
            this.label_tituloOriginal.TabIndex = 8;
            this.label_tituloOriginal.Text = "Titulo Original";
            // 
            // tb_titulo_original
            // 
            this.tb_titulo_original.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_titulo_original.Location = new System.Drawing.Point(19, 65);
            this.tb_titulo_original.Name = "tb_titulo_original";
            this.tb_titulo_original.Size = new System.Drawing.Size(398, 26);
            this.tb_titulo_original.TabIndex = 1;
            // 
            // tb_titulo_español
            // 
            this.tb_titulo_español.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_titulo_español.Location = new System.Drawing.Point(19, 119);
            this.tb_titulo_español.Name = "tb_titulo_español";
            this.tb_titulo_español.Size = new System.Drawing.Size(398, 26);
            this.tb_titulo_español.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(16, 98);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(101, 15);
            this.label2.TabIndex = 10;
            this.label2.Text = "Titulo en español";
            // 
            // tb_duracion
            // 
            this.tb_duracion.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_duracion.Location = new System.Drawing.Point(425, 65);
            this.tb_duracion.Name = "tb_duracion";
            this.tb_duracion.Size = new System.Drawing.Size(140, 26);
            this.tb_duracion.TabIndex = 4;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(422, 44);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(109, 15);
            this.label3.TabIndex = 12;
            this.label3.Text = "Duracion (en min.)";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(16, 148);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(67, 15);
            this.label4.TabIndex = 14;
            this.label4.Text = "Argumento";
            // 
            // tb_argumento
            // 
            this.tb_argumento.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_argumento.Location = new System.Drawing.Point(19, 168);
            this.tb_argumento.Multiline = true;
            this.tb_argumento.Name = "tb_argumento";
            this.tb_argumento.Size = new System.Drawing.Size(398, 75);
            this.tb_argumento.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.White;
            this.label5.Location = new System.Drawing.Point(423, 93);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(70, 15);
            this.label5.TabIndex = 16;
            this.label5.Text = "Calificación";
            // 
            // cb_calificaciones
            // 
            this.cb_calificaciones.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_calificaciones.FormattingEnabled = true;
            this.cb_calificaciones.Location = new System.Drawing.Point(423, 120);
            this.cb_calificaciones.Name = "cb_calificaciones";
            this.cb_calificaciones.Size = new System.Drawing.Size(330, 26);
            this.cb_calificaciones.TabIndex = 6;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(570, 44);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(88, 15);
            this.label6.TabIndex = 18;
            this.label6.Text = "País de Origen";
            // 
            // cb_paisorigen
            // 
            this.cb_paisorigen.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_paisorigen.FormattingEnabled = true;
            this.cb_paisorigen.IntegralHeight = false;
            this.cb_paisorigen.Location = new System.Drawing.Point(571, 65);
            this.cb_paisorigen.Name = "cb_paisorigen";
            this.cb_paisorigen.Size = new System.Drawing.Size(182, 26);
            this.cb_paisorigen.TabIndex = 5;
            // 
            // btn_save
            // 
            this.btn_save.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_save.FlatAppearance.BorderSize = 0;
            this.btn_save.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_save.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_save.ForeColor = System.Drawing.Color.White;
            this.btn_save.Location = new System.Drawing.Point(647, 252);
            this.btn_save.Name = "btn_save";
            this.btn_save.Size = new System.Drawing.Size(106, 33);
            this.btn_save.TabIndex = 8;
            this.btn_save.Text = "Guardar";
            this.btn_save.UseVisualStyleBackColor = false;
            this.btn_save.Click += new System.EventHandler(this.btn_save_Click);
            // 
            // tb_url
            // 
            this.tb_url.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tb_url.Location = new System.Drawing.Point(423, 168);
            this.tb_url.Multiline = true;
            this.tb_url.Name = "tb_url";
            this.tb_url.Size = new System.Drawing.Size(330, 75);
            this.tb_url.TabIndex = 7;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.ForeColor = System.Drawing.Color.White;
            this.label7.Location = new System.Drawing.Point(423, 149);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(89, 15);
            this.label7.TabIndex = 21;
            this.label7.Text = "URL del poster";
            // 
            // dt_movieTables
            // 
            this.dt_movieTables.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dt_movieTables.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.titulo_original,
            this.Titulo_español,
            this.duracion,
            this.argumento,
            this.calificación,
            this.pais,
            this.URL});
            this.dt_movieTables.Location = new System.Drawing.Point(19, 297);
            this.dt_movieTables.MultiSelect = false;
            this.dt_movieTables.Name = "dt_movieTables";
            this.dt_movieTables.Size = new System.Drawing.Size(1235, 294);
            this.dt_movieTables.TabIndex = 23;
            this.dt_movieTables.SelectionChanged += new System.EventHandler(this.selectMovie);
            // 
            // id
            // 
            this.id.FillWeight = 1F;
            this.id.HeaderText = "Id";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Resizable = System.Windows.Forms.DataGridViewTriState.False;
            this.id.Visible = false;
            this.id.Width = 5;
            // 
            // titulo_original
            // 
            this.titulo_original.HeaderText = "Titulo Original";
            this.titulo_original.MinimumWidth = 10;
            this.titulo_original.Name = "titulo_original";
            this.titulo_original.ReadOnly = true;
            this.titulo_original.Width = 150;
            // 
            // Titulo_español
            // 
            this.Titulo_español.HeaderText = "Titulo en español";
            this.Titulo_español.Name = "Titulo_español";
            this.Titulo_español.ReadOnly = true;
            this.Titulo_español.Width = 150;
            // 
            // duracion
            // 
            this.duracion.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.ColumnHeader;
            this.duracion.HeaderText = "Duración";
            this.duracion.Name = "duracion";
            this.duracion.ReadOnly = true;
            this.duracion.Width = 75;
            // 
            // argumento
            // 
            this.argumento.HeaderText = "Argumento";
            this.argumento.Name = "argumento";
            this.argumento.ReadOnly = true;
            this.argumento.Width = 500;
            // 
            // calificación
            // 
            this.calificación.HeaderText = "Calificación";
            this.calificación.Name = "calificación";
            this.calificación.ReadOnly = true;
            this.calificación.Width = 200;
            // 
            // pais
            // 
            this.pais.HeaderText = "País de Origen";
            this.pais.Name = "pais";
            this.pais.ReadOnly = true;
            // 
            // URL
            // 
            this.URL.HeaderText = "URL del poster";
            this.URL.Name = "URL";
            this.URL.ReadOnly = true;
            this.URL.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.URL.Visible = false;
            // 
            // btn_eliminar
            // 
            this.btn_eliminar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_eliminar.FlatAppearance.BorderSize = 0;
            this.btn_eliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_eliminar.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_eliminar.ForeColor = System.Drawing.Color.White;
            this.btn_eliminar.Location = new System.Drawing.Point(134, 252);
            this.btn_eliminar.Name = "btn_eliminar";
            this.btn_eliminar.Size = new System.Drawing.Size(106, 33);
            this.btn_eliminar.TabIndex = 9;
            this.btn_eliminar.Text = "Eliminar";
            this.btn_eliminar.UseVisualStyleBackColor = false;
            this.btn_eliminar.Visible = false;
            this.btn_eliminar.Click += new System.EventHandler(this.btn_eliminar_Click);
            // 
            // img_poster
            // 
            this.img_poster.BackColor = System.Drawing.Color.DimGray;
            this.img_poster.Image = ((System.Drawing.Image)(resources.GetObject("img_poster.Image")));
            this.img_poster.InitialImage = ((System.Drawing.Image)(resources.GetObject("img_poster.InitialImage")));
            this.img_poster.Location = new System.Drawing.Point(320, 12);
            this.img_poster.Name = "img_poster";
            this.img_poster.Size = new System.Drawing.Size(152, 227);
            this.img_poster.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.img_poster.TabIndex = 25;
            this.img_poster.TabStop = false;
            // 
            // shw_tituloOriginal
            // 
            this.shw_tituloOriginal.Font = new System.Drawing.Font("Google Sans", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.shw_tituloOriginal.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.shw_tituloOriginal.Location = new System.Drawing.Point(12, 11);
            this.shw_tituloOriginal.Name = "shw_tituloOriginal";
            this.shw_tituloOriginal.Size = new System.Drawing.Size(295, 53);
            this.shw_tituloOriginal.TabIndex = 26;
            // 
            // shw_descripcion
            // 
            this.shw_descripcion.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.shw_descripcion.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.shw_descripcion.ForeColor = System.Drawing.SystemColors.Info;
            this.shw_descripcion.Location = new System.Drawing.Point(12, 67);
            this.shw_descripcion.Name = "shw_descripcion";
            this.shw_descripcion.Size = new System.Drawing.Size(295, 171);
            this.shw_descripcion.TabIndex = 30;
            this.shw_descripcion.Text = "\t";
            // 
            // panel_movie
            // 
            this.panel_movie.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.panel_movie.Controls.Add(this.shw_descripcion);
            this.panel_movie.Controls.Add(this.shw_tituloOriginal);
            this.panel_movie.Controls.Add(this.img_poster);
            this.panel_movie.Location = new System.Drawing.Point(771, 33);
            this.panel_movie.Name = "panel_movie";
            this.panel_movie.Size = new System.Drawing.Size(483, 252);
            this.panel_movie.TabIndex = 26;
            // 
            // btn_nuevo
            // 
            this.btn_nuevo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_nuevo.FlatAppearance.BorderSize = 0;
            this.btn_nuevo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_nuevo.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_nuevo.ForeColor = System.Drawing.Color.White;
            this.btn_nuevo.Location = new System.Drawing.Point(22, 252);
            this.btn_nuevo.Name = "btn_nuevo";
            this.btn_nuevo.Size = new System.Drawing.Size(106, 33);
            this.btn_nuevo.TabIndex = 27;
            this.btn_nuevo.Text = "Nuevo";
            this.btn_nuevo.UseVisualStyleBackColor = false;
            this.btn_nuevo.Visible = false;
            this.btn_nuevo.Click += new System.EventHandler(this.button1_Click);
            // 
            // Pelicula
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(45)))), ((int)(((byte)(48)))));
            this.ClientSize = new System.Drawing.Size(1266, 603);
            this.Controls.Add(this.btn_nuevo);
            this.Controls.Add(this.panel_movie);
            this.Controls.Add(this.btn_eliminar);
            this.Controls.Add(this.dt_movieTables);
            this.Controls.Add(this.tb_url);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btn_save);
            this.Controls.Add(this.cb_paisorigen);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.cb_calificaciones);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.tb_argumento);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.tb_duracion);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.tb_titulo_español);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.tb_titulo_original);
            this.Controls.Add(this.label_tituloOriginal);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Pelicula";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Pelicula";
            this.Load += new System.EventHandler(this.load);
            ((System.ComponentModel.ISupportInitialize)(this.dt_movieTables)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.img_poster)).EndInit();
            this.panel_movie.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label_tituloOriginal;
        private System.Windows.Forms.TextBox tb_titulo_original;
        private System.Windows.Forms.TextBox tb_titulo_español;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox tb_duracion;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox tb_argumento;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cb_calificaciones;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cb_paisorigen;
        private System.Windows.Forms.Button btn_save;
        private System.Windows.Forms.TextBox tb_url;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DataGridView dt_movieTables;
        private System.Windows.Forms.Button btn_eliminar;
        private System.Windows.Forms.PictureBox img_poster;
        private System.Windows.Forms.Label shw_tituloOriginal;
        private System.Windows.Forms.RichTextBox shw_descripcion;
        private System.Windows.Forms.Panel panel_movie;
        private System.Windows.Forms.Button btn_nuevo;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn titulo_original;
        private System.Windows.Forms.DataGridViewTextBoxColumn Titulo_español;
        private System.Windows.Forms.DataGridViewTextBoxColumn duracion;
        private System.Windows.Forms.DataGridViewTextBoxColumn argumento;
        private System.Windows.Forms.DataGridViewTextBoxColumn calificación;
        private System.Windows.Forms.DataGridViewTextBoxColumn pais;
        private System.Windows.Forms.DataGridViewLinkColumn URL;
    }
}
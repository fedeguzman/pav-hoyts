namespace Hoyts.Forms
{
    partial class Configuración
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Configuración));
            this.label1 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.pictureBox2 = new System.Windows.Forms.PictureBox();
            this.btn_salas = new System.Windows.Forms.Button();
            this.btn_calificaciones = new System.Windows.Forms.Button();
            this.btn_eventos = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.btn_genre = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Google Sans", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(73, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(213, 36);
            this.label1.TabIndex = 6;
            this.label1.Text = "Configuración";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(529, 23);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(195, 31);
            this.pictureBox1.TabIndex = 7;
            this.pictureBox1.TabStop = false;
            // 
            // pictureBox2
            // 
            this.pictureBox2.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox2.Image")));
            this.pictureBox2.InitialImage = ((System.Drawing.Image)(resources.GetObject("pictureBox2.InitialImage")));
            this.pictureBox2.Location = new System.Drawing.Point(15, 18);
            this.pictureBox2.Name = "pictureBox2";
            this.pictureBox2.Size = new System.Drawing.Size(52, 40);
            this.pictureBox2.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox2.TabIndex = 8;
            this.pictureBox2.TabStop = false;
            // 
            // btn_salas
            // 
            this.btn_salas.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_salas.FlatAppearance.BorderSize = 0;
            this.btn_salas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_salas.Font = new System.Drawing.Font("Google Sans", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_salas.ForeColor = System.Drawing.Color.White;
            this.btn_salas.Location = new System.Drawing.Point(12, 74);
            this.btn_salas.Name = "btn_salas";
            this.btn_salas.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btn_salas.Size = new System.Drawing.Size(173, 77);
            this.btn_salas.TabIndex = 15;
            this.btn_salas.Text = "Salas de proyección";
            this.btn_salas.UseVisualStyleBackColor = false;
            this.btn_salas.Click += new System.EventHandler(this.btn_salas_Click);
            // 
            // btn_calificaciones
            // 
            this.btn_calificaciones.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_calificaciones.FlatAppearance.BorderSize = 0;
            this.btn_calificaciones.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_calificaciones.Font = new System.Drawing.Font("Google Sans", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_calificaciones.ForeColor = System.Drawing.Color.White;
            this.btn_calificaciones.Location = new System.Drawing.Point(191, 74);
            this.btn_calificaciones.Name = "btn_calificaciones";
            this.btn_calificaciones.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btn_calificaciones.Size = new System.Drawing.Size(173, 77);
            this.btn_calificaciones.TabIndex = 16;
            this.btn_calificaciones.Text = "Calificaciones INCAA";
            this.btn_calificaciones.UseVisualStyleBackColor = false;
            this.btn_calificaciones.Click += new System.EventHandler(this.btn_calificaciones_Click);
            // 
            // btn_eventos
            // 
            this.btn_eventos.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_eventos.FlatAppearance.BorderSize = 0;
            this.btn_eventos.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_eventos.Font = new System.Drawing.Font("Google Sans", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_eventos.ForeColor = System.Drawing.Color.White;
            this.btn_eventos.Location = new System.Drawing.Point(370, 74);
            this.btn_eventos.Name = "btn_eventos";
            this.btn_eventos.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btn_eventos.Size = new System.Drawing.Size(173, 77);
            this.btn_eventos.TabIndex = 17;
            this.btn_eventos.Text = "Feriados y Eventos";
            this.btn_eventos.UseVisualStyleBackColor = false;
            this.btn_eventos.Click += new System.EventHandler(this.btn_eventos_Click);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.button3.FlatAppearance.BorderSize = 0;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.Font = new System.Drawing.Font("Google Sans", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.ForeColor = System.Drawing.Color.White;
            this.button3.Location = new System.Drawing.Point(549, 74);
            this.button3.Name = "button3";
            this.button3.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.button3.Size = new System.Drawing.Size(173, 77);
            this.button3.TabIndex = 18;
            this.button3.Text = "Formatos";
            this.button3.UseVisualStyleBackColor = false;
            // 
            // button5
            // 
            this.button5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.button5.FlatAppearance.BorderSize = 0;
            this.button5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button5.Font = new System.Drawing.Font("Google Sans", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button5.ForeColor = System.Drawing.Color.White;
            this.button5.Location = new System.Drawing.Point(370, 157);
            this.button5.Name = "button5";
            this.button5.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.button5.Size = new System.Drawing.Size(173, 77);
            this.button5.TabIndex = 21;
            this.button5.Text = "Precios y Promociones";
            this.button5.UseVisualStyleBackColor = false;
            // 
            // button7
            // 
            this.button7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.button7.FlatAppearance.BorderSize = 0;
            this.button7.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button7.Font = new System.Drawing.Font("Google Sans", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button7.ForeColor = System.Drawing.Color.White;
            this.button7.Location = new System.Drawing.Point(191, 157);
            this.button7.Name = "button7";
            this.button7.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.button7.Size = new System.Drawing.Size(173, 77);
            this.button7.TabIndex = 20;
            this.button7.Text = "Datos de Peliculas";
            this.button7.UseVisualStyleBackColor = false;
            // 
            // btn_genre
            // 
            this.btn_genre.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_genre.FlatAppearance.BorderSize = 0;
            this.btn_genre.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_genre.Font = new System.Drawing.Font("Google Sans", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_genre.ForeColor = System.Drawing.Color.White;
            this.btn_genre.Location = new System.Drawing.Point(12, 157);
            this.btn_genre.Name = "btn_genre";
            this.btn_genre.Padding = new System.Windows.Forms.Padding(10, 0, 0, 0);
            this.btn_genre.Size = new System.Drawing.Size(173, 77);
            this.btn_genre.TabIndex = 19;
            this.btn_genre.Text = "Genero";
            this.btn_genre.UseVisualStyleBackColor = false;
            this.btn_genre.Click += new System.EventHandler(this.btn_genre_Click);
            // 
            // Configuración
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(45)))), ((int)(((byte)(48)))));
            this.ClientSize = new System.Drawing.Size(736, 247);
            this.Controls.Add(this.pictureBox2);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button7);
            this.Controls.Add(this.btn_genre);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.btn_eventos);
            this.Controls.Add(this.btn_calificaciones);
            this.Controls.Add(this.btn_salas);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Configuración";
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Configuración";
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox2)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.PictureBox pictureBox2;
        private System.Windows.Forms.Button btn_salas;
        private System.Windows.Forms.Button btn_calificaciones;
        private System.Windows.Forms.Button btn_eventos;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button btn_genre;
    }
}
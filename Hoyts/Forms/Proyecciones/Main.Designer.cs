namespace Hoyts.Forms.Proyecciones
{
    partial class Main
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Main));
            this.title = new System.Windows.Forms.Label();
            this.label_tituloOriginal = new System.Windows.Forms.Label();
            this.dtp_desde = new System.Windows.Forms.DateTimePicker();
            this.dtp_hasta = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.dtp_hora = new System.Windows.Forms.DateTimePicker();
            this.cb_sala = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.cb_video = new System.Windows.Forms.ComboBox();
            this.cb_audio = new System.Windows.Forms.ComboBox();
            this.cb_eventos = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.dgv_datos = new System.Windows.Forms.DataGridView();
            this.sala = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.fecha = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.horario = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.formato = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.stock = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btn_nuevo = new System.Windows.Forms.Button();
            this.c_dom = new System.Windows.Forms.CheckBox();
            this.c_lun = new System.Windows.Forms.CheckBox();
            this.c_mar = new System.Windows.Forms.CheckBox();
            this.c_mie = new System.Windows.Forms.CheckBox();
            this.c_jue = new System.Windows.Forms.CheckBox();
            this.c_vie = new System.Windows.Forms.CheckBox();
            this.c_sab = new System.Windows.Forms.CheckBox();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_datos)).BeginInit();
            this.SuspendLayout();
            // 
            // title
            // 
            this.title.AutoSize = true;
            this.title.Font = new System.Drawing.Font("Google Sans", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.title.ForeColor = System.Drawing.Color.White;
            this.title.Location = new System.Drawing.Point(8, 9);
            this.title.Name = "title";
            this.title.Size = new System.Drawing.Size(149, 26);
            this.title.TabIndex = 7;
            this.title.Text = "Proyecciones";
            // 
            // label_tituloOriginal
            // 
            this.label_tituloOriginal.AutoSize = true;
            this.label_tituloOriginal.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.label_tituloOriginal.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tituloOriginal.ForeColor = System.Drawing.Color.White;
            this.label_tituloOriginal.Location = new System.Drawing.Point(9, 8);
            this.label_tituloOriginal.Name = "label_tituloOriginal";
            this.label_tituloOriginal.Size = new System.Drawing.Size(43, 15);
            this.label_tituloOriginal.TabIndex = 10;
            this.label_tituloOriginal.Text = "Desde";
            // 
            // dtp_desde
            // 
            this.dtp_desde.CustomFormat = "dd/MM/yy";
            this.dtp_desde.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtp_desde.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_desde.Location = new System.Drawing.Point(12, 26);
            this.dtp_desde.MinDate = new System.DateTime(2018, 10, 5, 21, 10, 58, 0);
            this.dtp_desde.Name = "dtp_desde";
            this.dtp_desde.Size = new System.Drawing.Size(118, 24);
            this.dtp_desde.TabIndex = 11;
            this.dtp_desde.Value = new System.DateTime(2018, 10, 5, 21, 10, 58, 0);
            this.dtp_desde.CloseUp += new System.EventHandler(this.updateHasta);
            this.dtp_desde.ValueChanged += new System.EventHandler(this.updateHasta);
            this.dtp_desde.MouseCaptureChanged += new System.EventHandler(this.updateHasta);
            // 
            // dtp_hasta
            // 
            this.dtp_hasta.CustomFormat = "dd/MM/yy";
            this.dtp_hasta.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtp_hasta.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_hasta.Location = new System.Drawing.Point(140, 26);
            this.dtp_hasta.MinDate = new System.DateTime(2018, 10, 5, 0, 0, 0, 0);
            this.dtp_hasta.Name = "dtp_hasta";
            this.dtp_hasta.Size = new System.Drawing.Size(118, 24);
            this.dtp_hasta.TabIndex = 13;
            this.dtp_hasta.Value = new System.DateTime(2018, 10, 5, 21, 41, 21, 0);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(139, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(39, 15);
            this.label1.TabIndex = 12;
            this.label1.Text = "Hasta";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.panel1.Controls.Add(this.dtp_hasta);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label_tituloOriginal);
            this.panel1.Controls.Add(this.dtp_desde);
            this.panel1.Location = new System.Drawing.Point(12, 38);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(267, 58);
            this.panel1.TabIndex = 14;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(12, 102);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(99, 15);
            this.label2.TabIndex = 16;
            this.label2.Text = "Dia de la función";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(11, 186);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(122, 15);
            this.label3.TabIndex = 18;
            this.label3.Text = "Horario de comienzo";
            // 
            // dtp_hora
            // 
            this.dtp_hora.CalendarFont = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtp_hora.CustomFormat = "HH:mm";
            this.dtp_hora.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtp_hora.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_hora.Location = new System.Drawing.Point(11, 207);
            this.dtp_hora.Name = "dtp_hora";
            this.dtp_hora.ShowUpDown = true;
            this.dtp_hora.Size = new System.Drawing.Size(268, 26);
            this.dtp_hora.TabIndex = 19;
            this.dtp_hora.Value = new System.DateTime(2018, 10, 5, 0, 0, 0, 0);
            // 
            // cb_sala
            // 
            this.cb_sala.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_sala.FormattingEnabled = true;
            this.cb_sala.Location = new System.Drawing.Point(11, 257);
            this.cb_sala.Name = "cb_sala";
            this.cb_sala.Size = new System.Drawing.Size(266, 28);
            this.cb_sala.TabIndex = 21;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(11, 236);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(32, 15);
            this.label4.TabIndex = 20;
            this.label4.Text = "Sala";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.White;
            this.label5.Location = new System.Drawing.Point(11, 289);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(53, 15);
            this.label5.TabIndex = 22;
            this.label5.Text = "Formato";
            // 
            // cb_video
            // 
            this.cb_video.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_video.FormattingEnabled = true;
            this.cb_video.Location = new System.Drawing.Point(11, 309);
            this.cb_video.Name = "cb_video";
            this.cb_video.Size = new System.Drawing.Size(129, 28);
            this.cb_video.TabIndex = 23;
            // 
            // cb_audio
            // 
            this.cb_audio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_audio.FormattingEnabled = true;
            this.cb_audio.Location = new System.Drawing.Point(150, 309);
            this.cb_audio.Name = "cb_audio";
            this.cb_audio.Size = new System.Drawing.Size(129, 28);
            this.cb_audio.TabIndex = 24;
            // 
            // cb_eventos
            // 
            this.cb_eventos.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_eventos.FormattingEnabled = true;
            this.cb_eventos.Location = new System.Drawing.Point(11, 361);
            this.cb_eventos.Name = "cb_eventos";
            this.cb_eventos.Size = new System.Drawing.Size(266, 28);
            this.cb_eventos.TabIndex = 26;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(11, 340);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(44, 15);
            this.label6.TabIndex = 25;
            this.label6.Text = "Evento";
            // 
            // dgv_datos
            // 
            this.dgv_datos.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_datos.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgv_datos.CellBorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.RaisedHorizontal;
            this.dgv_datos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_datos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.sala,
            this.dia,
            this.fecha,
            this.horario,
            this.formato,
            this.stock});
            this.dgv_datos.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_datos.Location = new System.Drawing.Point(285, 38);
            this.dgv_datos.Name = "dgv_datos";
            this.dgv_datos.Size = new System.Drawing.Size(556, 351);
            this.dgv_datos.TabIndex = 27;
            // 
            // sala
            // 
            this.sala.FillWeight = 50F;
            this.sala.HeaderText = "Sala";
            this.sala.Name = "sala";
            this.sala.ReadOnly = true;
            this.sala.Width = 50;
            // 
            // dia
            // 
            this.dia.FillWeight = 60F;
            this.dia.HeaderText = "Dia";
            this.dia.Name = "dia";
            this.dia.ReadOnly = true;
            this.dia.Width = 60;
            // 
            // fecha
            // 
            this.fecha.FillWeight = 70F;
            this.fecha.HeaderText = "Fecha";
            this.fecha.Name = "fecha";
            this.fecha.ReadOnly = true;
            this.fecha.Width = 70;
            // 
            // horario
            // 
            this.horario.FillWeight = 110F;
            this.horario.HeaderText = "Horario";
            this.horario.Name = "horario";
            this.horario.ReadOnly = true;
            this.horario.Width = 110;
            // 
            // formato
            // 
            this.formato.HeaderText = "Formato";
            this.formato.Name = "formato";
            this.formato.ReadOnly = true;
            // 
            // stock
            // 
            this.stock.HeaderText = "Stock";
            this.stock.Name = "stock";
            this.stock.ReadOnly = true;
            // 
            // btn_nuevo
            // 
            this.btn_nuevo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_nuevo.FlatAppearance.BorderSize = 0;
            this.btn_nuevo.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_nuevo.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_nuevo.ForeColor = System.Drawing.Color.White;
            this.btn_nuevo.Location = new System.Drawing.Point(11, 395);
            this.btn_nuevo.Name = "btn_nuevo";
            this.btn_nuevo.Size = new System.Drawing.Size(106, 33);
            this.btn_nuevo.TabIndex = 28;
            this.btn_nuevo.Text = "Cargar";
            this.btn_nuevo.UseVisualStyleBackColor = false;
            this.btn_nuevo.Click += new System.EventHandler(this.cargar);
            // 
            // c_dom
            // 
            this.c_dom.AutoSize = true;
            this.c_dom.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.c_dom.ForeColor = System.Drawing.Color.White;
            this.c_dom.Location = new System.Drawing.Point(16, 124);
            this.c_dom.Name = "c_dom";
            this.c_dom.Size = new System.Drawing.Size(60, 22);
            this.c_dom.TabIndex = 29;
            this.c_dom.Text = "Dom";
            this.c_dom.UseVisualStyleBackColor = true;
            // 
            // c_lun
            // 
            this.c_lun.AutoSize = true;
            this.c_lun.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.c_lun.ForeColor = System.Drawing.Color.White;
            this.c_lun.Location = new System.Drawing.Point(78, 124);
            this.c_lun.Name = "c_lun";
            this.c_lun.Size = new System.Drawing.Size(51, 22);
            this.c_lun.TabIndex = 30;
            this.c_lun.Text = "Lun";
            this.c_lun.UseVisualStyleBackColor = true;
            // 
            // c_mar
            // 
            this.c_mar.AutoSize = true;
            this.c_mar.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.c_mar.ForeColor = System.Drawing.Color.White;
            this.c_mar.Location = new System.Drawing.Point(135, 124);
            this.c_mar.Name = "c_mar";
            this.c_mar.Size = new System.Drawing.Size(53, 22);
            this.c_mar.TabIndex = 31;
            this.c_mar.Text = "Mar";
            this.c_mar.UseVisualStyleBackColor = true;
            // 
            // c_mie
            // 
            this.c_mie.AutoSize = true;
            this.c_mie.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.c_mie.ForeColor = System.Drawing.Color.White;
            this.c_mie.Location = new System.Drawing.Point(194, 124);
            this.c_mie.Name = "c_mie";
            this.c_mie.Size = new System.Drawing.Size(51, 22);
            this.c_mie.TabIndex = 32;
            this.c_mie.Text = "Mie";
            this.c_mie.UseVisualStyleBackColor = true;
            // 
            // c_jue
            // 
            this.c_jue.AutoSize = true;
            this.c_jue.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.c_jue.ForeColor = System.Drawing.Color.White;
            this.c_jue.Location = new System.Drawing.Point(16, 152);
            this.c_jue.Name = "c_jue";
            this.c_jue.Size = new System.Drawing.Size(51, 22);
            this.c_jue.TabIndex = 33;
            this.c_jue.Text = "Jue";
            this.c_jue.UseVisualStyleBackColor = true;
            // 
            // c_vie
            // 
            this.c_vie.AutoSize = true;
            this.c_vie.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.c_vie.ForeColor = System.Drawing.Color.White;
            this.c_vie.Location = new System.Drawing.Point(78, 152);
            this.c_vie.Name = "c_vie";
            this.c_vie.Size = new System.Drawing.Size(47, 22);
            this.c_vie.TabIndex = 34;
            this.c_vie.Text = "Vie";
            this.c_vie.UseVisualStyleBackColor = true;
            // 
            // c_sab
            // 
            this.c_sab.AutoSize = true;
            this.c_sab.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.c_sab.ForeColor = System.Drawing.Color.White;
            this.c_sab.Location = new System.Drawing.Point(135, 152);
            this.c_sab.Name = "c_sab";
            this.c_sab.Size = new System.Drawing.Size(53, 22);
            this.c_sab.TabIndex = 35;
            this.c_sab.Text = "Sab";
            this.c_sab.UseVisualStyleBackColor = true;
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.ClientSize = new System.Drawing.Size(853, 443);
            this.Controls.Add(this.c_sab);
            this.Controls.Add(this.c_vie);
            this.Controls.Add(this.c_jue);
            this.Controls.Add(this.c_mie);
            this.Controls.Add(this.c_mar);
            this.Controls.Add(this.c_lun);
            this.Controls.Add(this.c_dom);
            this.Controls.Add(this.btn_nuevo);
            this.Controls.Add(this.dgv_datos);
            this.Controls.Add(this.cb_eventos);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.cb_audio);
            this.Controls.Add(this.cb_video);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.cb_sala);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.dtp_hora);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.title);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Main";
            this.Text = "Proyecciones";
            this.Load += new System.EventHandler(this.load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_datos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label title;
        private System.Windows.Forms.Label label_tituloOriginal;
        private System.Windows.Forms.DateTimePicker dtp_desde;
        private System.Windows.Forms.DateTimePicker dtp_hasta;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtp_hora;
        private System.Windows.Forms.ComboBox cb_sala;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cb_video;
        private System.Windows.Forms.ComboBox cb_audio;
        private System.Windows.Forms.ComboBox cb_eventos;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView dgv_datos;
        private System.Windows.Forms.Button btn_nuevo;
        private System.Windows.Forms.DataGridViewTextBoxColumn sala;
        private System.Windows.Forms.DataGridViewTextBoxColumn dia;
        private System.Windows.Forms.DataGridViewTextBoxColumn fecha;
        private System.Windows.Forms.DataGridViewTextBoxColumn horario;
        private System.Windows.Forms.DataGridViewTextBoxColumn formato;
        private System.Windows.Forms.DataGridViewTextBoxColumn stock;
        private System.Windows.Forms.CheckBox c_dom;
        private System.Windows.Forms.CheckBox c_lun;
        private System.Windows.Forms.CheckBox c_mar;
        private System.Windows.Forms.CheckBox c_mie;
        private System.Windows.Forms.CheckBox c_jue;
        private System.Windows.Forms.CheckBox c_vie;
        private System.Windows.Forms.CheckBox c_sab;
    }
}
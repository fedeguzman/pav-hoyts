namespace Hoyts.Forms.Reportes
{
    partial class WinFormReportePeliculaPorSala
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
            this.components = new System.ComponentModel.Container();
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource3 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.DataSet3 = new Hoyts.Forms.Reportes.DataSet3();
            this.PeliculaPorSalaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.PeliculaPorSalaTableAdapter = new Hoyts.Forms.Reportes.DataSet3TableAdapters.PeliculaPorSalaTableAdapter();
            this.title = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cb_sala = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dtp_inicio = new System.Windows.Forms.DateTimePicker();
            this.dtp_fin = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.btn_cargar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.DataSet3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.PeliculaPorSalaBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // reportViewer1
            // 
            reportDataSource3.Name = "TablaFuncionesPelicula";
            reportDataSource3.Value = this.PeliculaPorSalaBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource3);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "Hoyts.Forms.Reportes.ReportePeliculaPorSala.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(17, 87);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(1026, 462);
            this.reportViewer1.TabIndex = 10;
            // 
            // DataSet3
            // 
            this.DataSet3.DataSetName = "DataSet3";
            this.DataSet3.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // PeliculaPorSalaBindingSource
            // 
            this.PeliculaPorSalaBindingSource.DataMember = "PeliculaPorSala";
            this.PeliculaPorSalaBindingSource.DataSource = this.DataSet3;
            // 
            // PeliculaPorSalaTableAdapter
            // 
            this.PeliculaPorSalaTableAdapter.ClearBeforeFill = true;
            // 
            // title
            // 
            this.title.AutoSize = true;
            this.title.Font = new System.Drawing.Font("Google Sans", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.title.ForeColor = System.Drawing.Color.White;
            this.title.Location = new System.Drawing.Point(12, 9);
            this.title.Name = "title";
            this.title.Size = new System.Drawing.Size(302, 26);
            this.title.TabIndex = 11;
            this.title.Text = "Reportes de pelicula por sala";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(17, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(45, 20);
            this.label1.TabIndex = 12;
            this.label1.Text = "Sala:";
            // 
            // cb_sala
            // 
            this.cb_sala.FormattingEnabled = true;
            this.cb_sala.Location = new System.Drawing.Point(69, 48);
            this.cb_sala.Name = "cb_sala";
            this.cb_sala.Size = new System.Drawing.Size(164, 21);
            this.cb_sala.TabIndex = 13;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(249, 48);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 20);
            this.label2.TabIndex = 14;
            this.label2.Text = "Desde:";
            // 
            // dtp_inicio
            // 
            this.dtp_inicio.CustomFormat = "dd/MM/yyyy";
            this.dtp_inicio.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_inicio.Location = new System.Drawing.Point(316, 48);
            this.dtp_inicio.Name = "dtp_inicio";
            this.dtp_inicio.Size = new System.Drawing.Size(103, 20);
            this.dtp_inicio.TabIndex = 15;
            // 
            // dtp_fin
            // 
            this.dtp_fin.CustomFormat = "dd/MM/yyyy";
            this.dtp_fin.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_fin.Location = new System.Drawing.Point(489, 49);
            this.dtp_fin.Name = "dtp_fin";
            this.dtp_fin.Size = new System.Drawing.Size(103, 20);
            this.dtp_fin.TabIndex = 17;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(428, 49);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 20);
            this.label3.TabIndex = 16;
            this.label3.Text = "Hasta:";
            // 
            // btn_cargar
            // 
            this.btn_cargar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_cargar.FlatAppearance.BorderSize = 0;
            this.btn_cargar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_cargar.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_cargar.ForeColor = System.Drawing.Color.White;
            this.btn_cargar.Location = new System.Drawing.Point(608, 42);
            this.btn_cargar.Name = "btn_cargar";
            this.btn_cargar.Size = new System.Drawing.Size(106, 33);
            this.btn_cargar.TabIndex = 29;
            this.btn_cargar.Text = "Generar";
            this.btn_cargar.UseVisualStyleBackColor = false;
            this.btn_cargar.Click += new System.EventHandler(this.btn_cargar_Click);
            // 
            // WinFormReportePeliculaPorSala
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(45)))), ((int)(((byte)(45)))));
            this.ClientSize = new System.Drawing.Size(1055, 561);
            this.Controls.Add(this.btn_cargar);
            this.Controls.Add(this.dtp_fin);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dtp_inicio);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cb_sala);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.title);
            this.Controls.Add(this.reportViewer1);
            this.Name = "WinFormReportePeliculaPorSala";
            this.Text = "WinFormReportePeliculaPorSala";
            this.Load += new System.EventHandler(this.WinFormReportePeliculaPorSala_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DataSet3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.PeliculaPorSalaBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource PeliculaPorSalaBindingSource;
        private DataSet3 DataSet3;
        private DataSet3TableAdapters.PeliculaPorSalaTableAdapter PeliculaPorSalaTableAdapter;
        private System.Windows.Forms.Label title;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cb_sala;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dtp_inicio;
        private System.Windows.Forms.DateTimePicker dtp_fin;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btn_cargar;
    }
}
namespace Hoyts.Forms.Reportes.ReporteHistoricoPeliculasMasVendidas
{
    partial class WinFormsReporte
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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(WinFormsReporte));
            this.btn_cargar = new System.Windows.Forms.Button();
            this.dtp_fin = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.dtp_inicio = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.title = new System.Windows.Forms.Label();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.ConjuntoDatos = new Hoyts.Forms.Reportes.ReporteHistoricoPeliculasMasVendidas.ConjuntoDatos();
            this.PeliculaBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.PeliculaTableAdapter = new Hoyts.Forms.Reportes.ReporteHistoricoPeliculasMasVendidas.ConjuntoDatosTableAdapters.PeliculaTableAdapter();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.ConjuntoDatos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.PeliculaBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_cargar
            // 
            this.btn_cargar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_cargar.FlatAppearance.BorderSize = 0;
            this.btn_cargar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_cargar.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_cargar.ForeColor = System.Drawing.Color.White;
            this.btn_cargar.Location = new System.Drawing.Point(371, 34);
            this.btn_cargar.Name = "btn_cargar";
            this.btn_cargar.Size = new System.Drawing.Size(106, 33);
            this.btn_cargar.TabIndex = 35;
            this.btn_cargar.Text = "Generar";
            this.btn_cargar.UseVisualStyleBackColor = false;
            this.btn_cargar.Click += new System.EventHandler(this.btn_cargar_Click);
            // 
            // dtp_fin
            // 
            this.dtp_fin.CustomFormat = "dd/MM/yyyy";
            this.dtp_fin.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_fin.Location = new System.Drawing.Point(254, 40);
            this.dtp_fin.Name = "dtp_fin";
            this.dtp_fin.Size = new System.Drawing.Size(103, 20);
            this.dtp_fin.TabIndex = 34;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(193, 39);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(56, 20);
            this.label3.TabIndex = 33;
            this.label3.Text = "Hasta:";
            // 
            // dtp_inicio
            // 
            this.dtp_inicio.CustomFormat = "dd/MM/yyyy";
            this.dtp_inicio.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_inicio.Location = new System.Drawing.Point(81, 39);
            this.dtp_inicio.Name = "dtp_inicio";
            this.dtp_inicio.Size = new System.Drawing.Size(103, 20);
            this.dtp_inicio.TabIndex = 32;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(14, 38);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 20);
            this.label2.TabIndex = 31;
            this.label2.Text = "Desde:";
            // 
            // title
            // 
            this.title.AutoSize = true;
            this.title.Font = new System.Drawing.Font("Google Sans", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.title.ForeColor = System.Drawing.Color.White;
            this.title.Location = new System.Drawing.Point(12, 5);
            this.title.Name = "title";
            this.title.Size = new System.Drawing.Size(458, 26);
            this.title.TabIndex = 30;
            this.title.Text = "Reporte historico de peliculas mas vendidas";
            // 
            // reportViewer1
            // 
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.PeliculaBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "Hoyts.Forms.Reportes.ReporteHistoricoPeliculasMasVendidas.ReportePeliculaPorSala." +
    "rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(17, 71);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(672, 367);
            this.reportViewer1.TabIndex = 36;
            // 
            // ConjuntoDatos
            // 
            this.ConjuntoDatos.DataSetName = "ConjuntoDatos";
            this.ConjuntoDatos.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // PeliculaBindingSource
            // 
            this.PeliculaBindingSource.DataMember = "Pelicula";
            this.PeliculaBindingSource.DataSource = this.ConjuntoDatos;
            // 
            // PeliculaTableAdapter
            // 
            this.PeliculaTableAdapter.ClearBeforeFill = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(18, 445);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(388, 13);
            this.label1.TabIndex = 37;
            this.label1.Text = "Por defecto se muestra el total de peliculas mas vendidas desde el 2000 al 2020.";
            // 
            // WinFormsReporte
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(45)))), ((int)(((byte)(45)))));
            this.ClientSize = new System.Drawing.Size(701, 502);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.reportViewer1);
            this.Controls.Add(this.btn_cargar);
            this.Controls.Add(this.dtp_fin);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dtp_inicio);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.title);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "WinFormsReporte";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Reporte historico de peliculas mas vendidas";
            this.Load += new System.EventHandler(this.WinFormsReporte_Load);
            ((System.ComponentModel.ISupportInitialize)(this.ConjuntoDatos)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.PeliculaBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_cargar;
        private System.Windows.Forms.DateTimePicker dtp_fin;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtp_inicio;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label title;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource PeliculaBindingSource;
        private ConjuntoDatos ConjuntoDatos;
        private ConjuntoDatosTableAdapters.PeliculaTableAdapter PeliculaTableAdapter;
        private System.Windows.Forms.Label label1;
    }
}
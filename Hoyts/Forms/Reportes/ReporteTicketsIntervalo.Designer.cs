namespace Hoyts.Forms.Reportes
{
    partial class ReporteTicketsIntervalo
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
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource2 = new Microsoft.Reporting.WinForms.ReportDataSource();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ReporteTicketsIntervalo));
            this.TicketsIntervaloBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.DataSet2 = new Hoyts.Forms.Reportes.DataSet2();
            this.title = new System.Windows.Forms.Label();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.TicketsIntervaloTableAdapter = new Hoyts.Forms.Reportes.DataSet2TableAdapters.TicketsIntervaloTableAdapter();
            this.panel1 = new System.Windows.Forms.Panel();
            this.dtp_hasta = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.label_tituloOriginal = new System.Windows.Forms.Label();
            this.dtp_desde = new System.Windows.Forms.DateTimePicker();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.TicketsIntervaloBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSet2)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // TicketsIntervaloBindingSource
            // 
            this.TicketsIntervaloBindingSource.DataMember = "TicketsIntervalo";
            this.TicketsIntervaloBindingSource.DataSource = this.DataSet2;
            // 
            // DataSet2
            // 
            this.DataSet2.DataSetName = "DataSet2";
            this.DataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // title
            // 
            this.title.AutoSize = true;
            this.title.Font = new System.Drawing.Font("Google Sans", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.title.ForeColor = System.Drawing.Color.White;
            this.title.Location = new System.Drawing.Point(12, 10);
            this.title.Name = "title";
            this.title.Size = new System.Drawing.Size(291, 26);
            this.title.TabIndex = 9;
            this.title.Text = "Reporte de venta de tickets";
            // 
            // reportViewer1
            // 
            reportDataSource2.Name = "TicketsIntervalo";
            reportDataSource2.Value = this.TicketsIntervaloBindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource2);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "Hoyts.Forms.Reportes.TicketsIntervaloReporte.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(17, 103);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(771, 419);
            this.reportViewer1.TabIndex = 10;
            // 
            // TicketsIntervaloTableAdapter
            // 
            this.TicketsIntervaloTableAdapter.ClearBeforeFill = true;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(75)))), ((int)(((byte)(75)))), ((int)(((byte)(75)))));
            this.panel1.Controls.Add(this.dtp_hasta);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label_tituloOriginal);
            this.panel1.Controls.Add(this.dtp_desde);
            this.panel1.Location = new System.Drawing.Point(17, 39);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(267, 58);
            this.panel1.TabIndex = 15;
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
            this.dtp_hasta.ValueChanged += new System.EventHandler(this.recargar);
            this.dtp_hasta.MouseCaptureChanged += new System.EventHandler(this.recargar);
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
            this.dtp_desde.ValueChanged += new System.EventHandler(this.updateHasta);
            this.dtp_desde.MouseCaptureChanged += new System.EventHandler(this.updateHasta);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(593, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(195, 31);
            this.pictureBox1.TabIndex = 16;
            this.pictureBox1.TabStop = false;
            // 
            // ReporteTicketsIntervalo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(45)))), ((int)(((byte)(45)))), ((int)(((byte)(45)))));
            this.ClientSize = new System.Drawing.Size(800, 534);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.reportViewer1);
            this.Controls.Add(this.title);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "ReporteTicketsIntervalo";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Reporte de venta de tickets";
            this.Load += new System.EventHandler(this.ReporteTicketsIntervalo_Load);
            ((System.ComponentModel.ISupportInitialize)(this.TicketsIntervaloBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.DataSet2)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label title;
        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource TicketsIntervaloBindingSource;
        private DataSet2 DataSet2;
        private DataSet2TableAdapters.TicketsIntervaloTableAdapter TicketsIntervaloTableAdapter;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DateTimePicker dtp_hasta;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label_tituloOriginal;
        private System.Windows.Forms.DateTimePicker dtp_desde;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}
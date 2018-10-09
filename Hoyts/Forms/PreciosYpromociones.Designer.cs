namespace Hoyts.Forms
{
    partial class PreciosYpromociones
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
            this.Fechaini = new System.Windows.Forms.DateTimePicker();
            this.Fechafin = new System.Windows.Forms.DateTimePicker();
            this.DescIni = new System.Windows.Forms.Label();
            this.DescFin = new System.Windows.Forms.Label();
            this.comboBox1_PreciosPromos = new System.Windows.Forms.ComboBox();
            this.label_NombrePromo = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // Fechaini
            // 
            this.Fechaini.Location = new System.Drawing.Point(171, 126);
            this.Fechaini.Name = "Fechaini";
            this.Fechaini.Size = new System.Drawing.Size(200, 20);
            this.Fechaini.TabIndex = 0;
            this.Fechaini.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // Fechafin
            // 
            this.Fechafin.Location = new System.Drawing.Point(171, 187);
            this.Fechafin.Name = "Fechafin";
            this.Fechafin.Size = new System.Drawing.Size(200, 20);
            this.Fechafin.TabIndex = 1;
            // 
            // DescIni
            // 
            this.DescIni.AutoSize = true;
            this.DescIni.ForeColor = System.Drawing.Color.White;
            this.DescIni.Location = new System.Drawing.Point(12, 133);
            this.DescIni.Name = "DescIni";
            this.DescIni.Size = new System.Drawing.Size(137, 13);
            this.DescIni.TabIndex = 2;
            this.DescIni.Text = "Fecha de inicio de vigencia";
            this.DescIni.Click += new System.EventHandler(this.label1_Click);
            // 
            // DescFin
            // 
            this.DescFin.AutoSize = true;
            this.DescFin.ForeColor = System.Drawing.Color.White;
            this.DescFin.Location = new System.Drawing.Point(12, 194);
            this.DescFin.Name = "DescFin";
            this.DescFin.Size = new System.Drawing.Size(124, 13);
            this.DescFin.TabIndex = 3;
            this.DescFin.Text = "Fecha de fin de vigencia";
            this.DescFin.Click += new System.EventHandler(this.label2_Click);
            // 
            // comboBox1_PreciosPromos
            // 
            this.comboBox1_PreciosPromos.FormattingEnabled = true;
            this.comboBox1_PreciosPromos.Items.AddRange(new object[] {
            "General 2D",
            "Menores 2D",
            "General 3D",
            "Menores 3D",
            "Miercoles 2D",
            "Miercoles 3D",
            "2x1 2D",
            "2x1 3D"});
            this.comboBox1_PreciosPromos.Location = new System.Drawing.Point(171, 60);
            this.comboBox1_PreciosPromos.Name = "comboBox1_PreciosPromos";
            this.comboBox1_PreciosPromos.Size = new System.Drawing.Size(121, 21);
            this.comboBox1_PreciosPromos.TabIndex = 4;
            // 
            // label_NombrePromo
            // 
            this.label_NombrePromo.AutoSize = true;
            this.label_NombrePromo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_NombrePromo.ForeColor = System.Drawing.Color.White;
            this.label_NombrePromo.Location = new System.Drawing.Point(12, 60);
            this.label_NombrePromo.Name = "label_NombrePromo";
            this.label_NombrePromo.Size = new System.Drawing.Size(57, 16);
            this.label_NombrePromo.TabIndex = 5;
            this.label_NombrePromo.Text = "Nombre";
            // 
            // PreciosYpromociones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label_NombrePromo);
            this.Controls.Add(this.comboBox1_PreciosPromos);
            this.Controls.Add(this.DescFin);
            this.Controls.Add(this.DescIni);
            this.Controls.Add(this.Fechafin);
            this.Controls.Add(this.Fechaini);
            this.Name = "PreciosYpromociones";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DateTimePicker Fechaini;
        private System.Windows.Forms.DateTimePicker Fechafin;
        private System.Windows.Forms.Label DescIni;
        private System.Windows.Forms.Label DescFin;
        private System.Windows.Forms.ComboBox comboBox1_PreciosPromos;
        private System.Windows.Forms.Label label_NombrePromo;
    }
}
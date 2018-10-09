namespace Hoyts.Forms
{
    partial class formularioPrecios
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
            this.DescIni = new System.Windows.Forms.Label();
            this.DescFin = new System.Windows.Forms.Label();
            this.Fechaini = new System.Windows.Forms.DateTimePicker();
            this.Fechafin = new System.Windows.Forms.DateTimePicker();
            this.textBox_Precio = new System.Windows.Forms.TextBox();
            this.label_Precio = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.comboBox_Tipo = new System.Windows.Forms.ComboBox();
            this.label_Tipo = new System.Windows.Forms.Label();
            this.btn_Guardar = new System.Windows.Forms.Button();
            this.textBox_Nombre = new System.Windows.Forms.TextBox();
            this.label_Nombre = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // DescIni
            // 
            this.DescIni.AutoSize = true;
            this.DescIni.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.DescIni.ForeColor = System.Drawing.Color.White;
            this.DescIni.Location = new System.Drawing.Point(252, 118);
            this.DescIni.Name = "DescIni";
            this.DescIni.Size = new System.Drawing.Size(172, 16);
            this.DescIni.TabIndex = 3;
            this.DescIni.Text = "Fecha de inicio de vigencia";
            // 
            // DescFin
            // 
            this.DescFin.AutoSize = true;
            this.DescFin.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.DescFin.ForeColor = System.Drawing.Color.White;
            this.DescFin.Location = new System.Drawing.Point(252, 169);
            this.DescFin.Name = "DescFin";
            this.DescFin.Size = new System.Drawing.Size(154, 16);
            this.DescFin.TabIndex = 4;
            this.DescFin.Text = "Fecha de fin de vigencia";
            // 
            // Fechaini
            // 
            this.Fechaini.Location = new System.Drawing.Point(449, 118);
            this.Fechaini.Name = "Fechaini";
            this.Fechaini.Size = new System.Drawing.Size(200, 20);
            this.Fechaini.TabIndex = 5;
            // 
            // Fechafin
            // 
            this.Fechafin.Location = new System.Drawing.Point(449, 165);
            this.Fechafin.Name = "Fechafin";
            this.Fechafin.Size = new System.Drawing.Size(200, 20);
            this.Fechafin.TabIndex = 6;
            // 
            // textBox_Precio
            // 
            this.textBox_Precio.Location = new System.Drawing.Point(97, 114);
            this.textBox_Precio.Name = "textBox_Precio";
            this.textBox_Precio.Size = new System.Drawing.Size(100, 20);
            this.textBox_Precio.TabIndex = 7;
            // 
            // label_Precio
            // 
            this.label_Precio.AutoSize = true;
            this.label_Precio.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Precio.ForeColor = System.Drawing.Color.White;
            this.label_Precio.Location = new System.Drawing.Point(34, 118);
            this.label_Precio.Name = "label_Precio";
            this.label_Precio.Size = new System.Drawing.Size(47, 16);
            this.label_Precio.TabIndex = 8;
            this.label_Precio.Text = "Precio";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold);
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(22, 21);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(473, 33);
            this.label2.TabIndex = 9;
            this.label2.Text = "Registrar Precios y Promociones";
            // 
            // comboBox_Tipo
            // 
            this.comboBox_Tipo.FormattingEnabled = true;
            this.comboBox_Tipo.Items.AddRange(new object[] {
            "2D",
            "3D"});
            this.comboBox_Tipo.Location = new System.Drawing.Point(97, 169);
            this.comboBox_Tipo.Name = "comboBox_Tipo";
            this.comboBox_Tipo.Size = new System.Drawing.Size(100, 21);
            this.comboBox_Tipo.TabIndex = 10;
            // 
            // label_Tipo
            // 
            this.label_Tipo.AutoSize = true;
            this.label_Tipo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Tipo.ForeColor = System.Drawing.Color.White;
            this.label_Tipo.Location = new System.Drawing.Point(34, 174);
            this.label_Tipo.Name = "label_Tipo";
            this.label_Tipo.Size = new System.Drawing.Size(36, 16);
            this.label_Tipo.TabIndex = 11;
            this.label_Tipo.Text = "Tipo";
            // 
            // btn_Guardar
            // 
            this.btn_Guardar.Location = new System.Drawing.Point(97, 269);
            this.btn_Guardar.Name = "btn_Guardar";
            this.btn_Guardar.Size = new System.Drawing.Size(75, 23);
            this.btn_Guardar.TabIndex = 12;
            this.btn_Guardar.Text = "Guardar";
            this.btn_Guardar.UseVisualStyleBackColor = true;
            // 
            // textBox_Nombre
            // 
            this.textBox_Nombre.Location = new System.Drawing.Point(97, 75);
            this.textBox_Nombre.Name = "textBox_Nombre";
            this.textBox_Nombre.Size = new System.Drawing.Size(100, 20);
            this.textBox_Nombre.TabIndex = 13;
            // 
            // label_Nombre
            // 
            this.label_Nombre.AutoSize = true;
            this.label_Nombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_Nombre.ForeColor = System.Drawing.Color.White;
            this.label_Nombre.Location = new System.Drawing.Point(34, 75);
            this.label_Nombre.Name = "label_Nombre";
            this.label_Nombre.Size = new System.Drawing.Size(57, 16);
            this.label_Nombre.TabIndex = 14;
            this.label_Nombre.Text = "Nombre";
            // 
            // formularioPrecios
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.label_Nombre);
            this.Controls.Add(this.textBox_Nombre);
            this.Controls.Add(this.btn_Guardar);
            this.Controls.Add(this.label_Tipo);
            this.Controls.Add(this.comboBox_Tipo);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label_Precio);
            this.Controls.Add(this.textBox_Precio);
            this.Controls.Add(this.Fechafin);
            this.Controls.Add(this.Fechaini);
            this.Controls.Add(this.DescFin);
            this.Controls.Add(this.DescIni);
            this.Name = "formularioPrecios";
            this.Text = "formularioPrecios";
            this.Load += new System.EventHandler(this.formularioPrecios_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label DescIni;
        private System.Windows.Forms.Label DescFin;
        private System.Windows.Forms.DateTimePicker Fechaini;
        private System.Windows.Forms.DateTimePicker Fechafin;
        private System.Windows.Forms.TextBox textBox_Precio;
        private System.Windows.Forms.Label label_Precio;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox comboBox_Tipo;
        private System.Windows.Forms.Label label_Tipo;
        private System.Windows.Forms.Button btn_Guardar;
        private System.Windows.Forms.TextBox textBox_Nombre;
        private System.Windows.Forms.Label label_Nombre;
    }
}
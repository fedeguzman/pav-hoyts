namespace Hoyts.Forms.Compra
{
    partial class Compra
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Compra));
            this.txt_movie = new System.Windows.Forms.Label();
            this.dgv_conceptos = new System.Windows.Forms.DataGridView();
            this.cb_precios = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.txt_cantidad = new System.Windows.Forms.Label();
            this.button2 = new System.Windows.Forms.Button();
            this.txt_total = new System.Windows.Forms.Label();
            this.txt_fecha = new System.Windows.Forms.Label();
            this.txt_formato = new System.Windows.Forms.Label();
            this.concepto = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.precio = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_conceptos)).BeginInit();
            this.SuspendLayout();
            // 
            // txt_movie
            // 
            this.txt_movie.Font = new System.Drawing.Font("Google Sans", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_movie.ForeColor = System.Drawing.Color.White;
            this.txt_movie.Location = new System.Drawing.Point(12, 12);
            this.txt_movie.Name = "txt_movie";
            this.txt_movie.Size = new System.Drawing.Size(403, 26);
            this.txt_movie.TabIndex = 0;
            this.txt_movie.Text = "[NombrePeliculaEspañol]";
            // 
            // dgv_conceptos
            // 
            this.dgv_conceptos.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.dgv_conceptos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_conceptos.ColumnHeadersVisible = false;
            this.dgv_conceptos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.concepto,
            this.precio});
            this.dgv_conceptos.EnableHeadersVisualStyles = false;
            this.dgv_conceptos.Location = new System.Drawing.Point(12, 168);
            this.dgv_conceptos.Name = "dgv_conceptos";
            this.dgv_conceptos.RowHeadersVisible = false;
            this.dgv_conceptos.Size = new System.Drawing.Size(403, 173);
            this.dgv_conceptos.TabIndex = 2;
            // 
            // cb_precios
            // 
            this.cb_precios.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.cb_precios.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cb_precios.Font = new System.Drawing.Font("Google Sans", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cb_precios.FormattingEnabled = true;
            this.cb_precios.Location = new System.Drawing.Point(15, 95);
            this.cb_precios.Name = "cb_precios";
            this.cb_precios.Size = new System.Drawing.Size(400, 26);
            this.cb_precios.TabIndex = 3;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.button1.FlatAppearance.BorderSize = 0;
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.Font = new System.Drawing.Font("Google Sans", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.ForeColor = System.Drawing.SystemColors.Window;
            this.button1.Location = new System.Drawing.Point(326, 127);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(89, 35);
            this.button1.TabIndex = 4;
            this.button1.Text = "Cargar";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.cargar);
            // 
            // txt_cantidad
            // 
            this.txt_cantidad.AutoSize = true;
            this.txt_cantidad.ForeColor = System.Drawing.Color.White;
            this.txt_cantidad.Location = new System.Drawing.Point(12, 348);
            this.txt_cantidad.Name = "txt_cantidad";
            this.txt_cantidad.Size = new System.Drawing.Size(43, 13);
            this.txt_cantidad.TabIndex = 5;
            this.txt_cantidad.Text = "Total: 0";
            // 
            // button2
            // 
            this.button2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.button2.FlatAppearance.BorderSize = 0;
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button2.Font = new System.Drawing.Font("Google Sans", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.ForeColor = System.Drawing.SystemColors.Window;
            this.button2.Location = new System.Drawing.Point(326, 387);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(89, 35);
            this.button2.TabIndex = 6;
            this.button2.Text = "Cobrar";
            this.button2.UseVisualStyleBackColor = false;
            this.button2.Click += new System.EventHandler(this.cobrar);
            // 
            // txt_total
            // 
            this.txt_total.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.txt_total.Font = new System.Drawing.Font("Google Sans", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_total.ForeColor = System.Drawing.Color.White;
            this.txt_total.Location = new System.Drawing.Point(327, 344);
            this.txt_total.Name = "txt_total";
            this.txt_total.Padding = new System.Windows.Forms.Padding(10);
            this.txt_total.Size = new System.Drawing.Size(88, 40);
            this.txt_total.TabIndex = 7;
            this.txt_total.Text = "$0.00";
            this.txt_total.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txt_fecha
            // 
            this.txt_fecha.AutoSize = true;
            this.txt_fecha.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_fecha.ForeColor = System.Drawing.Color.White;
            this.txt_fecha.Location = new System.Drawing.Point(12, 38);
            this.txt_fecha.Name = "txt_fecha";
            this.txt_fecha.Size = new System.Drawing.Size(119, 20);
            this.txt_fecha.TabIndex = 8;
            this.txt_fecha.Text = "[FechaFuncion]";
            // 
            // txt_formato
            // 
            this.txt_formato.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_formato.ForeColor = System.Drawing.Color.White;
            this.txt_formato.Location = new System.Drawing.Point(12, 63);
            this.txt_formato.Name = "txt_formato";
            this.txt_formato.Size = new System.Drawing.Size(255, 20);
            this.txt_formato.TabIndex = 10;
            this.txt_formato.Text = "[Formato]";
            // 
            // concepto
            // 
            this.concepto.FillWeight = 300F;
            this.concepto.HeaderText = "concepto";
            this.concepto.Name = "concepto";
            this.concepto.ReadOnly = true;
            this.concepto.Width = 300;
            // 
            // precio
            // 
            this.precio.HeaderText = "precio";
            this.precio.Name = "precio";
            this.precio.ReadOnly = true;
            // 
            // Compra
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.ClientSize = new System.Drawing.Size(423, 431);
            this.Controls.Add(this.txt_formato);
            this.Controls.Add(this.txt_fecha);
            this.Controls.Add(this.txt_total);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.txt_cantidad);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.cb_precios);
            this.Controls.Add(this.dgv_conceptos);
            this.Controls.Add(this.txt_movie);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Compra";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Compra";
            this.Load += new System.EventHandler(this.load);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_conceptos)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label txt_movie;
        private System.Windows.Forms.DataGridView dgv_conceptos;
        private System.Windows.Forms.ComboBox cb_precios;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label txt_cantidad;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Label txt_total;
        private System.Windows.Forms.Label txt_fecha;
        private System.Windows.Forms.Label txt_formato;
        private System.Windows.Forms.DataGridViewTextBoxColumn concepto;
        private System.Windows.Forms.DataGridViewTextBoxColumn precio;
    }
}
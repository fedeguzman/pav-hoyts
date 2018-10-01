namespace Hoyts.Forms
{
    partial class Salas_de_Proyección
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Salas_de_Proyección));
            this.label1 = new System.Windows.Forms.Label();
            this.label_tituloOriginal = new System.Windows.Forms.Label();
            this.txt_numsala = new System.Windows.Forms.MaskedTextBox();
            this.txt_capacidad = new System.Windows.Forms.MaskedTextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dgv_data = new System.Windows.Forms.DataGridView();
            this.numero_sala = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.capacidad = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btn_saveAndNew = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.lbl_capacidad_total = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_data)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Google Sans", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(4, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(292, 36);
            this.label1.TabIndex = 8;
            this.label1.Text = "Salas de Proyección";
            // 
            // label_tituloOriginal
            // 
            this.label_tituloOriginal.AutoSize = true;
            this.label_tituloOriginal.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tituloOriginal.ForeColor = System.Drawing.Color.White;
            this.label_tituloOriginal.Location = new System.Drawing.Point(7, 71);
            this.label_tituloOriginal.Name = "label_tituloOriginal";
            this.label_tituloOriginal.Size = new System.Drawing.Size(113, 18);
            this.label_tituloOriginal.TabIndex = 11;
            this.label_tituloOriginal.Text = "Numero de sala";
            // 
            // txt_numsala
            // 
            this.txt_numsala.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_numsala.Location = new System.Drawing.Point(10, 96);
            this.txt_numsala.Mask = "999";
            this.txt_numsala.Name = "txt_numsala";
            this.txt_numsala.Size = new System.Drawing.Size(252, 24);
            this.txt_numsala.TabIndex = 1;
            // 
            // txt_capacidad
            // 
            this.txt_capacidad.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_capacidad.Location = new System.Drawing.Point(10, 151);
            this.txt_capacidad.Mask = "999";
            this.txt_capacidad.Name = "txt_capacidad";
            this.txt_capacidad.Size = new System.Drawing.Size(252, 24);
            this.txt_capacidad.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(7, 126);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 18);
            this.label2.TabIndex = 13;
            this.label2.Text = "Capacidad";
            // 
            // dgv_data
            // 
            this.dgv_data.AllowUserToAddRows = false;
            this.dgv_data.AllowUserToDeleteRows = false;
            this.dgv_data.AllowUserToResizeColumns = false;
            this.dgv_data.AllowUserToResizeRows = false;
            this.dgv_data.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(55)))), ((int)(((byte)(55)))));
            this.dgv_data.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_data.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.numero_sala,
            this.capacidad});
            this.dgv_data.Location = new System.Drawing.Point(268, 71);
            this.dgv_data.MultiSelect = false;
            this.dgv_data.Name = "dgv_data";
            this.dgv_data.ReadOnly = true;
            this.dgv_data.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dgv_data.Size = new System.Drawing.Size(244, 133);
            this.dgv_data.TabIndex = 4;
            // 
            // numero_sala
            // 
            this.numero_sala.FillWeight = 40F;
            this.numero_sala.HeaderText = "#";
            this.numero_sala.Name = "numero_sala";
            this.numero_sala.ReadOnly = true;
            this.numero_sala.Width = 40;
            // 
            // capacidad
            // 
            this.capacidad.HeaderText = "Capacidad";
            this.capacidad.Name = "capacidad";
            this.capacidad.ReadOnly = true;
            // 
            // btn_saveAndNew
            // 
            this.btn_saveAndNew.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_saveAndNew.FlatAppearance.BorderSize = 0;
            this.btn_saveAndNew.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_saveAndNew.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_saveAndNew.ForeColor = System.Drawing.Color.White;
            this.btn_saveAndNew.Location = new System.Drawing.Point(11, 186);
            this.btn_saveAndNew.Name = "btn_saveAndNew";
            this.btn_saveAndNew.Size = new System.Drawing.Size(147, 33);
            this.btn_saveAndNew.TabIndex = 3;
            this.btn_saveAndNew.Text = "Guardar";
            this.btn_saveAndNew.UseVisualStyleBackColor = false;
            this.btn_saveAndNew.Click += new System.EventHandler(this.btn_saveAndNew_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.ForeColor = System.Drawing.SystemColors.Control;
            this.label3.Location = new System.Drawing.Point(7, 224);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(383, 39);
            this.label3.TabIndex = 14;
            this.label3.Text = "Ayuda:\r\nPara modificar una sala, escriba el numero de la sala y modifique su capa" +
    "cidad. \r\nPara eliminarla, modifique su capacidad por 0.";
            // 
            // lbl_capacidad_total
            // 
            this.lbl_capacidad_total.AutoSize = true;
            this.lbl_capacidad_total.ForeColor = System.Drawing.SystemColors.ButtonFace;
            this.lbl_capacidad_total.Location = new System.Drawing.Point(268, 211);
            this.lbl_capacidad_total.Name = "lbl_capacidad_total";
            this.lbl_capacidad_total.Size = new System.Drawing.Size(93, 13);
            this.lbl_capacidad_total.TabIndex = 15;
            this.lbl_capacidad_total.Text = "Capacidad total: 0";
            // 
            // Salas_de_Proyección
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.ClientSize = new System.Drawing.Size(524, 272);
            this.Controls.Add(this.lbl_capacidad_total);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btn_saveAndNew);
            this.Controls.Add(this.dgv_data);
            this.Controls.Add(this.txt_capacidad);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txt_numsala);
            this.Controls.Add(this.label_tituloOriginal);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Salas_de_Proyección";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Salas de Proyeccion";
            this.Load += new System.EventHandler(this.load);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_data)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label_tituloOriginal;
        private System.Windows.Forms.MaskedTextBox txt_numsala;
        private System.Windows.Forms.MaskedTextBox txt_capacidad;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgv_data;
        private System.Windows.Forms.Button btn_saveAndNew;
        private System.Windows.Forms.DataGridViewTextBoxColumn numero_sala;
        private System.Windows.Forms.DataGridViewTextBoxColumn capacidad;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lbl_capacidad_total;
    }
}
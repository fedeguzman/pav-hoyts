namespace Hoyts.Forms
{
    partial class Genero
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Genero));
            this.btn_new = new System.Windows.Forms.Button();
            this.btn_eliminar = new System.Windows.Forms.Button();
            this.btn_saveAndNew = new System.Windows.Forms.Button();
            this.dgv_data = new System.Windows.Forms.DataGridView();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.genre = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txt_data = new System.Windows.Forms.MaskedTextBox();
            this.label_tituloOriginal = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_data)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_new
            // 
            this.btn_new.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_new.FlatAppearance.BorderSize = 0;
            this.btn_new.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_new.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_new.ForeColor = System.Drawing.Color.White;
            this.btn_new.Location = new System.Drawing.Point(18, 122);
            this.btn_new.Name = "btn_new";
            this.btn_new.Size = new System.Drawing.Size(87, 33);
            this.btn_new.TabIndex = 25;
            this.btn_new.Text = "Nuevo";
            this.btn_new.UseVisualStyleBackColor = false;
            this.btn_new.Visible = false;
            this.btn_new.Click += new System.EventHandler(this.btn_new_Click);
            // 
            // btn_eliminar
            // 
            this.btn_eliminar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_eliminar.FlatAppearance.BorderSize = 0;
            this.btn_eliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_eliminar.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_eliminar.ForeColor = System.Drawing.Color.White;
            this.btn_eliminar.Location = new System.Drawing.Point(110, 122);
            this.btn_eliminar.Name = "btn_eliminar";
            this.btn_eliminar.Size = new System.Drawing.Size(79, 33);
            this.btn_eliminar.TabIndex = 24;
            this.btn_eliminar.Text = "Eliminar";
            this.btn_eliminar.UseVisualStyleBackColor = false;
            this.btn_eliminar.Visible = false;
            this.btn_eliminar.Click += new System.EventHandler(this.btn_eliminar_Click);
            // 
            // btn_saveAndNew
            // 
            this.btn_saveAndNew.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(28)))), ((int)(((byte)(28)))), ((int)(((byte)(28)))));
            this.btn_saveAndNew.FlatAppearance.BorderSize = 0;
            this.btn_saveAndNew.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_saveAndNew.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_saveAndNew.ForeColor = System.Drawing.Color.White;
            this.btn_saveAndNew.Location = new System.Drawing.Point(194, 122);
            this.btn_saveAndNew.Name = "btn_saveAndNew";
            this.btn_saveAndNew.Size = new System.Drawing.Size(84, 33);
            this.btn_saveAndNew.TabIndex = 20;
            this.btn_saveAndNew.Text = "Guardar";
            this.btn_saveAndNew.UseVisualStyleBackColor = false;
            this.btn_saveAndNew.Click += new System.EventHandler(this.btn_saveAndNew_Click);
            // 
            // dgv_data
            // 
            this.dgv_data.AllowUserToAddRows = false;
            this.dgv_data.AllowUserToDeleteRows = false;
            this.dgv_data.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(55)))), ((int)(((byte)(55)))), ((int)(((byte)(55)))));
            this.dgv_data.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_data.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.genre});
            this.dgv_data.Location = new System.Drawing.Point(285, 57);
            this.dgv_data.MultiSelect = false;
            this.dgv_data.Name = "dgv_data";
            this.dgv_data.ReadOnly = true;
            this.dgv_data.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dgv_data.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dgv_data.Size = new System.Drawing.Size(244, 139);
            this.dgv_data.TabIndex = 21;
            this.dgv_data.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.selectData);
            // 
            // id
            // 
            this.id.HeaderText = "id";
            this.id.Name = "id";
            this.id.ReadOnly = true;
            this.id.Visible = false;
            // 
            // genre
            // 
            this.genre.HeaderText = "Genero";
            this.genre.Name = "genre";
            this.genre.ReadOnly = true;
            this.genre.Width = 200;
            // 
            // txt_data
            // 
            this.txt_data.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_data.Location = new System.Drawing.Point(18, 82);
            this.txt_data.Name = "txt_data";
            this.txt_data.Size = new System.Drawing.Size(259, 24);
            this.txt_data.TabIndex = 19;
            this.txt_data.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(this.txt_data_MaskInputRejected);
            // 
            // label_tituloOriginal
            // 
            this.label_tituloOriginal.AutoSize = true;
            this.label_tituloOriginal.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label_tituloOriginal.ForeColor = System.Drawing.Color.White;
            this.label_tituloOriginal.Location = new System.Drawing.Point(18, 57);
            this.label_tituloOriginal.Name = "label_tituloOriginal";
            this.label_tituloOriginal.Size = new System.Drawing.Size(58, 18);
            this.label_tituloOriginal.TabIndex = 23;
            this.label_tituloOriginal.Text = "Genero";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(297, 33);
            this.label1.TabIndex = 22;
            this.label1.Text = "Genero de Peliculas";
            // 
            // Genero
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.ClientSize = new System.Drawing.Size(538, 209);
            this.Controls.Add(this.btn_new);
            this.Controls.Add(this.btn_eliminar);
            this.Controls.Add(this.btn_saveAndNew);
            this.Controls.Add(this.dgv_data);
            this.Controls.Add(this.txt_data);
            this.Controls.Add(this.label_tituloOriginal);
            this.Controls.Add(this.label1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Genero";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Genero";
            this.Load += new System.EventHandler(this.load);
            ((System.ComponentModel.ISupportInitialize)(this.dgv_data)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_new;
        private System.Windows.Forms.Button btn_eliminar;
        private System.Windows.Forms.Button btn_saveAndNew;
        private System.Windows.Forms.DataGridView dgv_data;
        private System.Windows.Forms.MaskedTextBox txt_data;
        private System.Windows.Forms.Label label_tituloOriginal;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn genre;
    }
}
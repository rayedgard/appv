namespace app
{
    partial class frmVenta
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
            this.panel2 = new System.Windows.Forms.Panel();
            this.gbResumen = new System.Windows.Forms.GroupBox();
            this.tbTotal = new System.Windows.Forms.TextBox();
            this.tbIGV = new System.Windows.Forms.TextBox();
            this.tbSubtotal = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.gbTiposTarjeta = new System.Windows.Forms.GroupBox();
            this.gbTipoComprobante = new System.Windows.Forms.GroupBox();
            this.gbFormasPago = new System.Windows.Forms.GroupBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.tbDescuento = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.tbCantidad = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tbBusca = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.dgvDatos = new System.Windows.Forms.DataGridView();
            this.Column4 = new System.Windows.Forms.DataGridViewImageColumn();
            this.Column8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel2.SuspendLayout();
            this.gbResumen.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatos)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.gbResumen);
            this.panel2.Controls.Add(this.gbTiposTarjeta);
            this.panel2.Controls.Add(this.gbTipoComprobante);
            this.panel2.Controls.Add(this.gbFormasPago);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Right;
            this.panel2.Location = new System.Drawing.Point(984, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(251, 622);
            this.panel2.TabIndex = 1;
            // 
            // gbResumen
            // 
            this.gbResumen.Controls.Add(this.tbTotal);
            this.gbResumen.Controls.Add(this.tbIGV);
            this.gbResumen.Controls.Add(this.tbSubtotal);
            this.gbResumen.Controls.Add(this.label5);
            this.gbResumen.Controls.Add(this.label4);
            this.gbResumen.Controls.Add(this.label3);
            this.gbResumen.Location = new System.Drawing.Point(6, 431);
            this.gbResumen.Name = "gbResumen";
            this.gbResumen.Size = new System.Drawing.Size(233, 179);
            this.gbResumen.TabIndex = 3;
            this.gbResumen.TabStop = false;
            this.gbResumen.Text = "Resumen";
            // 
            // tbTotal
            // 
            this.tbTotal.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbTotal.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbTotal.BackColor = System.Drawing.SystemColors.Menu;
            this.tbTotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbTotal.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.tbTotal.Location = new System.Drawing.Point(103, 114);
            this.tbTotal.Name = "tbTotal";
            this.tbTotal.Size = new System.Drawing.Size(124, 45);
            this.tbTotal.TabIndex = 8;
            this.tbTotal.Text = "0";
            this.tbTotal.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbIGV
            // 
            this.tbIGV.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbIGV.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbIGV.BackColor = System.Drawing.SystemColors.Menu;
            this.tbIGV.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbIGV.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.tbIGV.Location = new System.Drawing.Point(103, 63);
            this.tbIGV.Name = "tbIGV";
            this.tbIGV.Size = new System.Drawing.Size(124, 45);
            this.tbIGV.TabIndex = 7;
            this.tbIGV.Text = "0";
            this.tbIGV.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbSubtotal
            // 
            this.tbSubtotal.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbSubtotal.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbSubtotal.BackColor = System.Drawing.SystemColors.Menu;
            this.tbSubtotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbSubtotal.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.tbSubtotal.Location = new System.Drawing.Point(103, 12);
            this.tbSubtotal.Name = "tbSubtotal";
            this.tbSubtotal.Size = new System.Drawing.Size(124, 45);
            this.tbSubtotal.TabIndex = 6;
            this.tbSubtotal.Text = "0";
            this.tbSubtotal.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(3, 127);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(59, 20);
            this.label5.TabIndex = 5;
            this.label5.Text = "TOTAL";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(3, 29);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(97, 20);
            this.label4.TabIndex = 4;
            this.label4.Text = "SUB TOTAL";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(4, 80);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(50, 20);
            this.label3.TabIndex = 3;
            this.label3.Text = "I.G.V.";
            // 
            // gbTiposTarjeta
            // 
            this.gbTiposTarjeta.Enabled = false;
            this.gbTiposTarjeta.Location = new System.Drawing.Point(6, 291);
            this.gbTiposTarjeta.Name = "gbTiposTarjeta";
            this.gbTiposTarjeta.Size = new System.Drawing.Size(233, 127);
            this.gbTiposTarjeta.TabIndex = 2;
            this.gbTiposTarjeta.TabStop = false;
            this.gbTiposTarjeta.Text = "Tipos de tarjeta";
            // 
            // gbTipoComprobante
            // 
            this.gbTipoComprobante.Location = new System.Drawing.Point(6, 12);
            this.gbTipoComprobante.Name = "gbTipoComprobante";
            this.gbTipoComprobante.Size = new System.Drawing.Size(233, 129);
            this.gbTipoComprobante.TabIndex = 1;
            this.gbTipoComprobante.TabStop = false;
            this.gbTipoComprobante.Text = "Tipo de comprobante";
            // 
            // gbFormasPago
            // 
            this.gbFormasPago.Location = new System.Drawing.Point(6, 147);
            this.gbFormasPago.Name = "gbFormasPago";
            this.gbFormasPago.Size = new System.Drawing.Size(233, 136);
            this.gbFormasPago.TabIndex = 0;
            this.gbFormasPago.TabStop = false;
            this.gbFormasPago.Text = "Formas de pago";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnAgregar);
            this.panel1.Controls.Add(this.tbDescuento);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.tbCantidad);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.tbBusca);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(984, 125);
            this.panel1.TabIndex = 2;
            // 
            // btnAgregar
            // 
            this.btnAgregar.Location = new System.Drawing.Point(937, 87);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(75, 23);
            this.btnAgregar.TabIndex = 3;
            this.btnAgregar.Text = "Agregar";
            this.btnAgregar.UseVisualStyleBackColor = true;
            this.btnAgregar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // tbDescuento
            // 
            this.tbDescuento.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbDescuento.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbDescuento.BackColor = System.Drawing.SystemColors.Menu;
            this.tbDescuento.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbDescuento.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.tbDescuento.Location = new System.Drawing.Point(123, 12);
            this.tbDescuento.Name = "tbDescuento";
            this.tbDescuento.Size = new System.Drawing.Size(124, 45);
            this.tbDescuento.TabIndex = 10;
            this.tbDescuento.Text = "0";
            this.tbDescuento.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(8, 25);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(109, 20);
            this.label6.TabIndex = 9;
            this.label6.Text = "DESCUENTO";
            // 
            // tbCantidad
            // 
            this.tbCantidad.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbCantidad.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbCantidad.Location = new System.Drawing.Point(857, 89);
            this.tbCantidad.Name = "tbCantidad";
            this.tbCantidad.Size = new System.Drawing.Size(74, 20);
            this.tbCantidad.TabIndex = 2;
            this.tbCantidad.Text = "1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(796, 92);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Cantidad";
            // 
            // tbBusca
            // 
            this.tbBusca.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbBusca.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbBusca.Location = new System.Drawing.Point(75, 89);
            this.tbBusca.Name = "tbBusca";
            this.tbBusca.Size = new System.Drawing.Size(701, 20);
            this.tbBusca.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(14, 91);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Producto";
            // 
            // panel3
            // 
            this.panel3.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel3.Location = new System.Drawing.Point(0, 558);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(984, 64);
            this.panel3.TabIndex = 3;
            // 
            // dgvDatos
            // 
            this.dgvDatos.AllowUserToOrderColumns = true;
            this.dgvDatos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDatos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column4,
            this.Column8,
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column5,
            this.Column6,
            this.Column7});
            this.dgvDatos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDatos.Location = new System.Drawing.Point(0, 125);
            this.dgvDatos.Name = "dgvDatos";
            this.dgvDatos.Size = new System.Drawing.Size(984, 433);
            this.dgvDatos.TabIndex = 4;
            // 
            // Column4
            // 
            this.Column4.HeaderText = "X";
            this.Column4.Name = "Column4";
            this.Column4.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column4.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Column4.Width = 20;
            // 
            // Column8
            // 
            this.Column8.HeaderText = "Id";
            this.Column8.Name = "Column8";
            this.Column8.Visible = false;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Item";
            this.Column1.Name = "Column1";
            this.Column1.Width = 50;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Producto";
            this.Column2.Name = "Column2";
            this.Column2.Width = 800;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "Cant";
            this.Column3.Name = "Column3";
            // 
            // Column5
            // 
            this.Column5.HeaderText = "Precio";
            this.Column5.Name = "Column5";
            // 
            // Column6
            // 
            this.Column6.HeaderText = "Stock";
            this.Column6.Name = "Column6";
            this.Column6.Visible = false;
            // 
            // Column7
            // 
            this.Column7.HeaderText = "StockMinimo";
            this.Column7.Name = "Column7";
            this.Column7.Visible = false;
            // 
            // frmVenta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1235, 622);
            this.Controls.Add(this.dgvDatos);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel2);
            this.Name = "frmVenta";
            this.Text = "frmVenta";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmVenta_Load);
            this.panel2.ResumeLayout(false);
            this.gbResumen.ResumeLayout(false);
            this.gbResumen.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatos)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox tbBusca;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.DataGridView dgvDatos;
        private System.Windows.Forms.GroupBox gbTipoComprobante;
        private System.Windows.Forms.GroupBox gbFormasPago;
        private System.Windows.Forms.GroupBox gbTiposTarjeta;
        private System.Windows.Forms.TextBox tbCantidad;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox gbResumen;
        private System.Windows.Forms.TextBox tbTotal;
        private System.Windows.Forms.TextBox tbIGV;
        private System.Windows.Forms.TextBox tbSubtotal;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox tbDescuento;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.DataGridViewImageColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column8;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column7;
    }
}
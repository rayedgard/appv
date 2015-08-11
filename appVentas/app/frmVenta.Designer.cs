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
            this.gbTipoComprobante = new System.Windows.Forms.GroupBox();
            this.gbFormasPago = new System.Windows.Forms.GroupBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.tbBusca = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.gbTipoComprobante);
            this.panel2.Controls.Add(this.gbFormasPago);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Right;
            this.panel2.Location = new System.Drawing.Point(745, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(230, 510);
            this.panel2.TabIndex = 1;
            // 
            // gbTipoComprobante
            // 
            this.gbTipoComprobante.Location = new System.Drawing.Point(6, 215);
            this.gbTipoComprobante.Name = "gbTipoComprobante";
            this.gbTipoComprobante.Size = new System.Drawing.Size(212, 155);
            this.gbTipoComprobante.TabIndex = 1;
            this.gbTipoComprobante.TabStop = false;
            this.gbTipoComprobante.Text = "Tipo de comprobante";
            // 
            // gbFormasPago
            // 
            this.gbFormasPago.Location = new System.Drawing.Point(6, 12);
            this.gbFormasPago.Name = "gbFormasPago";
            this.gbFormasPago.Size = new System.Drawing.Size(212, 197);
            this.gbFormasPago.TabIndex = 0;
            this.gbFormasPago.TabStop = false;
            this.gbFormasPago.Text = "Formas de pago";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.tbBusca);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(745, 125);
            this.panel1.TabIndex = 2;
            // 
            // tbBusca
            // 
            this.tbBusca.Location = new System.Drawing.Point(75, 89);
            this.tbBusca.Name = "tbBusca";
            this.tbBusca.Size = new System.Drawing.Size(664, 20);
            this.tbBusca.TabIndex = 1;
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
            this.panel3.Location = new System.Drawing.Point(0, 446);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(745, 64);
            this.panel3.TabIndex = 3;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dataGridView1.Location = new System.Drawing.Point(0, 125);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(745, 321);
            this.dataGridView1.TabIndex = 4;
            // 
            // frmVenta
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(975, 510);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel2);
            this.Name = "frmVenta";
            this.Text = "frmVenta";
            this.Load += new System.EventHandler(this.frmVenta_Load);
            this.panel2.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox tbBusca;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox gbTipoComprobante;
        private System.Windows.Forms.GroupBox gbFormasPago;
    }
}
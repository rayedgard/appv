namespace app
{
    partial class frmSaldos
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmSaldos));
            this.btnIngresar = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.tbCambio = new System.Windows.Forms.TextBox();
            this.tbPago = new System.Windows.Forms.TextBox();
            this.tbImporte = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnIngresar
            // 
            this.btnIngresar.Image = global::app.Properties.Resources.aceptar_cheque_verde_ok_si_icono_6092_16;
            this.btnIngresar.Location = new System.Drawing.Point(196, 145);
            this.btnIngresar.Name = "btnIngresar";
            this.btnIngresar.Size = new System.Drawing.Size(106, 39);
            this.btnIngresar.TabIndex = 2;
            this.btnIngresar.Text = "Aceptar";
            this.btnIngresar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnIngresar.UseVisualStyleBackColor = true;
            this.btnIngresar.Click += new System.EventHandler(this.btnIngresar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Image = global::app.Properties.Resources.cancelar_icono_9428_16;
            this.btnCancelar.Location = new System.Drawing.Point(84, 145);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(106, 39);
            this.btnCancelar.TabIndex = 3;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // tbCambio
            // 
            this.tbCambio.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbCambio.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbCambio.BackColor = System.Drawing.SystemColors.Menu;
            this.tbCambio.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbCambio.ForeColor = System.Drawing.Color.Red;
            this.tbCambio.Location = new System.Drawing.Point(110, 97);
            this.tbCambio.Name = "tbCambio";
            this.tbCambio.ReadOnly = true;
            this.tbCambio.Size = new System.Drawing.Size(188, 35);
            this.tbCambio.TabIndex = 14;
            this.tbCambio.Text = "0";
            this.tbCambio.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbPago
            // 
            this.tbPago.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbPago.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbPago.BackColor = System.Drawing.SystemColors.Menu;
            this.tbPago.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbPago.ForeColor = System.Drawing.Color.Red;
            this.tbPago.Location = new System.Drawing.Point(110, 56);
            this.tbPago.Name = "tbPago";
            this.tbPago.Size = new System.Drawing.Size(188, 35);
            this.tbPago.TabIndex = 9;
            this.tbPago.Text = "0";
            this.tbPago.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.tbPago.TextChanged += new System.EventHandler(this.tbPago_TextChanged);
            // 
            // tbImporte
            // 
            this.tbImporte.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbImporte.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbImporte.BackColor = System.Drawing.SystemColors.Menu;
            this.tbImporte.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbImporte.ForeColor = System.Drawing.Color.Red;
            this.tbImporte.Location = new System.Drawing.Point(110, 16);
            this.tbImporte.Name = "tbImporte";
            this.tbImporte.ReadOnly = true;
            this.tbImporte.Size = new System.Drawing.Size(188, 35);
            this.tbImporte.TabIndex = 13;
            this.tbImporte.Text = "0";
            this.tbImporte.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(7, 107);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(72, 20);
            this.label5.TabIndex = 12;
            this.label5.Text = "CAMBIO";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(7, 26);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(81, 20);
            this.label4.TabIndex = 11;
            this.label4.Text = "IMPORTE";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(8, 66);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(93, 20);
            this.label3.TabIndex = 10;
            this.label3.Text = "PAGO CON";
            // 
            // frmSaldos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.ClientSize = new System.Drawing.Size(306, 190);
            this.Controls.Add(this.tbCambio);
            this.Controls.Add(this.tbPago);
            this.Controls.Add(this.tbImporte);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnIngresar);
            this.Controls.Add(this.btnCancelar);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmSaldos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmSaldos";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnIngresar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.TextBox tbCambio;
        private System.Windows.Forms.TextBox tbPago;
        private System.Windows.Forms.TextBox tbImporte;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;

    }
}
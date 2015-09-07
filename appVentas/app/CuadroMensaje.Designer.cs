namespace app
{
    partial class CuadroMensaje
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
            this.lbStock = new System.Windows.Forms.Label();
            this.lbMensaje = new System.Windows.Forms.Label();
            this.btnOK = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lbStock
            // 
            this.lbStock.BackColor = System.Drawing.Color.Transparent;
            this.lbStock.Dock = System.Windows.Forms.DockStyle.Top;
            this.lbStock.Font = new System.Drawing.Font("Microsoft Sans Serif", 25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbStock.ForeColor = System.Drawing.Color.PaleTurquoise;
            this.lbStock.Location = new System.Drawing.Point(0, 36);
            this.lbStock.Name = "lbStock";
            this.lbStock.Size = new System.Drawing.Size(485, 36);
            this.lbStock.TabIndex = 8;
            this.lbStock.Text = "label1";
            this.lbStock.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lbMensaje
            // 
            this.lbMensaje.BackColor = System.Drawing.Color.Maroon;
            this.lbMensaje.Dock = System.Windows.Forms.DockStyle.Top;
            this.lbMensaje.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbMensaje.ForeColor = System.Drawing.Color.PaleTurquoise;
            this.lbMensaje.Location = new System.Drawing.Point(0, 0);
            this.lbMensaje.Name = "lbMensaje";
            this.lbMensaje.Size = new System.Drawing.Size(485, 36);
            this.lbMensaje.TabIndex = 7;
            this.lbMensaje.Text = "label1";
            this.lbMensaje.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // btnOK
            // 
            this.btnOK.BackColor = System.Drawing.Color.Red;
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnOK.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnOK.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnOK.ForeColor = System.Drawing.Color.White;
            this.btnOK.Location = new System.Drawing.Point(396, 89);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 27);
            this.btnOK.TabIndex = 6;
            this.btnOK.Text = "OK";
            this.btnOK.UseVisualStyleBackColor = false;
            // 
            // CuadroMensaje
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Red;
            this.ClientSize = new System.Drawing.Size(485, 125);
            this.Controls.Add(this.lbStock);
            this.Controls.Add(this.lbMensaje);
            this.Controls.Add(this.btnOK);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "CuadroMensaje";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "CuadroMensaje";
            this.TopMost = true;
            this.Load += new System.EventHandler(this.CuadroMensaje_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lbStock;
        private System.Windows.Forms.Label lbMensaje;
        private System.Windows.Forms.Button btnOK;

    }
}
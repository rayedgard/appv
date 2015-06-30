namespace app
{
    partial class frmLoguin
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmLoguin));
            this.panel1 = new System.Windows.Forms.Panel();
            this.tbPass = new System.Windows.Forms.TextBox();
            this.tbUsuario = new System.Windows.Forms.TextBox();
            this.lbContrasena = new System.Windows.Forms.Label();
            this.lbUsuario = new System.Windows.Forms.Label();
            this.pbLogin = new System.Windows.Forms.PictureBox();
            this.btnIngresar = new System.Windows.Forms.Button();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.lbRed = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbLogin)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.tbPass);
            this.panel1.Controls.Add(this.tbUsuario);
            this.panel1.Controls.Add(this.lbContrasena);
            this.panel1.Controls.Add(this.lbUsuario);
            this.panel1.Location = new System.Drawing.Point(136, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(250, 67);
            this.panel1.TabIndex = 7;
            // 
            // tbPass
            // 
            this.tbPass.Location = new System.Drawing.Point(73, 36);
            this.tbPass.Name = "tbPass";
            this.tbPass.PasswordChar = 'o';
            this.tbPass.Size = new System.Drawing.Size(167, 20);
            this.tbPass.TabIndex = 2;
            this.tbPass.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbPass_KeyPress);
            // 
            // tbUsuario
            // 
            this.tbUsuario.Location = new System.Drawing.Point(73, 10);
            this.tbUsuario.Name = "tbUsuario";
            this.tbUsuario.Size = new System.Drawing.Size(167, 20);
            this.tbUsuario.TabIndex = 1;
            // 
            // lbContrasena
            // 
            this.lbContrasena.AutoSize = true;
            this.lbContrasena.Location = new System.Drawing.Point(4, 43);
            this.lbContrasena.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lbContrasena.Name = "lbContrasena";
            this.lbContrasena.Size = new System.Drawing.Size(67, 13);
            this.lbContrasena.TabIndex = 4;
            this.lbContrasena.Text = "Contraseña :";
            // 
            // lbUsuario
            // 
            this.lbUsuario.AutoSize = true;
            this.lbUsuario.Location = new System.Drawing.Point(4, 17);
            this.lbUsuario.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lbUsuario.Name = "lbUsuario";
            this.lbUsuario.Size = new System.Drawing.Size(49, 13);
            this.lbUsuario.TabIndex = 2;
            this.lbUsuario.Text = "Usuario :";
            // 
            // pbLogin
            // 
            this.pbLogin.Image = global::app.Properties.Resources.llaves128;
            this.pbLogin.Location = new System.Drawing.Point(2, 3);
            this.pbLogin.Name = "pbLogin";
            this.pbLogin.Size = new System.Drawing.Size(128, 128);
            this.pbLogin.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.pbLogin.TabIndex = 8;
            this.pbLogin.TabStop = false;
            // 
            // btnIngresar
            // 
            this.btnIngresar.Image = global::app.Properties.Resources.aceptar_cheque_verde_ok_si_icono_6092_16;
            this.btnIngresar.Location = new System.Drawing.Point(280, 74);
            this.btnIngresar.Name = "btnIngresar";
            this.btnIngresar.Size = new System.Drawing.Size(106, 39);
            this.btnIngresar.TabIndex = 3;
            this.btnIngresar.Text = "Ingresar";
            this.btnIngresar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnIngresar.UseVisualStyleBackColor = true;
            this.btnIngresar.Click += new System.EventHandler(this.btnIngresar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.Image = global::app.Properties.Resources.cancelar_icono_9428_16;
            this.btnCancelar.Location = new System.Drawing.Point(168, 74);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(106, 39);
            this.btnCancelar.TabIndex = 4;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // lbRed
            // 
            this.lbRed.AutoSize = true;
            this.lbRed.ForeColor = System.Drawing.Color.DarkSlateBlue;
            this.lbRed.Location = new System.Drawing.Point(237, 118);
            this.lbRed.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lbRed.Name = "lbRed";
            this.lbRed.Size = new System.Drawing.Size(149, 13);
            this.lbRed.TabIndex = 11;
            this.lbRed.Text = "Configuración de datos de red";
            this.lbRed.Click += new System.EventHandler(this.lbRed_Click);
            // 
            // frmLoguin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(390, 135);
            this.Controls.Add(this.lbRed);
            this.Controls.Add(this.pbLogin);
            this.Controls.Add(this.btnIngresar);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmLoguin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "SV - Loguin";
            this.Load += new System.EventHandler(this.frmLoguin_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbLogin)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pbLogin;
        private System.Windows.Forms.Button btnIngresar;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox tbPass;
        private System.Windows.Forms.TextBox tbUsuario;
        private System.Windows.Forms.Label lbContrasena;
        private System.Windows.Forms.Label lbUsuario;
        private System.Windows.Forms.Label lbRed;
    }
}
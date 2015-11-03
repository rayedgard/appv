namespace app
{
    partial class frmProducto
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmProducto));
            this.panel1 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.tbBurcar = new System.Windows.Forms.TextBox();
            this.gbDatos2 = new System.Windows.Forms.GroupBox();
            this.rbtDos = new System.Windows.Forms.RadioButton();
            this.rbtUno = new System.Windows.Forms.RadioButton();
            this.rbtSinPromo = new System.Windows.Forms.RadioButton();
            this.btnNuevo = new System.Windows.Forms.Button();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.gbDatos1 = new System.Windows.Forms.GroupBox();
            this.btnBuscaFisicas = new System.Windows.Forms.Button();
            this.tbCarFisicas = new System.Windows.Forms.TextBox();
            this.btnBuscaUni = new System.Windows.Forms.Button();
            this.tbUnidades = new System.Windows.Forms.TextBox();
            this.btnBuscaCat = new System.Windows.Forms.Button();
            this.tbCategoria = new System.Windows.Forms.TextBox();
            this.rbtInactivo = new System.Windows.Forms.RadioButton();
            this.rbtActivo = new System.Windows.Forms.RadioButton();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.tbNroSerie = new System.Windows.Forms.TextBox();
            this.lblNroSerie = new System.Windows.Forms.Label();
            this.gbDatos = new System.Windows.Forms.GroupBox();
            this.tbStock = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.tbStockMin = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.pcbImagen = new System.Windows.Forms.PictureBox();
            this.tbPrecioCom = new System.Windows.Forms.TextBox();
            this.tbDetalle = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tbNombres = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.dgvDatos = new System.Windows.Forms.DataGridView();
            this.epValida = new System.Windows.Forms.ErrorProvider(this.components);
            this.ofd_CargarImagen = new System.Windows.Forms.OpenFileDialog();
            this.tbPrecioVen = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.Column1 = new System.Windows.Forms.DataGridViewImageColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewImageColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column13 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column10 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column12 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column17 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column15 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column16 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column18 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            this.gbDatos2.SuspendLayout();
            this.gbDatos1.SuspendLayout();
            this.gbDatos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pcbImagen)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.epValida)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.tbBurcar);
            this.panel1.Controls.Add(this.gbDatos2);
            this.panel1.Controls.Add(this.btnNuevo);
            this.panel1.Controls.Add(this.btnGuardar);
            this.panel1.Controls.Add(this.gbDatos1);
            this.panel1.Controls.Add(this.gbDatos);
            this.panel1.Controls.Add(this.lblTitulo);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(817, 262);
            this.panel1.TabIndex = 18;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(9, 234);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 13);
            this.label5.TabIndex = 18;
            this.label5.Text = "Criterio:";
            // 
            // tbBurcar
            // 
            this.tbBurcar.Location = new System.Drawing.Point(75, 231);
            this.tbBurcar.MaxLength = 8;
            this.tbBurcar.Name = "tbBurcar";
            this.tbBurcar.Size = new System.Drawing.Size(737, 20);
            this.tbBurcar.TabIndex = 18;
            this.tbBurcar.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbBurcar_KeyPress);
            // 
            // gbDatos2
            // 
            this.gbDatos2.Controls.Add(this.rbtDos);
            this.gbDatos2.Controls.Add(this.rbtUno);
            this.gbDatos2.Controls.Add(this.rbtSinPromo);
            this.gbDatos2.Enabled = false;
            this.gbDatos2.Location = new System.Drawing.Point(3, 184);
            this.gbDatos2.Name = "gbDatos2";
            this.gbDatos2.Size = new System.Drawing.Size(455, 40);
            this.gbDatos2.TabIndex = 12;
            this.gbDatos2.TabStop = false;
            this.gbDatos2.Text = "Ofertas";
            // 
            // rbtDos
            // 
            this.rbtDos.AutoSize = true;
            this.rbtDos.Location = new System.Drawing.Point(318, 17);
            this.rbtDos.Name = "rbtDos";
            this.rbtDos.Size = new System.Drawing.Size(74, 17);
            this.rbtDos.TabIndex = 15;
            this.rbtDos.Text = "Tres x dos";
            this.rbtDos.UseVisualStyleBackColor = true;
            // 
            // rbtUno
            // 
            this.rbtUno.AutoSize = true;
            this.rbtUno.Location = new System.Drawing.Point(203, 17);
            this.rbtUno.Name = "rbtUno";
            this.rbtUno.Size = new System.Drawing.Size(73, 17);
            this.rbtUno.TabIndex = 14;
            this.rbtUno.Text = "Dos x uno";
            this.rbtUno.UseVisualStyleBackColor = true;
            // 
            // rbtSinPromo
            // 
            this.rbtSinPromo.AutoSize = true;
            this.rbtSinPromo.Checked = true;
            this.rbtSinPromo.Location = new System.Drawing.Point(72, 17);
            this.rbtSinPromo.Name = "rbtSinPromo";
            this.rbtSinPromo.Size = new System.Drawing.Size(92, 17);
            this.rbtSinPromo.TabIndex = 13;
            this.rbtSinPromo.TabStop = true;
            this.rbtSinPromo.Text = "Sin promoción";
            this.rbtSinPromo.UseVisualStyleBackColor = true;
            // 
            // btnNuevo
            // 
            this.btnNuevo.Image = global::app.Properties.Resources.aceptar;
            this.btnNuevo.Location = new System.Drawing.Point(714, 184);
            this.btnNuevo.Margin = new System.Windows.Forms.Padding(2);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(98, 42);
            this.btnNuevo.TabIndex = 17;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnNuevo.UseVisualStyleBackColor = true;
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // btnGuardar
            // 
            this.btnGuardar.Enabled = false;
            this.btnGuardar.Image = global::app.Properties.Resources.agregar32;
            this.btnGuardar.Location = new System.Drawing.Point(607, 184);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(2);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(98, 42);
            this.btnGuardar.TabIndex = 16;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // gbDatos1
            // 
            this.gbDatos1.Controls.Add(this.btnBuscaFisicas);
            this.gbDatos1.Controls.Add(this.tbCarFisicas);
            this.gbDatos1.Controls.Add(this.btnBuscaUni);
            this.gbDatos1.Controls.Add(this.tbUnidades);
            this.gbDatos1.Controls.Add(this.btnBuscaCat);
            this.gbDatos1.Controls.Add(this.tbCategoria);
            this.gbDatos1.Controls.Add(this.rbtInactivo);
            this.gbDatos1.Controls.Add(this.rbtActivo);
            this.gbDatos1.Controls.Add(this.label6);
            this.gbDatos1.Controls.Add(this.label7);
            this.gbDatos1.Controls.Add(this.label8);
            this.gbDatos1.Controls.Add(this.label11);
            this.gbDatos1.Controls.Add(this.tbNroSerie);
            this.gbDatos1.Controls.Add(this.lblNroSerie);
            this.gbDatos1.Enabled = false;
            this.gbDatos1.Location = new System.Drawing.Point(464, 40);
            this.gbDatos1.Name = "gbDatos1";
            this.gbDatos1.Size = new System.Drawing.Size(348, 139);
            this.gbDatos1.TabIndex = 6;
            this.gbDatos1.TabStop = false;
            this.gbDatos1.Text = "Datos de Referencia";
            // 
            // btnBuscaFisicas
            // 
            this.btnBuscaFisicas.Location = new System.Drawing.Point(317, 65);
            this.btnBuscaFisicas.Name = "btnBuscaFisicas";
            this.btnBuscaFisicas.Size = new System.Drawing.Size(24, 23);
            this.btnBuscaFisicas.TabIndex = 8;
            this.btnBuscaFisicas.Text = "...";
            this.btnBuscaFisicas.UseVisualStyleBackColor = true;
            this.btnBuscaFisicas.Click += new System.EventHandler(this.btnBuscaFisicas_Click);
            // 
            // tbCarFisicas
            // 
            this.tbCarFisicas.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbCarFisicas.Enabled = false;
            this.tbCarFisicas.Location = new System.Drawing.Point(78, 67);
            this.tbCarFisicas.Name = "tbCarFisicas";
            this.tbCarFisicas.Size = new System.Drawing.Size(215, 20);
            this.tbCarFisicas.TabIndex = 52;
            // 
            // btnBuscaUni
            // 
            this.btnBuscaUni.Location = new System.Drawing.Point(317, 42);
            this.btnBuscaUni.Name = "btnBuscaUni";
            this.btnBuscaUni.Size = new System.Drawing.Size(24, 23);
            this.btnBuscaUni.TabIndex = 7;
            this.btnBuscaUni.Text = "...";
            this.btnBuscaUni.UseVisualStyleBackColor = true;
            this.btnBuscaUni.Click += new System.EventHandler(this.btnBuscaUni_Click);
            // 
            // tbUnidades
            // 
            this.tbUnidades.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbUnidades.Enabled = false;
            this.tbUnidades.Location = new System.Drawing.Point(78, 44);
            this.tbUnidades.Name = "tbUnidades";
            this.tbUnidades.Size = new System.Drawing.Size(215, 20);
            this.tbUnidades.TabIndex = 51;
            // 
            // btnBuscaCat
            // 
            this.btnBuscaCat.Location = new System.Drawing.Point(317, 20);
            this.btnBuscaCat.Name = "btnBuscaCat";
            this.btnBuscaCat.Size = new System.Drawing.Size(24, 23);
            this.btnBuscaCat.TabIndex = 6;
            this.btnBuscaCat.Text = "...";
            this.btnBuscaCat.UseVisualStyleBackColor = true;
            this.btnBuscaCat.Click += new System.EventHandler(this.btnBuscaCat_Click);
            // 
            // tbCategoria
            // 
            this.tbCategoria.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbCategoria.Enabled = false;
            this.tbCategoria.Location = new System.Drawing.Point(78, 22);
            this.tbCategoria.Name = "tbCategoria";
            this.tbCategoria.Size = new System.Drawing.Size(215, 20);
            this.tbCategoria.TabIndex = 50;
            // 
            // rbtInactivo
            // 
            this.rbtInactivo.AutoSize = true;
            this.rbtInactivo.Location = new System.Drawing.Point(144, 90);
            this.rbtInactivo.Name = "rbtInactivo";
            this.rbtInactivo.Size = new System.Drawing.Size(63, 17);
            this.rbtInactivo.TabIndex = 10;
            this.rbtInactivo.Text = "Inactivo";
            this.rbtInactivo.UseVisualStyleBackColor = true;
            // 
            // rbtActivo
            // 
            this.rbtActivo.AutoSize = true;
            this.rbtActivo.Checked = true;
            this.rbtActivo.Location = new System.Drawing.Point(78, 90);
            this.rbtActivo.Name = "rbtActivo";
            this.rbtActivo.Size = new System.Drawing.Size(55, 17);
            this.rbtActivo.TabIndex = 9;
            this.rbtActivo.TabStop = true;
            this.rbtActivo.Text = "Activo";
            this.rbtActivo.UseVisualStyleBackColor = true;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(10, 92);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(43, 13);
            this.label6.TabIndex = 15;
            this.label6.Text = "Estado:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(10, 70);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(64, 13);
            this.label7.TabIndex = 12;
            this.label7.Text = "Car. Fisicas:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(10, 48);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(55, 13);
            this.label8.TabIndex = 9;
            this.label8.Text = "Unidades:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(11, 22);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(55, 13);
            this.label11.TabIndex = 4;
            this.label11.Text = "Categoria:";
            // 
            // tbNroSerie
            // 
            this.tbNroSerie.Location = new System.Drawing.Point(78, 111);
            this.tbNroSerie.MaxLength = 8;
            this.tbNroSerie.Name = "tbNroSerie";
            this.tbNroSerie.Size = new System.Drawing.Size(215, 20);
            this.tbNroSerie.TabIndex = 11;
            this.tbNroSerie.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbNroSerie_KeyPress);
            // 
            // lblNroSerie
            // 
            this.lblNroSerie.AutoSize = true;
            this.lblNroSerie.Location = new System.Drawing.Point(11, 114);
            this.lblNroSerie.Name = "lblNroSerie";
            this.lblNroSerie.Size = new System.Drawing.Size(69, 13);
            this.lblNroSerie.TabIndex = 4;
            this.lblNroSerie.Text = "Nro de Serie:";
            // 
            // gbDatos
            // 
            this.gbDatos.Controls.Add(this.label10);
            this.gbDatos.Controls.Add(this.tbPrecioVen);
            this.gbDatos.Controls.Add(this.tbStock);
            this.gbDatos.Controls.Add(this.label4);
            this.gbDatos.Controls.Add(this.tbStockMin);
            this.gbDatos.Controls.Add(this.label12);
            this.gbDatos.Controls.Add(this.pcbImagen);
            this.gbDatos.Controls.Add(this.tbPrecioCom);
            this.gbDatos.Controls.Add(this.tbDetalle);
            this.gbDatos.Controls.Add(this.label3);
            this.gbDatos.Controls.Add(this.label2);
            this.gbDatos.Controls.Add(this.label1);
            this.gbDatos.Controls.Add(this.tbNombres);
            this.gbDatos.Controls.Add(this.label9);
            this.gbDatos.Enabled = false;
            this.gbDatos.Location = new System.Drawing.Point(3, 40);
            this.gbDatos.Name = "gbDatos";
            this.gbDatos.Size = new System.Drawing.Size(455, 139);
            this.gbDatos.TabIndex = 5;
            this.gbDatos.TabStop = false;
            this.gbDatos.Text = "Datos del Producto";
            // 
            // tbStock
            // 
            this.tbStock.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbStock.Location = new System.Drawing.Point(72, 85);
            this.tbStock.Name = "tbStock";
            this.tbStock.Size = new System.Drawing.Size(77, 20);
            this.tbStock.TabIndex = 4;
            this.tbStock.Text = "0";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(9, 90);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(38, 13);
            this.label4.TabIndex = 17;
            this.label4.Text = "Stock:";
            // 
            // tbStockMin
            // 
            this.tbStockMin.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbStockMin.Location = new System.Drawing.Point(72, 109);
            this.tbStockMin.Name = "tbStockMin";
            this.tbStockMin.Size = new System.Drawing.Size(77, 20);
            this.tbStockMin.TabIndex = 5;
            this.tbStockMin.Text = "5";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(336, 10);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(42, 13);
            this.label12.TabIndex = 15;
            this.label12.Text = "Imagen";
            // 
            // pcbImagen
            // 
            this.pcbImagen.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.pcbImagen.Image = ((System.Drawing.Image)(resources.GetObject("pcbImagen.Image")));
            this.pcbImagen.Location = new System.Drawing.Point(339, 25);
            this.pcbImagen.Name = "pcbImagen";
            this.pcbImagen.Size = new System.Drawing.Size(96, 111);
            this.pcbImagen.TabIndex = 14;
            this.pcbImagen.TabStop = false;
            this.pcbImagen.Click += new System.EventHandler(this.pcbImagen_Click);
            // 
            // tbPrecioCom
            // 
            this.tbPrecioCom.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbPrecioCom.Location = new System.Drawing.Point(72, 62);
            this.tbPrecioCom.Name = "tbPrecioCom";
            this.tbPrecioCom.Size = new System.Drawing.Size(77, 20);
            this.tbPrecioCom.TabIndex = 2;
            this.tbPrecioCom.Text = "0";
            // 
            // tbDetalle
            // 
            this.tbDetalle.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbDetalle.Location = new System.Drawing.Point(72, 39);
            this.tbDetalle.Name = "tbDetalle";
            this.tbDetalle.Size = new System.Drawing.Size(236, 20);
            this.tbDetalle.TabIndex = 1;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(9, 67);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(64, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "Precio Com:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 44);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(43, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "Detalle:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(52, 13);
            this.label1.TabIndex = 7;
            this.label1.Text = "Nombres:";
            // 
            // tbNombres
            // 
            this.tbNombres.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbNombres.Location = new System.Drawing.Point(72, 16);
            this.tbNombres.Name = "tbNombres";
            this.tbNombres.Size = new System.Drawing.Size(236, 20);
            this.tbNombres.TabIndex = 0;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(6, 112);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(58, 13);
            this.label9.TabIndex = 8;
            this.label9.Text = "Stock Min:";
            // 
            // lblTitulo
            // 
            this.lblTitulo.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(64)))), ((int)(((byte)(64)))), ((int)(((byte)(64)))));
            this.lblTitulo.Dock = System.Windows.Forms.DockStyle.Top;
            this.lblTitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.ForeColor = System.Drawing.Color.White;
            this.lblTitulo.Location = new System.Drawing.Point(0, 0);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(817, 37);
            this.lblTitulo.TabIndex = 8;
            this.lblTitulo.Text = "Administracion de producto";
            this.lblTitulo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dgvDatos
            // 
            this.dgvDatos.AllowUserToAddRows = false;
            this.dgvDatos.AllowUserToDeleteRows = false;
            this.dgvDatos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDatos.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5,
            this.Column13,
            this.Column6,
            this.Column10,
            this.Column9,
            this.Column7,
            this.Column8,
            this.Column12,
            this.Column17,
            this.Column15,
            this.Column16,
            this.Column18});
            this.dgvDatos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDatos.Location = new System.Drawing.Point(0, 262);
            this.dgvDatos.Name = "dgvDatos";
            this.dgvDatos.ReadOnly = true;
            this.dgvDatos.Size = new System.Drawing.Size(817, 225);
            this.dgvDatos.TabIndex = 17;
            this.dgvDatos.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDatos_CellClick);
            // 
            // epValida
            // 
            this.epValida.ContainerControl = this;
            // 
            // tbPrecioVen
            // 
            this.tbPrecioVen.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.tbPrecioVen.Location = new System.Drawing.Point(227, 64);
            this.tbPrecioVen.Name = "tbPrecioVen";
            this.tbPrecioVen.Size = new System.Drawing.Size(81, 20);
            this.tbPrecioVen.TabIndex = 3;
            this.tbPrecioVen.Text = "0";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(158, 67);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(62, 13);
            this.label10.TabIndex = 19;
            this.label10.Text = "Precio Ven:";
            // 
            // Column1
            // 
            this.Column1.HeaderText = "M";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            this.Column1.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column1.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Column1.Width = 20;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "E";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            this.Column2.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Column2.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Column2.Width = 20;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "id";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            this.Column3.Visible = false;
            // 
            // Column4
            // 
            this.Column4.HeaderText = "Nombre";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // Column5
            // 
            this.Column5.HeaderText = "Detalle";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            // 
            // Column13
            // 
            this.Column13.HeaderText = "Imágen";
            this.Column13.Name = "Column13";
            this.Column13.ReadOnly = true;
            this.Column13.Visible = false;
            // 
            // Column6
            // 
            this.Column6.HeaderText = "Precio Compra";
            this.Column6.Name = "Column6";
            this.Column6.ReadOnly = true;
            // 
            // Column10
            // 
            this.Column10.HeaderText = "Precio Venta";
            this.Column10.Name = "Column10";
            this.Column10.ReadOnly = true;
            // 
            // Column9
            // 
            this.Column9.HeaderText = "Categoría";
            this.Column9.Name = "Column9";
            this.Column9.ReadOnly = true;
            this.Column9.Visible = false;
            // 
            // Column7
            // 
            this.Column7.HeaderText = "Stock";
            this.Column7.Name = "Column7";
            this.Column7.ReadOnly = true;
            // 
            // Column8
            // 
            this.Column8.HeaderText = "Stock Min";
            this.Column8.Name = "Column8";
            this.Column8.ReadOnly = true;
            // 
            // Column12
            // 
            this.Column12.HeaderText = "Unidades";
            this.Column12.Name = "Column12";
            this.Column12.ReadOnly = true;
            this.Column12.Visible = false;
            // 
            // Column17
            // 
            this.Column17.HeaderText = "Serie";
            this.Column17.Name = "Column17";
            this.Column17.ReadOnly = true;
            // 
            // Column15
            // 
            this.Column15.HeaderText = "Caract Fisicas";
            this.Column15.Name = "Column15";
            this.Column15.ReadOnly = true;
            this.Column15.Visible = false;
            // 
            // Column16
            // 
            this.Column16.HeaderText = "Estado";
            this.Column16.Name = "Column16";
            this.Column16.ReadOnly = true;
            this.Column16.Visible = false;
            // 
            // Column18
            // 
            this.Column18.HeaderText = "Promoción";
            this.Column18.Name = "Column18";
            this.Column18.ReadOnly = true;
            // 
            // frmProducto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(817, 487);
            this.Controls.Add(this.dgvDatos);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmProducto";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PRODUCTOS";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.gbDatos2.ResumeLayout(false);
            this.gbDatos2.PerformLayout();
            this.gbDatos1.ResumeLayout(false);
            this.gbDatos1.PerformLayout();
            this.gbDatos.ResumeLayout(false);
            this.gbDatos.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pcbImagen)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatos)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.epValida)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        public System.Windows.Forms.Button btnNuevo;
        public System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.GroupBox gbDatos1;
        private System.Windows.Forms.RadioButton rbtInactivo;
        private System.Windows.Forms.RadioButton rbtActivo;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.GroupBox gbDatos;
        private System.Windows.Forms.TextBox tbStock;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.PictureBox pcbImagen;
        private System.Windows.Forms.TextBox tbPrecioCom;
        private System.Windows.Forms.TextBox tbDetalle;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox tbNombres;
        private System.Windows.Forms.TextBox tbNroSerie;
        private System.Windows.Forms.Label lblNroSerie;
        private System.Windows.Forms.Label lblTitulo;
        private System.Windows.Forms.TextBox tbStockMin;
        private System.Windows.Forms.Button btnBuscaCat;
        private System.Windows.Forms.TextBox tbCategoria;
        private System.Windows.Forms.Button btnBuscaFisicas;
        private System.Windows.Forms.TextBox tbCarFisicas;
        private System.Windows.Forms.Button btnBuscaUni;
        private System.Windows.Forms.TextBox tbUnidades;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.GroupBox gbDatos2;
        private System.Windows.Forms.RadioButton rbtDos;
        private System.Windows.Forms.RadioButton rbtUno;
        private System.Windows.Forms.RadioButton rbtSinPromo;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox tbBurcar;
        private System.Windows.Forms.DataGridView dgvDatos;
        private System.Windows.Forms.ErrorProvider epValida;
        private System.Windows.Forms.OpenFileDialog ofd_CargarImagen;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox tbPrecioVen;
        private System.Windows.Forms.DataGridViewImageColumn Column1;
        private System.Windows.Forms.DataGridViewImageColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column13;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column10;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column9;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column7;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column8;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column12;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column17;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column15;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column16;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column18;
    }
}
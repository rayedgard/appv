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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmVenta));
            this.panel2 = new System.Windows.Forms.Panel();
            this.gbCostos = new System.Windows.Forms.GroupBox();
            this.tbCambio = new System.Windows.Forms.TextBox();
            this.tbPagoCon = new System.Windows.Forms.TextBox();
            this.tbImporte = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.gbFactura = new System.Windows.Forms.GroupBox();
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lbDireccion = new System.Windows.Forms.Label();
            this.lbRazon = new System.Windows.Forms.Label();
            this.lbRuc = new System.Windows.Forms.Label();
            this.tbNumero = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.tbSerie = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.tbDescuento = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.tbCantidad = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.tbBusca = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.tbCaja = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.tbUsuario = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
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
            this.gbCostos.SuspendLayout();
            this.gbFactura.SuspendLayout();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatos)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.gbCostos);
            this.panel2.Controls.Add(this.gbFactura);
            this.panel2.Controls.Add(this.gbTiposTarjeta);
            this.panel2.Controls.Add(this.gbTipoComprobante);
            this.panel2.Controls.Add(this.gbFormasPago);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Right;
            this.panel2.Location = new System.Drawing.Point(984, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(251, 694);
            this.panel2.TabIndex = 1;
            // 
            // gbCostos
            // 
            this.gbCostos.Controls.Add(this.tbCambio);
            this.gbCostos.Controls.Add(this.tbPagoCon);
            this.gbCostos.Controls.Add(this.tbImporte);
            this.gbCostos.Controls.Add(this.label7);
            this.gbCostos.Controls.Add(this.label8);
            this.gbCostos.Controls.Add(this.label9);
            this.gbCostos.Location = new System.Drawing.Point(6, 528);
            this.gbCostos.Name = "gbCostos";
            this.gbCostos.Size = new System.Drawing.Size(233, 138);
            this.gbCostos.TabIndex = 9;
            this.gbCostos.TabStop = false;
            this.gbCostos.Text = "Resumen ";
            // 
            // tbCambio
            // 
            this.tbCambio.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbCambio.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbCambio.BackColor = System.Drawing.SystemColors.Menu;
            this.tbCambio.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbCambio.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.tbCambio.Location = new System.Drawing.Point(103, 93);
            this.tbCambio.Name = "tbCambio";
            this.tbCambio.ReadOnly = true;
            this.tbCambio.Size = new System.Drawing.Size(124, 35);
            this.tbCambio.TabIndex = 8;
            this.tbCambio.Text = "0";
            this.tbCambio.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbPagoCon
            // 
            this.tbPagoCon.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbPagoCon.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbPagoCon.BackColor = System.Drawing.SystemColors.Menu;
            this.tbPagoCon.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbPagoCon.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.tbPagoCon.Location = new System.Drawing.Point(103, 52);
            this.tbPagoCon.Name = "tbPagoCon";
            this.tbPagoCon.ReadOnly = true;
            this.tbPagoCon.Size = new System.Drawing.Size(124, 35);
            this.tbPagoCon.TabIndex = 7;
            this.tbPagoCon.Text = "0";
            this.tbPagoCon.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbImporte
            // 
            this.tbImporte.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbImporte.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbImporte.BackColor = System.Drawing.SystemColors.Menu;
            this.tbImporte.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbImporte.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.tbImporte.Location = new System.Drawing.Point(103, 12);
            this.tbImporte.Name = "tbImporte";
            this.tbImporte.ReadOnly = true;
            this.tbImporte.Size = new System.Drawing.Size(124, 35);
            this.tbImporte.TabIndex = 6;
            this.tbImporte.Text = "0";
            this.tbImporte.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(3, 104);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(72, 20);
            this.label7.TabIndex = 5;
            this.label7.Text = "CAMBIO";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(3, 23);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(81, 20);
            this.label8.TabIndex = 4;
            this.label8.Text = "IMPORTE";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(4, 63);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(93, 20);
            this.label9.TabIndex = 3;
            this.label9.Text = "PAGO CON";
            // 
            // gbFactura
            // 
            this.gbFactura.Controls.Add(this.tbTotal);
            this.gbFactura.Controls.Add(this.tbIGV);
            this.gbFactura.Controls.Add(this.tbSubtotal);
            this.gbFactura.Controls.Add(this.label5);
            this.gbFactura.Controls.Add(this.label4);
            this.gbFactura.Controls.Add(this.label3);
            this.gbFactura.Enabled = false;
            this.gbFactura.Location = new System.Drawing.Point(6, 388);
            this.gbFactura.Name = "gbFactura";
            this.gbFactura.Size = new System.Drawing.Size(233, 138);
            this.gbFactura.TabIndex = 3;
            this.gbFactura.TabStop = false;
            this.gbFactura.Text = "Datos de Facturación";
            // 
            // tbTotal
            // 
            this.tbTotal.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbTotal.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbTotal.BackColor = System.Drawing.SystemColors.Menu;
            this.tbTotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbTotal.ForeColor = System.Drawing.Color.Blue;
            this.tbTotal.Location = new System.Drawing.Point(103, 93);
            this.tbTotal.Name = "tbTotal";
            this.tbTotal.ReadOnly = true;
            this.tbTotal.Size = new System.Drawing.Size(124, 35);
            this.tbTotal.TabIndex = 8;
            this.tbTotal.Text = "0";
            this.tbTotal.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbIGV
            // 
            this.tbIGV.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbIGV.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbIGV.BackColor = System.Drawing.SystemColors.Menu;
            this.tbIGV.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbIGV.ForeColor = System.Drawing.Color.Blue;
            this.tbIGV.Location = new System.Drawing.Point(103, 52);
            this.tbIGV.Name = "tbIGV";
            this.tbIGV.ReadOnly = true;
            this.tbIGV.Size = new System.Drawing.Size(124, 35);
            this.tbIGV.TabIndex = 7;
            this.tbIGV.Text = "0";
            this.tbIGV.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // tbSubtotal
            // 
            this.tbSubtotal.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbSubtotal.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbSubtotal.BackColor = System.Drawing.SystemColors.Menu;
            this.tbSubtotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbSubtotal.ForeColor = System.Drawing.Color.Blue;
            this.tbSubtotal.Location = new System.Drawing.Point(103, 12);
            this.tbSubtotal.Name = "tbSubtotal";
            this.tbSubtotal.ReadOnly = true;
            this.tbSubtotal.Size = new System.Drawing.Size(124, 35);
            this.tbSubtotal.TabIndex = 6;
            this.tbSubtotal.Text = "0";
            this.tbSubtotal.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(3, 104);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(59, 20);
            this.label5.TabIndex = 5;
            this.label5.Text = "TOTAL";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(3, 23);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(97, 20);
            this.label4.TabIndex = 4;
            this.label4.Text = "SUB TOTAL";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(4, 63);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(50, 20);
            this.label3.TabIndex = 3;
            this.label3.Text = "I.G.V.";
            // 
            // gbTiposTarjeta
            // 
            this.gbTiposTarjeta.Enabled = false;
            this.gbTiposTarjeta.Location = new System.Drawing.Point(6, 266);
            this.gbTiposTarjeta.Name = "gbTiposTarjeta";
            this.gbTiposTarjeta.Size = new System.Drawing.Size(233, 119);
            this.gbTiposTarjeta.TabIndex = 2;
            this.gbTiposTarjeta.TabStop = false;
            this.gbTiposTarjeta.Text = "Tipos de tarjeta";
            // 
            // gbTipoComprobante
            // 
            this.gbTipoComprobante.Location = new System.Drawing.Point(6, 12);
            this.gbTipoComprobante.Name = "gbTipoComprobante";
            this.gbTipoComprobante.Size = new System.Drawing.Size(233, 113);
            this.gbTipoComprobante.TabIndex = 1;
            this.gbTipoComprobante.TabStop = false;
            this.gbTipoComprobante.Text = "Tipo de comprobante";
            // 
            // gbFormasPago
            // 
            this.gbFormasPago.Location = new System.Drawing.Point(6, 127);
            this.gbFormasPago.Name = "gbFormasPago";
            this.gbFormasPago.Size = new System.Drawing.Size(233, 136);
            this.gbFormasPago.TabIndex = 0;
            this.gbFormasPago.TabStop = false;
            this.gbFormasPago.Text = "Formas de pago";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.groupBox1);
            this.panel1.Controls.Add(this.tbNumero);
            this.panel1.Controls.Add(this.label11);
            this.panel1.Controls.Add(this.tbSerie);
            this.panel1.Controls.Add(this.label10);
            this.panel1.Controls.Add(this.btnAgregar);
            this.panel1.Controls.Add(this.tbDescuento);
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.tbCantidad);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.tbBusca);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label14);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(984, 125);
            this.panel1.TabIndex = 2;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lbDireccion);
            this.groupBox1.Controls.Add(this.lbRazon);
            this.groupBox1.Controls.Add(this.lbRuc);
            this.groupBox1.Location = new System.Drawing.Point(3, 8);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(353, 67);
            this.groupBox1.TabIndex = 15;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Datos de Facturación";
            // 
            // lbDireccion
            // 
            this.lbDireccion.AutoSize = true;
            this.lbDireccion.ForeColor = System.Drawing.Color.Blue;
            this.lbDireccion.Location = new System.Drawing.Point(4, 49);
            this.lbDireccion.Name = "lbDireccion";
            this.lbDireccion.Size = new System.Drawing.Size(66, 13);
            this.lbDireccion.TabIndex = 3;
            this.lbDireccion.Text = "DIRECCIÓN";
            // 
            // lbRazon
            // 
            this.lbRazon.AutoSize = true;
            this.lbRazon.ForeColor = System.Drawing.Color.Blue;
            this.lbRazon.Location = new System.Drawing.Point(4, 32);
            this.lbRazon.Name = "lbRazon";
            this.lbRazon.Size = new System.Drawing.Size(86, 13);
            this.lbRazon.TabIndex = 2;
            this.lbRazon.Text = "RAZON SOCIAL";
            // 
            // lbRuc
            // 
            this.lbRuc.AutoSize = true;
            this.lbRuc.ForeColor = System.Drawing.Color.Blue;
            this.lbRuc.Location = new System.Drawing.Point(4, 15);
            this.lbRuc.Name = "lbRuc";
            this.lbRuc.Size = new System.Drawing.Size(30, 13);
            this.lbRuc.TabIndex = 1;
            this.lbRuc.Text = "RUC";
            // 
            // tbNumero
            // 
            this.tbNumero.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbNumero.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbNumero.BackColor = System.Drawing.SystemColors.Menu;
            this.tbNumero.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbNumero.ForeColor = System.Drawing.Color.Red;
            this.tbNumero.Location = new System.Drawing.Point(853, 21);
            this.tbNumero.Name = "tbNumero";
            this.tbNumero.ReadOnly = true;
            this.tbNumero.Size = new System.Drawing.Size(124, 26);
            this.tbNumero.TabIndex = 14;
            this.tbNumero.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(850, 1);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(58, 17);
            this.label11.TabIndex = 13;
            this.label11.Text = "Número";
            // 
            // tbSerie
            // 
            this.tbSerie.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbSerie.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbSerie.BackColor = System.Drawing.SystemColors.Menu;
            this.tbSerie.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbSerie.ForeColor = System.Drawing.Color.Red;
            this.tbSerie.Location = new System.Drawing.Point(725, 21);
            this.tbSerie.Name = "tbSerie";
            this.tbSerie.ReadOnly = true;
            this.tbSerie.Size = new System.Drawing.Size(112, 26);
            this.tbSerie.TabIndex = 12;
            this.tbSerie.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(722, 2);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(41, 17);
            this.label10.TabIndex = 11;
            this.label10.Text = "Serie";
            // 
            // btnAgregar
            // 
            this.btnAgregar.Location = new System.Drawing.Point(675, 94);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(75, 23);
            this.btnAgregar.TabIndex = 3;
            this.btnAgregar.Text = "Buscar";
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
            this.tbDescuento.Location = new System.Drawing.Point(470, 8);
            this.tbDescuento.Name = "tbDescuento";
            this.tbDescuento.ReadOnly = true;
            this.tbDescuento.Size = new System.Drawing.Size(246, 45);
            this.tbDescuento.TabIndex = 10;
            this.tbDescuento.Text = "0";
            this.tbDescuento.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(355, 21);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(109, 20);
            this.label6.TabIndex = 9;
            this.label6.Text = "DESCUENTO";
            // 
            // tbCantidad
            // 
            this.tbCantidad.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbCantidad.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbCantidad.Location = new System.Drawing.Point(595, 96);
            this.tbCantidad.Name = "tbCantidad";
            this.tbCantidad.Size = new System.Drawing.Size(74, 20);
            this.tbCantidad.TabIndex = 2;
            this.tbCantidad.Text = "1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(534, 99);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(49, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "Cantidad";
            // 
            // tbBusca
            // 
            this.tbBusca.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbBusca.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbBusca.Location = new System.Drawing.Point(67, 97);
            this.tbBusca.Name = "tbBusca";
            this.tbBusca.Size = new System.Drawing.Size(445, 20);
            this.tbBusca.TabIndex = 0;
            this.tbBusca.KeyUp += new System.Windows.Forms.KeyEventHandler(this.tbBusca_KeyUp);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 99);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Producto";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(835, 19);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(21, 29);
            this.label14.TabIndex = 10;
            this.label14.Text = "-";
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.tbCaja);
            this.panel3.Controls.Add(this.label13);
            this.panel3.Controls.Add(this.tbUsuario);
            this.panel3.Controls.Add(this.label12);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel3.Location = new System.Drawing.Point(0, 630);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(984, 64);
            this.panel3.TabIndex = 3;
            // 
            // tbCaja
            // 
            this.tbCaja.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbCaja.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbCaja.BackColor = System.Drawing.SystemColors.Menu;
            this.tbCaja.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbCaja.ForeColor = System.Drawing.Color.Blue;
            this.tbCaja.Location = new System.Drawing.Point(857, 24);
            this.tbCaja.Name = "tbCaja";
            this.tbCaja.ReadOnly = true;
            this.tbCaja.Size = new System.Drawing.Size(124, 35);
            this.tbCaja.TabIndex = 16;
            this.tbCaja.Text = "0";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(852, 4);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(61, 20);
            this.label13.TabIndex = 15;
            this.label13.Text = "N° Caja";
            // 
            // tbUsuario
            // 
            this.tbUsuario.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.tbUsuario.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.tbUsuario.BackColor = System.Drawing.SystemColors.Menu;
            this.tbUsuario.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbUsuario.ForeColor = System.Drawing.Color.Blue;
            this.tbUsuario.Location = new System.Drawing.Point(538, 33);
            this.tbUsuario.Name = "tbUsuario";
            this.tbUsuario.ReadOnly = true;
            this.tbUsuario.Size = new System.Drawing.Size(313, 26);
            this.tbUsuario.TabIndex = 10;
            this.tbUsuario.Text = "0";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(534, 10);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(68, 20);
            this.label12.TabIndex = 13;
            this.label12.Text = "Cajero/a";
            // 
            // dgvDatos
            // 
            this.dgvDatos.AllowUserToAddRows = false;
            this.dgvDatos.AllowUserToDeleteRows = false;
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
            this.dgvDatos.Size = new System.Drawing.Size(984, 505);
            this.dgvDatos.TabIndex = 4;
            this.dgvDatos.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDatos_CellClick);
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
            this.ClientSize = new System.Drawing.Size(1235, 694);
            this.Controls.Add(this.dgvDatos);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmVenta";
            this.Text = "frmVenta";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmVenta_Load);
            this.panel2.ResumeLayout(false);
            this.gbCostos.ResumeLayout(false);
            this.gbCostos.PerformLayout();
            this.gbFactura.ResumeLayout(false);
            this.gbFactura.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
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
        private System.Windows.Forms.GroupBox gbFactura;
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
        private System.Windows.Forms.GroupBox gbCostos;
        private System.Windows.Forms.TextBox tbCambio;
        private System.Windows.Forms.TextBox tbPagoCon;
        private System.Windows.Forms.TextBox tbImporte;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox tbNumero;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox tbSerie;
        private System.Windows.Forms.TextBox tbCaja;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox tbUsuario;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lbDireccion;
        private System.Windows.Forms.Label lbRazon;
        private System.Windows.Forms.Label lbRuc;
    }
}
using clases;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace app
{
    public partial class frmVenta : Form
    {
        
        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosCategoria = new object[4];
        string string_ArchivoConfiguracion;
        double IGV;//igv definido como impuesto


        //lista para COMPROBANTES DE PAGO
        List<string> comprobante = new List<string>();



        public frmVenta(string ArchivoCOnfig)
        {
            InitializeComponent();
            string_ArchivoConfiguracion = ArchivoCOnfig;
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();

            //listar();
            listaDatos();


        }

        private void listaDatos()
        {
            //adquirimos los datos del usuario
            tbUsuario.Text = clases.Cfunciones.Globales.nameUser;
           
            //obteniendo el numero de caja e IGV
            CConfigXML configXml_ArchivoConfiguracion = new CConfigXML(string_ArchivoConfiguracion);
            tbCaja.Text = configXml_ArchivoConfiguracion.GetValue("principal", "numerocaja", "");//---> numero de caja 
            IGV = Convert.ToDouble(configXml_ArchivoConfiguracion.GetValue("principal", "igv", ""));//---> igv 

            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            //consultas
            DataSet datos1 = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_tipos_comprobante");
            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_formas_pago");
            DataSet datos2 = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_tipos_tarjeta");
            

            // para generar los radiobutons de COMPORBANTE DE PAGO-----> FACTURA--- BOLETA ---TICKET 

            int y = 0;
            foreach (DataRow row in datos1.Tables[0].Rows)
            {
                RadioButton radio = new RadioButton();
                radio.Text = Convert.ToString(row["nombre"]);
                radio.Tag = Convert.ToString(row["id"]);
    
                y += 20;
                radio.Location = new Point(20, y);

                gbTipoComprobante.Controls.Add(radio);


                

                if (Convert.ToInt32(radio.Tag) == 1)
                {
                    radio.Checked = true;
                    serieNumero(radio.Text);
                }

               radio.Click += new EventHandler(radiobutonComprobante);
               
            }

            // para generar los radiobutons de FORMAS DE PAGO--> TARJETA ---EFECTIVO--ETC
            int z = 0;
            foreach (DataRow row1 in datos.Tables[0].Rows)
            {
                RadioButton radio1 = new RadioButton();
                radio1.Text = Convert.ToString(row1["nombre"]);
                radio1.Tag = Convert.ToString(row1["id"]);

                z += 20;
                radio1.Location = new Point(20, z);

                gbFormasPago.Controls.Add(radio1);
                
                if (Convert.ToInt32(radio1.Tag) == 1)
                {
                    radio1.Checked = true;
                    //lista.Add(Convert.ToString(row1["id"]));
                }
                radio1.Click += new EventHandler(radiobutonFormasPago);
            }

            // para generar los radiobutons de TIPOS DE TARJETA
            int zz = 0;
            foreach (DataRow row2 in datos2.Tables[0].Rows)
            {
                RadioButton radio2 = new RadioButton();
                radio2.Text = Convert.ToString(row2["nombre"]);
                radio2.Tag = Convert.ToString(row2["id"]);

                zz += 20;
                radio2.Location = new Point(20, zz);

                gbTiposTarjeta.Controls.Add(radio2);

                if (Convert.ToInt32(radio2.Tag) == 1)
                {
                    radio2.Checked = true;
                    //lista.Add(Convert.ToString(row2["id"]));
                }
                radio2.Click += new EventHandler(radiobutonTipoTarjeta);
            }

            ConexionBD.Desconectar();
        }
        private void frmVenta_Load(object sender, EventArgs e)
        {
            //ConexionBD.Conectar(false, string_ArchivoConfiguracion);

            //ConexionBD.autoCompletar(tbBusca, "SELECT nombre,nroserie FROM `producto`");
            //ConexionBD.Desconectar();
            
        }

        /// <summary>
        /// Metodo para determinar el numero de factura o boleta
        /// </summary>
        private void serieNumero(string comprobanteDePago)
        {
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            //consultas para obtener la serie y el numero
            DataSet serieNumero = ConexionBD.EjecutarProcedimientoReturnDataSet("venta_serienumero","pNombreComprobante",comprobanteDePago);
            //PARA OBTENER LOS DATOS DEL TEXTO PLANO
            CConfigXML configXml_ArchivoConfiguracion = new CConfigXML(string_ArchivoConfiguracion);
            if (Convert.ToInt32(serieNumero.Tables[0].Rows[0][0]) == 0 && Convert.ToInt32(serieNumero.Tables[0].Rows[0][1]) == 0)
            {
                if (comprobanteDePago == "FACTURA")
                {
                    tbSerie.Text = configXml_ArchivoConfiguracion.GetValue("principal", "seriefactura", "");//---> Serie de factura
                    tbNumero.Text = configXml_ArchivoConfiguracion.GetValue("principal", "numerofactura", "");//---> numero de factura
                }
                else
                {

                    tbSerie.Text = configXml_ArchivoConfiguracion.GetValue("principal", "serieboleta", "");//---> Serie de boleta
                    tbNumero.Text = configXml_ArchivoConfiguracion.GetValue("principal", "numeroboleta", "");//---> numero de boleta
                }
            }
            else
            {
                tbSerie.Text = serieNumero.Tables[0].Rows[0][0].ToString();//---> Serie de boleta
                tbNumero.Text = serieNumero.Tables[0].Rows[0][0].ToString();//---> numero de boleta
            }
            ConexionBD.Desconectar();
        }


        /// <summary>
        /// METODO PARA CAPTURAR EL EVENTO CLICK  para el comprobantre de pago
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void radiobutonComprobante(object sender, EventArgs e)
        {
            var nombre = (RadioButton)sender;
         
            if (nombre.Checked)
            {
               serieNumero(nombre.Text);
               if (nombre.Text == "FACTURA")
               {
                   tipo = Tipo.comprobantePago;
                   frmCliente cliente = new frmCliente(string_ArchivoConfiguracion);
                   cliente.ShowDialog();

                   //Asignamos los valores de facturacion 
                   lbRuc.Text= Cfunciones.Globales.ruc;
                   lbRazon.Text = Cfunciones.Globales.razon;
                   lbDireccion.Text = Cfunciones.Globales.direccion;

                   //calculamos los costos, impuestos y demas
                   //calculos
                   subtotal= importe/((IGV/100)+1);//calculo del subtotal
                   total = importe;
                   igv = total - subtotal;

                   // asignamos los valores en soles para los texbox
                   tbTotal.Text = importe.ToString("C2", CultureInfo.CurrentCulture);
                   tbSubtotal.Text = subtotal.ToString("C2", CultureInfo.CurrentCulture);
                   tbIGV.Text = igv.ToString("C2", CultureInfo.CurrentCulture);
               }
               else
               {
                   tipo = Tipo.inicio;
               }
            }

            habilitaBoton();
        }




        /// <summary>
        /// CAPTURA EVENTO CLICK PARA EL GRUPO DE FORMAS DE PAGO
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void radiobutonFormasPago(object sender, EventArgs e)
        {
            var nombre = (RadioButton)sender;
            if (nombre.Text == "TARJETA")
            {
                tipo = Tipo.tipoTarjeta;
            }
            else
            {
                tipo = Tipo.inicio;
            }

             habilitaBoton();
        }



        /// <summary>
        /// METODO PARA CAPTURAR EL EVENTO CLICK para tipos tarjeta
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void radiobutonTipoTarjeta(object sender, EventArgs e)
        {
            var nombre = (RadioButton)sender;

            if (nombre.Checked)
            {
                MessageBox.Show(nombre.Text);
            }

            habilitaBoton();
        }





        

        #region ------para las logica de botoners-------------
        private enum Tipo
        {
            guardar, modificar, eliminar, grid, tipoTarjeta,inicio, comprobantePago
        }
        private Tipo tipo;




        private void habilitaBoton()
        {
            //btnGuardar.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            //gbDatosPersonales.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            //gbDatosContacto.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            //dgvDatos.Enabled = dgvDatos.Rows.Count > 0;

            gbTiposTarjeta.Enabled = tipo == Tipo.tipoTarjeta;
            gbFactura.Enabled = tipo == Tipo.comprobantePago;

        }
        #endregion
        //variables para guardar los valores de compra
        int contador=0;
        //variables para la facturacion
        double subtotal = 0;
        double igv = 0;//igv calculado
        double total = 0;
        double igvValor = 0.18;

        //variables para los importes y totales
        double importe = 0;
        double pagocon = 0;
        double cambio = 0;
        
        //variables para las promociones y descuentos
        double descuentoMonto = 0;
        double descuentoPorcentaje = 0;

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "PRODUCTOS";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();

            buscaProducto(Cfunciones.Globales.valor);

            
        }
        /// <summary>
        /// METODO DE BUSQUEDA DE PRODUCTO POR MEDIO DE LECTOS DE BARRAS
        /// </summary>
        private void buscaProducto(string filtro)
        {
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);

            if (filtro.Length > 2)
            {
                DataSet product = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_busca_producto", "pFiltro", filtro);

                //eliminamos datos de busqueta VALOR Y CODIGO para no generar error
                Cfunciones.Globales.valor = "";
                Cfunciones.Globales.codigo = "";

                try
                {
                    if (product.Tables[0].Rows.Count > 0)
                    {

                        if (Convert.ToInt32(product.Tables[0].Rows[0][3]) > 0)
                        {
                            dgvDatos.Rows.Add();

                            dgvDatos.Rows[contador].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                            dgvDatos.Rows[contador].Cells[1].Value = product.Tables[0].Rows[0][0];//id
                            dgvDatos.Rows[contador].Cells[2].Value = contador + 1;
                            dgvDatos.Rows[contador].Cells[3].Value = product.Tables[0].Rows[0][1];//nombred
                            dgvDatos.Rows[contador].Cells[4].Value = tbCantidad.Text;
                            double precio = Convert.ToInt32(product.Tables[0].Rows[0][2]) * Convert.ToDouble(tbCantidad.Text);
                            dgvDatos.Rows[contador].Cells[5].Value = precio.ToString("C2", CultureInfo.CurrentCulture);//precio
                            dgvDatos.Rows[contador].Cells[6].Value = product.Tables[0].Rows[0][3];//stock
                            dgvDatos.Rows[contador].Cells[7].Value = product.Tables[0].Rows[0][4];//stocminimo
                            contador++;

                            if (Convert.ToInt32(product.Tables[0].Rows[0][4]) >= Convert.ToInt32(product.Tables[0].Rows[0][3]))
                            {

                                CuadroMensaje men = new CuadroMensaje();
                                men.mensaje = "PRECAUCIÓN, STOCK MINIMO DEL PRODUCTO";
                                men.stock = product.Tables[0].Rows[0][3].ToString();
                                men.ShowDialog();

                            }
                            //calculos
                            importe += precio;
                            tbImporte.Text = importe.ToString("C2", CultureInfo.CurrentCulture);

                        }
                        else
                        {

                            CuadroMensaje men = new CuadroMensaje();
                            men.mensaje = "PRECAUCIÓN, NO TEANEMOS STOCK DE ESTE PRODUCTO POR EL MOMENTO";
                            men.stock = product.Tables[0].Rows[0][3].ToString();
                            men.ShowDialog();

                        }
                            

                        tbBusca.Text = "";
                        tbBusca.Focus();
                        tbBusca.Select();
                    }
                    else
                    {
                        CuadroMensaje men = new CuadroMensaje();
                        men.mensaje = "ESTE PRODUCTO ESTA DESCONTINUADO O DESHABILITADO";
                        men.stock = "DESHABILITADO";
                        men.ShowDialog();

                    }


                }
                catch//(Exception ex)
                {

                }
            }
             ConexionBD.Desconectar();
    
        }


    

        private void tbBusca_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                buscaProducto(tbBusca.Text);

            }
        }

        private void dgvDatos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if ((e.RowIndex >= 0) && (e.ColumnIndex == 0) )
            {
                if (e.ColumnIndex == 0)
                {// EDITAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE PRODUCTO? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        //LimpiarDatosHorario();
                        dgvDatos.Rows.RemoveAt(dgvDatos.CurrentRow.Index);
                        contador--;
                       
                    }
                   
                }
            }
        }


      




    }
}

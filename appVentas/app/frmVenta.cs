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


     

        //DECLARAMOS LAS VARIABLES PARA CONTROLAR LOS TIPOS DE PAGO Y COMPROBANTES
        //en COMPROBBANTE DE PAGO------> 0=BOLETA, 1=FACTURA, 3=ETC
        int tipoComprobante;
        int formaPago;
        int tipoTarjeta;
        
        

        //apra almacenar los valores a guardar
        object[] datosVenta = new object[13];
<<<<<<< HEAD
        object[] datosDetalle = new object[7];

        //para almacenar el ID dela venta
        string idVenta="";
=======
        object[] datosDetalle = new object[6];
>>>>>>> 359a58f4fcf964ae8fc96123a01ddb54ac86d787

        public frmVenta(string ArchivoCOnfig)
        {
            InitializeComponent();
            string_ArchivoConfiguracion = ArchivoCOnfig;
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();

            //listar();
            listaDatos();

            tbBusca.Focus();
            tbBusca.Select();


        }

        private void listaDatos()
        {
            //adquirimos los datos del usuario
            tbUsuario.Text = clases.Cfunciones.Globales.nameUser;
           
            //obteniendo el numero de caja e IGV datos establecidos al inicio de la implantacion del sistema
            CConfigXML configXml_ArchivoConfiguracion = new CConfigXML(string_ArchivoConfiguracion);
            tbCaja.Text = configXml_ArchivoConfiguracion.GetValue("principal", "numerocaja", "");//---> numero de caja 
            IGV = Convert.ToDouble(configXml_ArchivoConfiguracion.GetValue("principal", "igv", ""));//---> igv 

            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            //consultas
            DataSet datos1 = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_tipos_comprobante");/*para obtener los tipos de comprobantes de pago*/
            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_formas_pago");/*para obtener la formas de pago*/
            DataSet datos2 = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_tipos_tarjeta");/*para obtener los tipos de tarjeta*/

            //consulta para determinar el id de la compra 
            idVenta = ConexionBD.EjecutarProcedimientoReturnMensaje("ventas_id");
          

            // para generar los radiobutons de tipos de COMPORBANTE DE PAGO-----> FACTURA--- BOLETA ---TICKET 

            int y = 0;
            foreach (DataRow row in datos1.Tables[0].Rows)
            {
                RadioButton radio = new RadioButton();
                radio.Name = Convert.ToString(row["nombre"]);
                radio.Text = Convert.ToString(row["nombre"]);
                radio.Tag = Convert.ToString(row["id"]);
                    
                y += 20;
                radio.Location = new Point(20, y);

                gbTipoComprobante.Controls.Add(radio);

                if (Convert.ToInt32(radio.Tag) == 1)
                {
                    radio.Checked = true;
                    serieNumero(radio.Name);
                }

               radio.Click += new EventHandler(radiobutonComprobante);
               
            }

            // para generar los radiobutons de FORMAS DE PAGO--> TARJETA ---EFECTIVO--ETC
            int z = 0;
            foreach (DataRow row1 in datos.Tables[0].Rows)
            {
                RadioButton radio1 = new RadioButton();
                radio1.Name = Convert.ToString(row1["nombre"]);
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

            // para generar los radiobutons de TIPOS DE TARJETA--- visa --mastercar--etc
            int zz = 0;
            foreach (DataRow row2 in datos2.Tables[0].Rows)
            {
                RadioButton radio2 = new RadioButton();
                radio2.Name = Convert.ToString(row2["nombre"]);
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
            var radio = (RadioButton)sender;
         
            if (radio.Checked)
            {
               serieNumero(radio.Name);
               if (radio.Name == "FACTURA")
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
                   igv = importe - subtotal;

                   // asignamos los valores en soles para los texbox
                   tbTotal.Text = importe.ToString("C2", CultureInfo.CurrentCulture);
                   tbSubtotal.Text = subtotal.ToString("C2", CultureInfo.CurrentCulture);
                   tbIGV.Text = igv.ToString("C2", CultureInfo.CurrentCulture);

                   

               }
               else
               {
                   tipo = Tipo.inicio;
               }

               //asignamos el valor de tipo de comprobante de pago BOLERTA FACTUIRA
               tipoComprobante = Convert.ToInt32(radio.Tag);
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
            var radio = (RadioButton)sender;
            if (radio.Name== "TARJETA")
            {
                //aqui acciones para seleccion de tarjeta 
                tipo = Tipo.tipoTarjeta;
                //capturamos el ide del tipo de formas de pago
                radio.Tag.ToString();

            }
            else
            {
                tipo = Tipo.inicio;
            }

            //asignamos el valor de tipo de comprobante de pago BOLERTA FACTUIRA
            formaPago = Convert.ToInt32(radio.Tag);


             habilitaBoton();
        }



        /// <summary>
        /// METODO PARA CAPTURAR EL EVENTO CLICK para tipos tarjeta
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void radiobutonTipoTarjeta(object sender, EventArgs e)
        {
            var radio = (RadioButton)sender;

            if (radio.Checked)
            {
                MessageBox.Show(radio.Text);
            }

            //asignamos el valor de tipo de comprobante de pago BOLERTA FACTUIRA
            tipoTarjeta = Convert.ToInt32(radio.Tag);
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
         //variables para los importes y totales
        double importe = 0;//-----> total

        //variables para las promociones y descuentos
        double descuentoTotal = 0;


        private void btnAgregar_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "PRODUCTOS";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();

            if(Cfunciones.Globales.codigo!="")
                AgregaProducto();

            
        }
        /// <summary>
        /// METODO QUE AGREGA EL PRODUCTO A LA GRILLA, PRIMERAMENTE REALIZA LOS FILTRADOS DE DESCUENTOS Y PROMOCIONES
        /// </summary>
        private void AgregaProducto()
        {
            //eliminamos datos de busqueta VALOR Y CODIGO para no generar error
            int stock = Cfunciones.Globales.stock;
            int stockMin = Cfunciones.Globales.stockMinimo;

            //-------------------CAPTURAMOS EL ID DEL PRODUCTO PARA VERIFICAR SI HAY DESCUENTOS 
            int descuentoUnitarioPorciento = verificaDescuento();
            //----------------fin descuentos------------

            //--- CONSULTA PARA OOBTENER LA UNIDAD DEL PRODUCTO
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            string unidadProducto =ConexionBD.EjecutarProcedimientoReturnMensaje("producto_unidad","pIdUnidad",Cfunciones.Globales.idUnidades);
            ConexionBD.Desconectar();

                try
                {
                    if (Cfunciones.Globales.codigo != "")
                    {

                        //DETERMINAMOS LOS DESCUETOS UNITARIOS Y MOSTRAMOS EN LA CAJA DE TEXTO
              
                        dgvDatos.Rows.Add();

                        dgvDatos.Rows[contador].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                        dgvDatos.Rows[contador].Cells[1].Value = Cfunciones.Globales.codigo;//id
                        dgvDatos.Rows[contador].Cells[2].Value = Cfunciones.Globales.valor;//nombred
                        dgvDatos.Rows[contador].Cells[3].Value = unidadProducto;//nomenclatira o abreviatura de las unidades 
                        dgvDatos.Rows[contador].Cells[4].Value = tbCantidad.Text;
                        dgvDatos.Rows[contador].Cells[5].Value = Cfunciones.Globales.precioVenta.ToString("C2", CultureInfo.CurrentCulture);//precio unitario
                        
                        
                        //-----------EVALUAAMOS LAS PROMOCIONES-----
                        double precioT = devuelvevPromocion(Convert.ToDouble(tbCantidad.Text)); 
                      
                        //---------------FIN PROMOCIONES---------------


                        dgvDatos.Rows[contador].Cells[6].Value = precioT.ToString("C2", CultureInfo.CurrentCulture);//precio TOTAL

                        contador++;

                        //para los descuetos de cada elemento ---> ANADIMOS AL DESCUENTO ACUMULADO DE TODA LA COMPRA
                        descuentoTotal = descuentoTotal +  precioT * descuentoUnitarioPorciento / 100;
                        //MOSTRAMOS DESCUENTO EN SOLES EN EL CAMPO DE TEXTO
                        tbDescuentoSoles.Text = descuentoTotal.ToString("C2", CultureInfo.CurrentCulture);
                        if (stockMin >= stock)
                        {

                            CuadroMensaje men = new CuadroMensaje();
                            men.mensaje = "PRECAUCIÓN, STOCK MINIMO DEL PRODUCTO";
                            men.stock = stock.ToString();
                            men.ShowDialog();
                            
                        }
                        //calculos
                        importe += precioT - precioT * descuentoUnitarioPorciento / 100;
                        tbImporte.Text = importe.ToString("C2", CultureInfo.CurrentCulture);

                    }



                    tbBusca.Text = "";
                    tbBusca.Focus();
                    tbBusca.Select();
                    //limpiamos los parametros utilizados
                    limpir();


                }
                catch//(Exception ex)
                {

                }
        }



        /// <summary>
        ///METODO QUE VERIFICA SI UN PRODUCTO TIENE PROMOCION O NO 
        /// </summary>
        /// <returns></returns>
        private double devuelvevPromocion(double cantidad)
        {
            //------------para detemiar las promociones ----------------------
            //   0---> sin promocion
            //   1---> promocion 2x1
            //   2---> promocion 3x2
            double precioT = 0;
            double nroProductos = cantidad;
            //aqui se intervie en las promociones
            if (Cfunciones.Globales.promocion == 1 || Cfunciones.Globales.promocion == 2)
            {
                if (Cfunciones.Globales.promocion == 1 && nroProductos == 2)//promocion 2x1
                    precioT = (Cfunciones.Globales.precioVenta * 1);
                if (Cfunciones.Globales.promocion == 2 && nroProductos == 3)//promocion 3x2
                    precioT = (Cfunciones.Globales.precioVenta * 2);
                if ((Cfunciones.Globales.promocion == 1 && (nroProductos < 2 || nroProductos > 3)) || (Cfunciones.Globales.promocion == 2 && (nroProductos < 2 || nroProductos > 3)))
                    precioT = (Cfunciones.Globales.precioVenta * nroProductos);
            }
            else
                precioT = (Cfunciones.Globales.precioVenta * nroProductos);
            //DESPUES DE LOS CALCULOS REINICIAMOS EL VALOR DE PROMOCION
            Cfunciones.Globales.promocion = 0;
<<<<<<< HEAD

            return precioT;
        }


        /// <summary>
        /// METODO QUE ETERMINA EL DESCUENTO DE UN PRODUCTO
        /// </summary>
        /// <returns></returns>
        private  int verificaDescuento()
        {   
            int descuento = 0;
            //para validar el codigo de producto
            if (Cfunciones.Globales.codigo != "")
            {
                
                //verificacion 01 descuento por producto
                object[] filtros = { "PRODUCTO", "CATEGORIA", "PROVEEDOR" };//ALMACENAMOS LOS FILTROS 

=======

            return precioT;
        }


        /// <summary>
        /// METODO QUE ETERMINA EL DESCUENTO DE UN PRODUCTO
        /// </summary>
        /// <returns></returns>
        private  int verificaDescuento()
        {   
            int descuento = 0;
            //para validar el codigo de producto
            if (Cfunciones.Globales.codigo != "")
            {
                
                //verificacion 01 descuento por producto
                object[] filtros = { "PRODUCTO", "CATEGORIA", "PROVEEDOR" };//ALMACENAMOS LOS FILTROS 

>>>>>>> 359a58f4fcf964ae8fc96123a01ddb54ac86d787
                object[] datosDes = { "pIdProducto", "pCriterio", "pFecha" };//DATOS PARA DETERMINAR EL DESCUENTO 
                object[] variablesDes = { "pIdProducto", "pCriterio", "pFecha" };//VARIABLES PARA CALCULAR EL DESCUENTO
                datosDes[0] = Cfunciones.Globales.codigo;
                datosDes[2] = ConexionBD.FechaFormatoMySQL(lbFecha.Text, 1); ;
                ConexionBD.Conectar(false, string_ArchivoConfiguracion);
                for (int i = 0; i < filtros.Length; i++)
                {
                    datosDes[1] = filtros[i];
                    //aqui almacenamos los descuentos acumulados de un soolo producto
                    descuento = descuento + ConexionBD.EjecutarProcedimientoReturnEntero("venta_buscaDescuento", variablesDes, datosDes);
                    // ojo realizamos interes compuesto solo para esl mismo producto
                }
            }
            return descuento;
        }
    






        private void tbBusca_KeyUp(object sender, KeyEventArgs e)
        {
            if (tbBusca.Text.Length > 5)
            {
                if (e.KeyCode == Keys.Enter)
                {

                    buscarProducto(tbBusca.Text);
                    AgregaProducto();
                }
            }
        }


        /// <summary>
        /// METODO QUE BUSCA EL PRODUCTO ACTIVADO DESDE EL LECTOR DE CODIGO DE BARRAS
        /// </summary>
        public void buscarProducto(string SerieNombre)
        {
            object[] datosBusqueda = new object[2];
            object[] VariablesBusqueda = { "pCriterio", "pFiltro" };
            datosBusqueda[0] = "PRODUCTOS";
            datosBusqueda[1] = SerieNombre;
            try
            {
                ConexionBD.Conectar(false, string_ArchivoConfiguracion);
                DataSet dsDatosGrid = ConexionBD.EjecutarProcedimientoReturnDataSet("busca_descuento", VariablesBusqueda, datosBusqueda);
                ConexionBD.Desconectar();
                
                if (dsDatosGrid.Tables[0].Rows.Count > 0)
                {

                    Cfunciones.Globales.codigo = dsDatosGrid.Tables[0].Rows[0][0].ToString();
                    Cfunciones.Globales.valor = dsDatosGrid.Tables[0].Rows[0][1].ToString();


                    Cfunciones.Globales.precioVenta = Convert.ToDouble(dsDatosGrid.Tables[0].Rows[0][5].ToString());/**/
                    Cfunciones.Globales.stock = Convert.ToInt32(dsDatosGrid.Tables[0].Rows[0][7].ToString());       /**/
                    Cfunciones.Globales.stockMinimo = Convert.ToInt32(dsDatosGrid.Tables[0].Rows[0][8].ToString()); /**/
                    Cfunciones.Globales.idCategoria = Convert.ToInt32(dsDatosGrid.Tables[0].Rows[0][6].ToString()); /**/
                    Cfunciones.Globales.promocion = Convert.ToInt32(dsDatosGrid.Tables[0].Rows[0][13].ToString()); /**/

                   
                }
                
            }
            catch { }
        }



        private void dgvDatos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if ((e.RowIndex >= 0) && (e.ColumnIndex == 0) )
            {
                if (e.ColumnIndex == 0)
                {// EDITAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE PRODUCTO? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                    
                        //ABTENEMOS LOS DATOS REQUERIDOS PARA LA BUSQUEDA DESDE LA GRRILLA
                        string nombre = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                        double cantidad = Convert.ToDouble(dgvDatos.Rows[e.RowIndex].Cells[4].Value);
                        double descuentoSoles=0;


                        //POR CADA REMOCION DE PRODUCTO DE LA GRILLA REALIZAR LOS CALCULOS OTRA VEZ
                        buscarProducto(nombre);
                        int descuento = verificaDescuento();
                        double totalUnitario = devuelvevPromocion(cantidad); 
                        //calculo del monto total
                        descuentoSoles = totalUnitario*descuento / 100;


                        //realizamos las operaciones
                        //variamos el valor del descueto
                        descuentoTotal = descuentoTotal - descuentoSoles;
                        //-----------------------------
                        tbDescuentoSoles.Text = descuentoTotal.ToString("C2", CultureInfo.CurrentCulture);
                        //--------------------------
                        //determinamos el valor total del importe
                        importe = (importe - totalUnitario) + descuentoSoles;
                        //------------------------------
                        tbImporte.Text = importe.ToString("C2", CultureInfo.CurrentCulture);
                        //-----------------------------



                        //LLIMPIA LOS VALORES DE LA GRILLA;
                        dgvDatos.Rows.RemoveAt(dgvDatos.CurrentRow.Index);
                        contador--;
                       
                    }
                   
                }
            }
        }


        
        private void limpir()
        {
            Cfunciones.Globales.codigo = "";
            Cfunciones.Globales.valor = "";
            Cfunciones.Globales.precioVenta = 0;
            Cfunciones.Globales.stock = 0;       
            Cfunciones.Globales.stockMinimo = 0; 
            Cfunciones.Globales.idCategoria = 0; 
            Cfunciones.Globales.promocion = 0; 

            tbCantidad.Text = "1";
            tbBusca.Focus();
            tbBusca.Select();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            lbFecha.Text = DateTime.Now.ToString();
        }

        private void btnFactirar_Click(object sender, EventArgs e)
        {
            //Cfunciones.Globales.importe = importe;
            //frmSaldos saldo = new frmSaldos();
            //saldo.ShowDialog();
            ////actualizamos el cambio
            //tbCambio.Text = Cfunciones.Globales.cambio.ToString("C2", CultureInfo.CurrentCulture);


            
        }


        /// <summary>
        /// METODO QUE DONDE SE FINALIZA LA TRANSACCION Y SE REALIZA LA IMPRESION Y ALMACENADO EN LA BASE DE DATOS 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void dgvDatos_KeyPress(object sender, KeyPressEventArgs e)
        {
            Cfunciones.Globales.importe = importe;
            frmSaldos saldo = new frmSaldos();
            saldo.ShowDialog();
            //actualizamos el cambio
            tbCambio.Text = Cfunciones.Globales.cambio.ToString("C2", CultureInfo.CurrentCulture);
            tbPagoCon.Text = Cfunciones.Globales.pago.ToString("C2", CultureInfo.CurrentCulture);

            //teniedo las operaciones resueltas 
            // imprimimos el tiket
            
            //luego guardamos los datos de venta a la base de datos
        }




        /// <summary>
        /// METODO PARA GUADAR LA VENTA
        /// </summary>
        private void GuardarVenta()
        {

            if (datosVenta == null || datosVenta[0] == null)
            {
                datosVenta = new object[13];
                datosVenta[0] = "0";
            }
            datosVenta[0] = datosVenta[0].ToString().Trim();
            datosVenta[1] = Cfunciones.Globales.ruc;
            datosVenta[2] = subtotal;
            datosVenta[3] = igv;
            datosVenta[4] = importe;
            datosVenta[5] = formaPago;
            datosVenta[6] = Cfunciones.Globales.idUsuario;

            DateTime fecha = DateTime.Now;
            datosVenta[7] = ConexionBD.FechaFormatoMySQL(fecha, 1);
            datosVenta[8] = tbSerie.Text;//es el numero de serie de la boleta de venta
            datosVenta[9] = tbNumero.Text;//
            datosVenta[10] = tbCaja.Text;
            datosVenta[11] = tipoComprobante;
            datosVenta[12] = 0;
 
           
            /*-----PROCESO DE AGREGAR DATOS A TABLA PORDUCTOPORCOMPRAS---------*/


            object[] NombresVenta = { "pId", "pIdCliente", "pSubtotal", "pImpuesto", "pTotal", "pIdFormaPago", "pIdUsuario", "pFechaVenta", "pSerie","pNroVenta","pNroCaja","pIdTipoComprobante"};

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {

                ConexionBD.EjecutarProcedimientoReturnVoid("ventas_guarda", NombresVenta, datosVenta);
                ConexionBD.COMMIT();

                SeGuardo = true;
                tipo = Tipo.guardar;
                habilitaBoton();
            }
            catch//(Exception ex)
            {
                ConexionBD.ROLLBACK();
                SeGuardo = false;
                //MessageBox.Show(ex.Message);
            }
            finally
            {
                ConexionBD.Desconectar();

            }

            if (SeGuardo)
            {
                GuardaDetalle();
                MessageBox.Show("LOS DATOS SE GUARDARON EXITOSAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                limpiaVenta();
                limpir();//debe haber un limpiar grilla


            }
            else
                MessageBox.Show("ERROR AL GUARDAR LOS DATOS, INTENTE NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);

            limpiaVenta();
            limpir();
        }

        /// <summary>
        /// metodo para guardar el detalle venta
        /// </summary>
        private void GuardaDetalle()
        {
            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            //CODIGO PARA ALMACENAR LA LISTA DE PRODUCTOS ADJUNTOS DE DATAGRIDVIEW 
            try
            {
<<<<<<< HEAD
             
                for (int i = 0; i < dgvDatos.Rows.Count; i++)
                {
                    if (datosDetalle == null || datosDetalle[0] == null)
                    {
                        datosDetalle = new object[7];
                        datosDetalle[0] = "0";
                    }
                    datosDetalle[0] = datosDetalle[0].ToString().Trim();
                    datosDetalle[1] = Convert.ToInt32(idVenta) + 1;
                    datosDetalle[2] = dgvDatos.Rows[i].Cells[1].Value.ToString();
                    datosDetalle[3] = dgvDatos.Rows[i].Cells[2].Value.ToString();
                    datosDetalle[4] = dgvDatos.Rows[i].Cells[3].Value.ToString();
                    datosDetalle[5] = dgvDatos.Rows[i].Cells[4].Value.ToString();
                    datosDetalle[6] = dgvDatos.Rows[i].Cells[5].Value.ToString();
=======
                for (int i = 0; i < dgvDatos.Rows.Count; i++)
                {

                    datosDetalle[0] = dgvDatos.Rows[i].Cells[1].Value.ToString();
                    datosDetalle[1] = dgvDatos.Rows[i].Cells[2].Value.ToString();
                    datosDetalle[2] = dgvDatos.Rows[i].Cells[4].Value.ToString();
                    datosDetalle[3] = dgvDatos.Rows[i].Cells[5].Value.ToString();
                    datosDetalle[4] = dgvDatos.Rows[i].Cells[6].Value.ToString();
                    datosDetalle[5] = dgvDatos.Rows[i].Cells[7].Value.ToString();
                    datosDetalle[6] = dgvDatos.Rows[i].Cells[8].Value.ToString();
>>>>>>> 359a58f4fcf964ae8fc96123a01ddb54ac86d787
                    object[] NombresProducto = { "pIdProducto", "pIdCompra", "pCantidad", "pPrecioCompra", "pSubtotal", "pIgv", "pPrecioTotal" };

                    ConexionBD.EjecutarProcedimientoReturnVoid("compraxproducto_guarda", NombresProducto, DatosProducto);

                }
                ConexionBD.COMMIT();
            }
            catch
            { ConexionBD.ROLLBACK(); }
            finally
            { ConexionBD.Desconectar(); }
        }


        private void limpiaVenta()
        {
            dgvDatos.Rows.Clear();
        }

    }
}

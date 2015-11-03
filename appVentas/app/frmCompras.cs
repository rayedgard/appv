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
    public partial class frmCompras : Form
    {


        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosCompra = new object[9];
        object[] DatosProducto = new object[7];
        string string_ArchivoConfiguracion;
        string idProveedor;
        double IGV; //igv definido coo impuesto
        string idCompra=""; //valor id recuperado de base de datos para la gestop de la nueva venta


        public frmCompras(string ArchivoCOnfig)
        {
            InitializeComponent();
            string_ArchivoConfiguracion = ArchivoCOnfig;
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();

            listarCompras();
            listaDatos();
        }

        private void listaDatos()
        {
           
            //obteniendo el numero de caja e IGV
            CConfigXML configXml_ArchivoConfiguracion = new CConfigXML(string_ArchivoConfiguracion);
            IGV = Convert.ToDouble(configXml_ArchivoConfiguracion.GetValue("principal", "igv", ""));//---> igv impuesto sunat


            btnBuscaProveedor.Focus();

            //consulta para determinar el id de la compra 
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            idCompra = ConexionBD.EjecutarProcedimientoReturnMensaje("compras_id");
            ConexionBD.Desconectar();

        }


        /// <summary>
        /// metodo que lista las compras realizadas
        /// </summary>
        private void listarCompras()
        {

            //Cargar areas
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            dgvDatos.Rows.Clear();


            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("compras_lista");

            
            if (datos.Tables[0].Rows.Count >= 1)
            {

                dgvDatos.Rows.Add(datos.Tables[0].Rows.Count);

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.edit_button);
                    dgvDatos.Rows[i].Cells[1].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvDatos.Rows[i].Cells[2].Value = datos.Tables[0].Rows[i][0];//id
                    dgvDatos.Rows[i].Cells[3].Value = datos.Tables[0].Rows[i][1];//id Proveedor
                    dgvDatos.Rows[i].Cells[4].Value = datos.Tables[0].Rows[i][2];//proveedor nombre
                    dgvDatos.Rows[i].Cells[5].Value = datos.Tables[0].Rows[i][3];//fecha compra
                    dgvDatos.Rows[i].Cells[6].Value = datos.Tables[0].Rows[i][4];//numero factura
                    dgvDatos.Rows[i].Cells[7].Value = datos.Tables[0].Rows[i][5];//observacion
                    dgvDatos.Rows[i].Cells[8].Value = datos.Tables[0].Rows[i][6];//subtotal
                    dgvDatos.Rows[i].Cells[9].Value = datos.Tables[0].Rows[i][7];//impuesto
                    dgvDatos.Rows[i].Cells[10].Value = datos.Tables[0].Rows[i][8];//total
                    dgvDatos.Rows[i].Cells[11].Value = datos.Tables[0].Rows[i][9];//estado
                    if (Convert.ToInt32(datos.Tables[0].Rows[i][9]) == 1)
                    {
                        dgvDatos.Rows[i].DefaultCellStyle.BackColor = Color.Red;
                        dgvDatos.Rows[i].DefaultCellStyle.ForeColor = Color.White;
                    }

                }
            }
            ConexionBD.Desconectar();
        }

        /// <summary>
        /// metodo que lista los productos comprados en una compra determinada
        /// </summary>
        private void listaProducto(string idCompras)
        {
            //Cargar areas
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            dgvProductos.Rows.Clear();

            DataSet datosProductos = ConexionBD.EjecutarProcedimientoReturnDataSet("compraxproducto_lista", "pIdCompra", idCompras);

            if (datosProductos.Tables[0].Rows.Count >= 1)
            {

                dgvProductos.Rows.Add(datosProductos.Tables[0].Rows.Count);

                for (int i = 0; i < datosProductos.Tables[0].Rows.Count; i++)
                {
                    dgvProductos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvProductos.Rows[i].Cells[1].Value = datosProductos.Tables[0].Rows[i][0];//id producto
                    dgvProductos.Rows[i].Cells[2].Value = datosProductos.Tables[0].Rows[i][1];//id compra
                    dgvProductos.Rows[i].Cells[3].Value = datosProductos.Tables[0].Rows[i][2];//producto
                    dgvProductos.Rows[i].Cells[4].Value = datosProductos.Tables[0].Rows[i][3];//cantidad
                    dgvProductos.Rows[i].Cells[5].Value = datosProductos.Tables[0].Rows[i][4];//precio compra
                    dgvProductos.Rows[i].Cells[6].Value = datosProductos.Tables[0].Rows[i][5];//subtoral
                    dgvProductos.Rows[i].Cells[7].Value = datosProductos.Tables[0].Rows[i][6];//igv
                    dgvProductos.Rows[i].Cells[8].Value = datosProductos.Tables[0].Rows[i][7];//total
                 
                }
            }
            ConexionBD.Desconectar();
        }





        private void btnBuscaProducrto_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "PRODUCTOS";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();

            if (clases.Cfunciones.Globales.codigo != "")
            {
                frmItems items = new frmItems();
                items.ShowDialog();
            }
            buscaProducto(Cfunciones.Globales.valor, Cfunciones.Globales.codigo, Cfunciones.Globales.precioCompra, Cfunciones.Globales.cantidadCompra);
            //eliminamos los valores para nogenerar duplicidad
            Cfunciones.Globales.valor="";
            Cfunciones.Globales.codigo="";
            Cfunciones.Globales.precioCompra=0;
            Cfunciones.Globales.cantidadCompra = 0;

            tipo = Tipo.guardar;
            habilitaBoton();
        }


        //variables para guardar los valores de compra
        int contador = 0;
        //datos para el calculo de la compra
        double subtoralCompra = 0;//Subtotal acumulado 
        double igvCompra = 0;//igv Acumulado
        double totalCompra = 0;//Toal acumulado
        

        /// <summary>
        /// METODO DE BUSQUEDA DE PRODUCTO POR MEDIO DE LECTOS DE BARRAS
        /// </summary>
        private void buscaProducto(string NombreProducto, string id, double precioCompra, double cantidadCompra)
        {
            
                try
                {
                    if (NombreProducto.Length > 2 && precioCompra>0 && cantidadCompra>0)
                    {

                            dgvProductos.Rows.Add();

                            dgvProductos.Rows[contador].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                            dgvProductos.Rows[contador].Cells[1].Value = id;//idProducto
                            dgvProductos.Rows[contador].Cells[2].Value = Convert.ToInt32(idCompra)+1;//id compra--> SE INCREMENTA EN UNO PARA EL ALMACENAMIENTO
                            dgvProductos.Rows[contador].Cells[3].Value = NombreProducto;//nombre producto
                            dgvProductos.Rows[contador].Cells[4].Value = cantidadCompra;//cantiodad de compra
                            dgvProductos.Rows[contador].Cells[5].Value = precioCompra;//cantiodad de compra
                            double precioTotal = cantidadCompra*precioCompra;//precoi total de compra por producto
                            double subTotal = precioTotal / 1.18;//calculo momentaneo hasta la configuracion de igv 
                            double igv = precioTotal - subTotal; //impuesto disgregado por producto

                            dgvProductos.Rows[contador].Cells[6].Value = subTotal;//subtoral
                            dgvProductos.Rows[contador].Cells[7].Value = igv;//subtoral
                            dgvProductos.Rows[contador].Cells[8].Value = precioTotal;//subtoral
                            contador++;

                            
                            //calculos
                            totalCompra += precioTotal;
                            //actualizamos las cajas de texto
                            tbToalCompras.Text = totalCompra.ToString("C2", CultureInfo.CurrentCulture);//costo total de compras
                           

                           //calculamos los costos, impuestos y demas
                            //calculos
                            subtoralCompra = totalCompra/ ((IGV / 100) + 1);//calculo del subtotal
                            igvCompra =totalCompra - subtoralCompra;

                            // asignamos los valores en soles para los texbox
                            tbToalCompras.Text = totalCompra.ToString("C2", CultureInfo.CurrentCulture);
                            tbSubtoralCompras.Text = subtoralCompra.ToString("C2", CultureInfo.CurrentCulture);
                            tbIGVCompras.Text = igvCompra.ToString("C2", CultureInfo.CurrentCulture);


                    }
                


                }
                catch//(Exception ex)
                {

                }

            ConexionBD.Desconectar();

        }





        #region ------para las logica de botoners-------------
        private enum Tipo
        {
            guardar, modificar, eliminar, grid,producto
        }
        private Tipo tipo;




        private void habilitaBoton()
        {
            btnGuardar.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar || tipo == Tipo.producto;
            gbDatos.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar || tipo == Tipo.producto;
            dgvDatos.Enabled = dgvDatos.Rows.Count > 0;
            dgvProductos.Enabled = dgvProductos.Rows.Count > 0;
            btnBuscaProducto.Enabled = tipo == Tipo.producto || tipo == Tipo.guardar || tipo == Tipo.modificar;

        }
        #endregion







        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (validaError(tbProveedor, "Seleccione un Proveedor") && validaError(tbNroFactura , "Ingrese el número de factura de compra") && validaErrorDGV(dgvProductos, "Debe agregar al menos un producto"))
            {
                GuardarDatos();
            }
        }


        #region METODO DE VALIDADCION
        /// <summary>
        /// METODO DE VALIDACION DE TEXBOX
        /// </summary>
        /// <param name="tb">CAJA DE TEXTO</param>
        /// <param name="tex">MENSAJE</param>
        /// <returns></returns>
        private bool validaError(TextBox tb, string tex)
        {

            if (tb.Text.Length == 0 && tb.Text == "")
            {
                epValida.SetError(tb, tex);
                tb.Focus();
                return false;
            }
            else
            {
                epValida.Clear();
                return true;
            }
        }


        /// <summary>
        /// METODO DE VALIDACION DE LA GRILLA
        /// </summary>
        /// <param name="grilla">datagrid view</param>
        /// <param name="tex">mesaje</param>
        /// <returns></returns>
        private bool validaErrorDGV(DataGridView grilla,string tex)
        {

            if (grilla.Rows.Count==0)
            {
                epValida.SetError(grilla, tex);
                grilla.Focus();
                return false;
            }
            else
            {
                epValida.Clear();
                return true;
            }
        }
        #endregion


        private void GuardarDatos()
        {

            if (DatosCompra == null || DatosCompra[0] == null)
            {
                DatosCompra = new object[9];
                DatosCompra[0] = "0";
            }
            DatosCompra[0] = DatosCompra[0].ToString().Trim();
            DatosCompra[1] = idProveedor;
            DatosCompra[2] = ConexionBD.FechaFormatoMySQL(dtpFechaCompra.Value, 0);
            DatosCompra[3] = tbNroFactura.Text;
            DatosCompra[4] = tbObservacion.Text;
            DatosCompra[5] = subtoralCompra;
            DatosCompra[6] = igvCompra;
            DatosCompra[7] = totalCompra;
            if (rbtActivo.Checked)
                DatosCompra[8] = 0;
            else
                DatosCompra[8] = 1;
            /*-----PROCESO DE AGREGAR DATOS A TABLA PORDUCTOPORCOMPRAS---------*/
           
           
            object[] NombresCompras = { "pId", "pIdProveedor", "pFechaCompra", "pNroFactura", "pObservacion", "pSubtotal", "pImpuesto", "pTotal", "pEstado"};

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {
               
                ConexionBD.EjecutarProcedimientoReturnVoid("compras_guarda", NombresCompras, DatosCompra);
                ConexionBD.COMMIT();
              
                SeGuardo = true;
                listarCompras();
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
                GuardaProductos();
                MessageBox.Show("LOS DATOS SE GUARDARON EXITOSAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LimpiarDatos();

                
            }
            else
                MessageBox.Show("ERROR AL GUARDAR LOS DATOS, INTENTE NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);


            LimpiarDatos();
        }


        private void GuardaProductos()
        {
            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            //CODIGO PARA ALMACENAR LA LISTA DE PRODUCTOS ADJUNTOS DE DATAGRIDVIEW 
            try
            {
                for (int i = 0; i < dgvProductos.Rows.Count; i++)
                {

                    DatosProducto[0] = dgvProductos.Rows[i].Cells[1].Value.ToString();
                    DatosProducto[1] = dgvProductos.Rows[i].Cells[2].Value.ToString();
                    DatosProducto[2] = dgvProductos.Rows[i].Cells[4].Value.ToString();
                    DatosProducto[3] = dgvProductos.Rows[i].Cells[5].Value.ToString();
                    DatosProducto[4] = dgvProductos.Rows[i].Cells[6].Value.ToString();
                    DatosProducto[5] = dgvProductos.Rows[i].Cells[7].Value.ToString();
                    DatosProducto[6] = dgvProductos.Rows[i].Cells[8].Value.ToString();
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



        /// <summary>
        /// METODO PARA LIMPIAR FORM
        /// </summary>
        private void LimpiarDatos()
        {
           
            tbProveedor.Text = "";
            dtpFechaCompra.Value = DateTime.Now;
            tbNroFactura.Text = "";
            rbtActivo.Checked = true;

            tbSubtoralCompras.Text = "0";
            tbIGVCompras.Text = "0";
            tbToalCompras.Text = "0";

            dgvProductos.Rows.Clear();
            contador=0;
            //PARA REDEDINIR LOS VALORES ACUMULADOS
            subtoralCompra = 0;
            igvCompra = 0;
            totalCompra = 0;
        }


        private void btnNuevo_Click(object sender, EventArgs e)
        {
            gbDatos.Enabled = true;
            LimpiarDatos();
        }

  

        private void tbNroFactura_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (tbProveedor.Text.Length > 2 && tbNroFactura.Text.Length >= 2)
            {
                tipo = Tipo.producto;
                habilitaBoton();
            }
        }

        private void dgvProductos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if ((e.RowIndex >= 0) && (e.ColumnIndex == 0))
            {
                if (e.ColumnIndex == 0)
                {// EDITAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE PRODUCTO? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        //LimpiarDatosHorario();
                        dgvProductos.Rows.RemoveAt(dgvProductos.CurrentRow.Index);
                        contador--;

                    }

                }
            }
        }

        private void btnBuscaProveedor_Click(object sender, EventArgs e)
        {
            clases.Cfunciones.Globales.criterio = "PROVEEDOR";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
            tbProveedor.Text = Cfunciones.Globales.valor;//nombre del proveedor
            idProveedor = Cfunciones.Globales.codigo;//codigo id del proveedor
        }



        private void dgvDatos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if ((e.RowIndex >= 0) && ((e.ColumnIndex == 0) || (e.ColumnIndex == 1)))
            {
                if (e.ColumnIndex == 0)
                {// EDITAR

                    idCompra = dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString();//almacena el id de la compra
                    idProveedor = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();// ide de proveedor 
                    tbProveedor.Text = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();// nombre del proveedor
                    dtpFechaCompra.Value = Convert.ToDateTime(dgvDatos.Rows[e.RowIndex].Cells[5].Value);//fecha de compra
                    tbNroFactura.Text = dgvDatos.Rows[e.RowIndex].Cells[6].Value.ToString();// numero de fatura de la compra
                    tbObservacion.Text = dgvDatos.Rows[e.RowIndex].Cells[7].Value.ToString();//observaciones
                    tbSubtoralCompras.Text = dgvDatos.Rows[e.RowIndex].Cells[8].Value.ToString();// monto subtotal de la compra
                    tbIGVCompras.Text = dgvDatos.Rows[e.RowIndex].Cells[9].Value.ToString();// impuesto de la compra
                    tbToalCompras.Text = dgvDatos.Rows[e.RowIndex].Cells[10].Value.ToString();// total de la compra
                    if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[11].Value) == 0)//validad compras activas o inactivcas
                    {
                        rbtActivo.Checked = true;
                    }
                    else
                    {
                        rbtInactivo.Checked = true;
                    }


                    /****AQUI ALMACENAMOS LOS DATOS EN EL ARREGLO --- PARA MODIFICACION---***/
                    DatosCompra = new object[9];
                    DatosCompra[0] = dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString();

                    listaProducto(dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString());


                    tipo = Tipo.modificar;
                    habilitaBoton();
                }
                else
                {//ELIMINAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE DESCUENTO? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        //LimpiarDatosHorario();
                        ConexionBD.Conectar(true, string_ArchivoConfiguracion);
                        bool SeElimino = false;
                        try
                        {

                            /*-----evaluamos la eliminacion indivifual de la compra de productos-----*/
                            /*----Almacena los datos de compra en datosproducto------*/
                            DataSet datosProductos = ConexionBD.EjecutarProcedimientoReturnDataSet("compraxproducto_lista", "pIdCompra", dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString());

                            object[] datosProductoElimina = new object[2];
                            object[] NombresProductoElimina = { "pIdProducto", "pIdCompra"};

                            for (int j = 0; j < datosProductos.Tables[0].Rows.Count; j++)
                            {
                                datosProductoElimina[0]= datosProductos.Tables[0].Rows[j][0];//id producto
                                datosProductoElimina[1] = datosProductos.Tables[0].Rows[j][1];
                                /*------ELIMINA LA COMPRA DE PRODUCTOS UNITARIOS------*/
                                ConexionBD.EjecutarProcedimientoReturnVoid("compraxproducto_elimina",NombresProductoElimina, datosProductoElimina);

                            }
                            /*-----------ELIMIA LA COMPRA TOTAL----------------*/
                            ConexionBD.EjecutarProcedimientoReturnVoid("compras_elimina", "pId", dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString());
                            ConexionBD.COMMIT();
                            SeElimino = true;
                            listarCompras();
                            tipo = Tipo.eliminar;
                            habilitaBoton();

                        }
                        catch
                        {
                            ConexionBD.ROLLBACK();
                            SeElimino = false;
                        }
                        finally
                        {
                            ConexionBD.Desconectar();
                        }

                        if (SeElimino)
                            MessageBox.Show("DATOS ELIMINADOS CON EXITO", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        else
                            MessageBox.Show("HUBO UN ERROR AL ELIMINAR LA UNIDAD, INTENTELO NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        LimpiarDatos();
                    }

                }
            }
        }
    }
}

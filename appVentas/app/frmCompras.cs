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
        object[] DatosCategoria = new object[4];
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

            //listar();
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

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void label13_Click(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnBuscaProducrto_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "PRODUCTOS";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();

            frmItems items = new frmItems();
            items.ShowDialog();

            buscaProducto(Cfunciones.Globales.valor, Cfunciones.Globales.codigo, Cfunciones.Globales.precioCompra, Cfunciones.Globales.cantidadCompra);
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

                            dgvProductos.Rows[contador].Cells[6].Value = subTotal.ToString("C2", CultureInfo.CurrentCulture);//subtoral
                            dgvProductos.Rows[contador].Cells[7].Value = igv.ToString("C2", CultureInfo.CurrentCulture);//subtoral
                            dgvProductos.Rows[contador].Cells[8].Value = precioTotal.ToString("C2", CultureInfo.CurrentCulture);//subtoral
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
                //GuardarDatos();
                MessageBox.Show("entro para agregar","mesaje");
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







        private void btnNuevo_Click(object sender, EventArgs e)
        {
            gbDatos.Enabled = true; 
        }

        private void btnBuscaProducto_Click(object sender, EventArgs e)
        {
            clases.Cfunciones.Globales.criterio = "PROVEEDOR";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
            tbProveedor.Text = Cfunciones.Globales.valor;//nombre del proveedor
            idProveedor = Cfunciones.Globales.codigo;//codigo id del proveedor
        }

        private void frmCompras_Load(object sender, EventArgs e)
        {
                        
             
        }

        private void tbNroFactura_TextChanged(object sender, EventArgs e)
        {
            
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
    }
}

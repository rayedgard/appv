using clases;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace app
{
    public partial class frmCliente : Form
    {
        CValidacion ValidarDatos;
        CConection ConexionBD;
        object[] DatosClient = new object[7];
        string string_ArchivoConfiguracion;
        public frmCliente(string ArchivoConfig)
        {
            string_ArchivoConfiguracion = ArchivoConfig;
            InitializeComponent();
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();

        }

      


        private void validaNumeros(object sender, KeyPressEventArgs e)
        {
            ValidarDatos.texto_KeyPress(((TextBox)sender).Text, "Numeros", sender, e);
            if (e.KeyChar == '\r')
            {
                e.Handled = true;
                SendKeys.Send("{TAB}");
            }
        }

        private void tbDniRuc_TextChanged(object sender, EventArgs e)
        {
            if (tbDniRuc.Text.Length == 11)
            {
                buscaCliente(tbDniRuc.Text);
                
            }
        }

        /// <summary>
        /// METODO DE BUSQUEDA DE CLEINTES 
        /// </summary>
        private void buscaCliente(string filtro)
        {
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);

            DataSet cliente = ConexionBD.EjecutarProcedimientoReturnDataSet("cliente_busca", "pFiltro", filtro);

            if (cliente.Tables[0].Rows.Count > 0)
            {
                //habilitamos los  elementos y botones
                btnEnviar.Enabled = true;
                tbRazon.Text = cliente.Tables[0].Rows[0][0].ToString();//razon social
                tbDireccion.Text = cliente.Tables[0].Rows[0][1].ToString();//direccion 
                EnvioDatos();
                this.Close();
            }
            else
            {
                //habilitamos texbox y boton guardar
                tbRazon.Enabled = true;
                tbDireccion.Enabled = true;
                btnGuardar.Enabled = true;
                
            }

            ConexionBD.Desconectar();

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (validaError(tbDniRuc, "Ingrese el número de su RUC") && validaError(tbRazon, "Ingrese su Razon Social") && validaError(tbDireccion, "Ingrese su Dirección"))
            {
                GuardarDatos();
                EnvioDatos();
                this.Close();
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
        #endregion
               

        private void GuardarDatos()
        {
            DateTime fechaActual = DateTime.Today;
            DatosClient[0] = tbDniRuc.Text;
            DatosClient[1] = tbRazon.Text;
            DatosClient[2] = "";
            DatosClient[3] = tbDireccion.Text;
            DatosClient[4] = fechaActual;
            DatosClient[5] = "";
            DatosClient[6] = 0;
            
          


            object[] NombresClient = { "pDocumento", "pRazon", "pTelefono", "pDireccion", "pFechaRegistro", "pEmail", "pEstado" };

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {
                ConexionBD.EjecutarProcedimientoReturnVoid("cliente_guarda", NombresClient, DatosClient);
                ConexionBD.COMMIT();
                SeGuardo = true;
  
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
                MessageBox.Show("LOS DATOS SE GUARDARON EXITOSAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                
            }
            else
                MessageBox.Show("ERROR AL GUARDAR LOS DATOS, INTENTE NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);

            
        }

        /// <summary>
        /// METODO PARA EL ENVIO DE DATOS PARA LA FACTURACION
        /// </summary>
        private void EnvioDatos()
        {
            //paso de variables
            Cfunciones.Globales.ruc = tbDniRuc.Text;
            Cfunciones.Globales.razon = tbRazon.Text;
            Cfunciones.Globales.direccion = tbDireccion.Text;
        }




    }
}

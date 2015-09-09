using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using clases;

namespace app
{
    public partial class frmItems : Form
    {
        CValidacion ValidarDatos;
        public frmItems()
        {
            InitializeComponent();
            ValidarDatos = new CValidacion();
        }

        private void frmItems_Load(object sender, EventArgs e)
        {
            tbPrecio.Focus();
            tbPrecio.Select();

            lbProducto.Text = clases.Cfunciones.Globales.valor;

            
        }


        /// <summary>
        /// metodo para validar numeros en texbox
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void validaNumeros(object sender, KeyPressEventArgs e)
        {
            ValidarDatos.texto_KeyPress(((TextBox)sender).Text, "decimal", sender, e);
            if (e.KeyChar == '\r')
            {
                e.Handled = true;
                SendKeys.Send("{TAB}");
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

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            if (validaError(tbPrecio, "Ingrese el Precio correcto del Producto") && validaError(tbCantidad, "Ingrese la cantidad del producto a comprar"))
            {
                Cfunciones.Globales.precioCompra = Convert.ToDouble(tbPrecio.Text);
                Cfunciones.Globales.cantidadCompra = Convert.ToDouble(tbCantidad.Text);

                this.Close();
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

    }
}

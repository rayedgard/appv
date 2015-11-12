using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using clases;
using System.Globalization;

namespace app
{
    public partial class frmSaldos : Form
    {
        double importe1=0;
        double cambio1 = 0;
        double pago1 = 0;
        public frmSaldos()
        {
            InitializeComponent();
            importe1 =Cfunciones.Globales.importe;
            tbImporte.Text = importe1.ToString("C2", CultureInfo.CurrentCulture);

        }


        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            Cfunciones.Globales.cambio = cambio1;
            Cfunciones.Globales.pago = pago1;
            this.Close();
        }

        private void tbPago_TextChanged(object sender, EventArgs e)
        {
            if (tbPago.Text.Length > 0)
            {
                pago1 = Convert.ToDouble(tbPago.Text);
                //realizamos el calculo
                cambio1 = pago1 - importe1;

                tbCambio.Text = cambio1.ToString("C2", CultureInfo.CurrentCulture);
            }
        }

     
    }
}

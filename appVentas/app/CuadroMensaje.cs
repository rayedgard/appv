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
    public partial class CuadroMensaje : Form
    {
        public CuadroMensaje()
        {
            InitializeComponent();
            btnOK.Click += new EventHandler(btnOK_Click);
        }

        public string mensaje;
        public string stock;



        private void btnOK_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void CuadroMensaje_Load(object sender, EventArgs e)
        {
            lbMensaje.Text = mensaje;
            lbStock.Text = stock;
            
        }

        private void CuadroMensaje_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
            {
                this.Close();

            }
        }

        private void CuadroMensaje_KeyDown(object sender, KeyEventArgs e)
        {
            if ((Keys)e.KeyValue == Keys.Enter)
                this.Close();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

 
        

















    }
}

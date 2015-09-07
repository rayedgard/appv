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
            lbMensaje.Text = mensaje;
            lbStock.Text = stock;
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
            
        }

        
    }
}

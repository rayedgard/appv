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
    public partial class prueba : Form
    {
        public prueba()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("hola mundo");
        }

        private void prueba_Load(object sender, EventArgs e)
        {
            this.button1.Click += MiMetodo; 
        }

        private void MiMetodo(object sender, EventArgs e) 
        { 
            MessageBox.Show("Evento generado por " + sender.ToString()); 
        }

    }
}

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
    public partial class Principal : Form
    {
        string string_ArchivoConfiguracion;
        public Principal()
        {
            string_ArchivoConfiguracion = System.Environment.CurrentDirectory + @"\confiRed.cfg";
            InitializeComponent();
        }

        private void Principal_Load(object sender, EventArgs e)
        {
            string content = System.IO.File.ReadAllText("miTema.ini");
            Theme.ColorTable.ReadThemeIniFile(content);
            ribbon1.Refresh();
            this.Refresh();
        }

        private void ribbonButton1_Click(object sender, EventArgs e)
        {
            frmUsuario user = new frmUsuario(string_ArchivoConfiguracion);
            user.MdiParent = this;
            user.Show();
        }

        private void ribobClientes_Click(object sender, EventArgs e)
        {
            frmClientes user = new frmClientes(string_ArchivoConfiguracion);
            user.MdiParent = this;
            user.Show();
        }

        private void ribobProveedor_Click(object sender, EventArgs e)
        {
            frmProveedor user = new frmProveedor(string_ArchivoConfiguracion);
            user.MdiParent = this;
            user.Show();
        }

        private void ribobProducto_Click(object sender, EventArgs e)
        {
            frmProducto user = new frmProducto(string_ArchivoConfiguracion);
            user.MdiParent = this;
            user.Show();
        }

       
        private void ribbonButton19_Click(object sender, EventArgs e)
        {
            frmTipoDescuento td = new frmTipoDescuento(string_ArchivoConfiguracion);
            td.MdiParent = this;
            td.Show();

        }

        private void ribbonButton4_Click(object sender, EventArgs e)
        {
            frmUnidad unidad= new frmUnidad(string_ArchivoConfiguracion);
            unidad.MdiParent = this;
            unidad.Show();
        }

        private void ribbonButton5_Click(object sender, EventArgs e)
        {
            frmCategoria cat = new frmCategoria(string_ArchivoConfiguracion);
            cat.MdiParent = this;
            cat.Show();
        }

        private void ribbonButton6_Click(object sender, EventArgs e)
        {
            frmCaracteristicas car = new frmCaracteristicas(string_ArchivoConfiguracion);
            car.MdiParent = this;
            car.Show();
        }

        private void ribbonButton16_Click(object sender, EventArgs e)
        {
            frmTipoComprobante tipoCom = new frmTipoComprobante(string_ArchivoConfiguracion);
            tipoCom.MdiParent = this;
            tipoCom.Show();
        }

        private void ribbonButton14_Click(object sender, EventArgs e)
        {
            frmFormaPago fpago = new frmFormaPago(string_ArchivoConfiguracion);
            fpago.MdiParent = this;
            fpago.Show();
        }

        private void ribbonButton2_Click(object sender, EventArgs e)
        {
            frmDescuento desc = new frmDescuento(string_ArchivoConfiguracion);
            desc.MdiParent = this;
            desc.Show();
        }
    }
}

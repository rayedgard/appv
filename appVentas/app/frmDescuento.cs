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
    public partial class frmDescuento : Form
    {

        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosUser = new object[12];
        string string_ArchivoConfiguracion;
        public frmDescuento(string ArchivoCOnfig)
        {
            InitializeComponent();
            string_ArchivoConfiguracion = ArchivoCOnfig;
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();

            cbCriterio.Items.Add("PRODUCTO");
            cbCriterio.Items.Add("CATEGORIA");
            cbCriterio.Items.Add("PROVEEDOR");

            cbCriterio.SelectedIndex = 0;

            //listar();
        }

        private void dgvDatos_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }


        #region ------para las logica de botoners-------------
        private enum Tipo
        {
            guardar, modificar, eliminar, grid
        }
        private Tipo tipo;




        private void habilitaBoton()
        {
            btnGuardar.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            gbDatos.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            dgvDatos.Enabled = dgvDatos.Rows.Count > 0;


        }
        #endregion




        #region ---------------validacion caja de texto-----------------


        private void validaMayuscula(object sender, KeyPressEventArgs e)
        {
            ValidarDatos.texto_KeyPress(((TextBox)sender).Text, "LetrasNumerosEspacio", sender, e);

            //((TextBox)sender).CharacterCasing = CharacterCasing.Upper;

        }



        #endregion






        private void btnBusca_Click(object sender, EventArgs e)
        {
           
            clases.Cfunciones.Globales.criterio = cbCriterio.Text;

            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            tipo = Tipo.guardar;
            habilitaBoton();
            //LimpiarDatos();
        }
    }
}

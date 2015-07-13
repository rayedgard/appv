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
        object[] DatosDes = new object[7];
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

            listar();
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

        private void listar()
        {

            //Cargar areas
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            dgvDatos.Rows.Clear();


            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("descuento_lista");

            if (datos.Tables[0].Rows.Count >= 1)
            {

                dgvDatos.Rows.Add(datos.Tables[0].Rows.Count);

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.edit_button);
                    dgvDatos.Rows[i].Cells[1].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvDatos.Rows[i].Cells[2].Value = datos.Tables[0].Rows[i][0];//id
                    dgvDatos.Rows[i].Cells[3].Value = datos.Tables[0].Rows[i][1];//criterio
                    dgvDatos.Rows[i].Cells[4].Value = datos.Tables[0].Rows[i][2];//grupo
                    dgvDatos.Rows[i].Cells[5].Value = datos.Tables[0].Rows[i][3];//tipodescuento
                    dgvDatos.Rows[i].Cells[6].Value = datos.Tables[0].Rows[i][4];//fecha inicio
                    dgvDatos.Rows[i].Cells[7].Value = datos.Tables[0].Rows[i][5];//fecha fin
                    dgvDatos.Rows[i].Cells[7].Value = datos.Tables[0].Rows[i][6];//estado

                    if (Convert.ToInt32(datos.Tables[0].Rows[i][6]) == 1)
                    {
                        dgvDatos.Rows[i].DefaultCellStyle.BackColor = Color.Red;
                        dgvDatos.Rows[i].DefaultCellStyle.ForeColor = Color.White;
                    }

                }
            }
            ConexionBD.Desconectar();
        }







        private void btnNuevo_Click(object sender, EventArgs e)
        {
            tipo = Tipo.guardar;
            habilitaBoton();
            LimpiarDatos();
        }


        /// <summary>
        /// METODO PARA LIMPIAR FORM
        /// </summary>
        private void LimpiarDatos()
        {
            DatosDes = new object[7];

            cbCriterio.SelectedIndex = 0;
            tbProducto.Text = "";
            tbDescuento.Text = "";
            rbtActivo.Checked = true;

        }

  
    

        private void btnBuscaProducto_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio=cbCriterio.Text;
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
            tbProducto.Text=busca.valor;
        }

        private void btnBuscaDescuento_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "TIPODESCUENTO";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
            tbDescuento.Text = busca.valor;
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (validaError(tbProducto, "Agregue los datos de criterio de selección") && validaError(tbDescuento, "Ingrese el tipo de descuento "))
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
        #endregion





        private void GuardarDatos()
        {
            if (DatosDes == null || DatosDes[0] == null)
            {
                DatosDes = new object[7];
                DatosDes[0] = "0";
            }
            DatosDes[0] = DatosDes[0].ToString().Trim();
            DatosDes[1] = cbCriterio.Text;
            DatosDes[2] = tbProducto.Text;
            DatosDes[3] = tbDescuento.Text;
            DatosDes[4] = ConexionBD.FechaFormatoMySQL(dtpFechaIni.Value, 0);
            DatosDes[5] = ConexionBD.FechaFormatoMySQL(dtpFechaFin.Value, 0); 
            if (rbtActivo.Checked)
                DatosDes[6] = 0;
            else
                DatosDes[6] = 1;

            object[] NombresDes = { "pId","pCriterio","pIdProducto", "pIdTipoDescuento","pFechaIni","pFechaFin", "pEstado" };

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {
                ConexionBD.EjecutarProcedimientoReturnVoid("descuento_guarda", NombresDes, DatosDes);
                ConexionBD.COMMIT();
                SeGuardo = true;
                listar();
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
                MessageBox.Show("LOS DATOS SE GUARDARON EXITOSAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LimpiarDatos();
            }
            else
                MessageBox.Show("ERROR AL GUARDAR LOS DATOS, INTENTE NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);


            LimpiarDatos();
        }










    }
}

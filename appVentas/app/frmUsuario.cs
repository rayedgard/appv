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
    public partial class frmUsuario : Form
    {


        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosUser = new object[12];
        string string_ArchivoConfiguracion;

        public frmUsuario(string ArchivoCOnfig)
        {
            InitializeComponent();
            string_ArchivoConfiguracion = ArchivoCOnfig;
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();

            cbTipoUser.Items.Add("ADMINISTRADOR");
            cbTipoUser.Items.Add("USUARIO");
            cbTipoUser.SelectedIndex = 0;

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
            gbDatosPersonales.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            gbDatosContacto.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
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


            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("usuario_lista");

            object[] ValoresFila = new object[5];
            if (datos.Tables[0].Rows.Count >= 1)
            {

                dgvDatos.Rows.Add(datos.Tables[0].Rows.Count);

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.edit_button);
                    dgvDatos.Rows[i].Cells[1].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvDatos.Rows[i].Cells[2].Value = datos.Tables[0].Rows[i][0];//dni
                    dgvDatos.Rows[i].Cells[3].Value = datos.Tables[0].Rows[i][1];//nombre
                    dgvDatos.Rows[i].Cells[4].Value = datos.Tables[0].Rows[i][2];//paterno 
                    dgvDatos.Rows[i].Cells[5].Value = datos.Tables[0].Rows[i][3];//materno
                    dgvDatos.Rows[i].Cells[6].Value = datos.Tables[0].Rows[i][4];//sexo 
                    dgvDatos.Rows[i].Cells[7].Value = datos.Tables[0].Rows[i][5];//nacimiento
                    dgvDatos.Rows[i].Cells[8].Value = datos.Tables[0].Rows[i][6];//telefono
                    dgvDatos.Rows[i].Cells[9].Value = datos.Tables[0].Rows[i][7];//direccion
                    dgvDatos.Rows[i].Cells[10].Value = datos.Tables[0].Rows[i][8];//tipo
                    dgvDatos.Rows[i].Cells[11].Value = datos.Tables[0].Rows[i][9];//usuarioName
                    dgvDatos.Rows[i].Cells[12].Value = datos.Tables[0].Rows[i][10];//pass
                    dgvDatos.Rows[i].Cells[13].Value = datos.Tables[0].Rows[i][11];//activo
              
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

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (validaError(tbDni, "Ingrese el número de su DNI") && validaError(tbNombres, "Ingrese su Nombre") && validaError(tbPaterno, "Ingrese su Apellido Paterno") && validaError(tbMaterno, "Ingrese su apellido Materno") && validaError(tbNombreUser, "Ingrese el Nombre de Usuario") && validaError(tbPass, "Ingrese Contraseña de Usuario"))
            {
                GuardarDatos();
            }        
            
        }


        private void GuardarDatos()
        {
           
            DatosUser[0] = tbDni.Text;
            DatosUser[1] = tbNombres.Text;
            DatosUser[2] = tbPaterno.Text;
            DatosUser[3] = tbMaterno.Text;
            if(rbtMasculino.Checked)
                DatosUser[4] = "M";
            else
                DatosUser[4] = "F";
            DatosUser[5] = ConexionBD.FechaFormatoMySQL(dtpFechaNacimiento.Value, 0);
            DatosUser[6] = tbTelefono.Text;
            DatosUser[7] = tbDireccion.Text;
            DatosUser[8] = cbTipoUser.SelectedIndex;
            DatosUser[9] = tbNombreUser.Text;
            DatosUser[10] = tbPass.Text;
            if (rbtActivo.Checked)
                DatosUser[11] = 0;
            else
                DatosUser[11] = 1;

            object[] NombresUser = { "pDni", "pNombre", "pApaterno", "pAmaterno", "pSexo", "pNacimiento", "pTelefono", "pDireccion", "pPrivilegio", "pNick", "pPass", "pEstado" };

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {
                ConexionBD.EjecutarProcedimientoReturnVoid("usuario_guarda", NombresUser, DatosUser);
                ConexionBD.COMMIT();
                SeGuardo = true;

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

            listar();
        }



        /// <summary>
        /// METODO PARA LIMPIAR FORM
        /// </summary>
        private void LimpiarDatos()
        {
            DatosUser = new object[12];
            
            tbDni.Text = "";
            tbNombres.Text = "";
            tbPaterno.Text = "";
            tbMaterno.Text = "";
            rbtMasculino.Checked = true;
            dtpFechaNacimiento.Value = DateTime.Now;
            tbTelefono.Text = "";
            tbDireccion.Text = "";
            cbTipoUser.SelectedIndex = 0;
            tbNombreUser.Text = "";
            tbPass.Text = "";
            rbtActivo.Checked = true;

            tbDni.Focus();
            tbDni.Select();
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



        private void validaNumeros(object sender, KeyPressEventArgs e)
        {
            ValidarDatos.texto_KeyPress(((TextBox)sender).Text, "Numeros", sender, e);
            if (e.KeyChar == '\r')
            {
                e.Handled = true;
                SendKeys.Send("{TAB}");
            }
        }

        private void frmUsuario_Load(object sender, EventArgs e)
        {

        }

   


    }
}

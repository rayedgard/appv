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
    public partial class frmProveedor : Form
    {


        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosClient = new object[7];
        string string_ArchivoConfiguracion;



        public frmProveedor(string ArchivoCOnfig)
        {
            InitializeComponent();
            string_ArchivoConfiguracion = ArchivoCOnfig;
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();


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


            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("proveedor_lista");

            object[] ValoresFila = new object[5];
            if (datos.Tables[0].Rows.Count >= 1)
            {

                dgvDatos.Rows.Add(datos.Tables[0].Rows.Count);

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.edit_button);
                    dgvDatos.Rows[i].Cells[1].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvDatos.Rows[i].Cells[2].Value = datos.Tables[0].Rows[i][0];//docuemnto
                    dgvDatos.Rows[i].Cells[3].Value = datos.Tables[0].Rows[i][1];//razon
                    dgvDatos.Rows[i].Cells[4].Value = datos.Tables[0].Rows[i][2];//fechaRegisto
                    dgvDatos.Rows[i].Cells[5].Value = datos.Tables[0].Rows[i][3];//telefono
                    dgvDatos.Rows[i].Cells[6].Value = datos.Tables[0].Rows[i][4];//direccion 
                    dgvDatos.Rows[i].Cells[7].Value = datos.Tables[0].Rows[i][5];//email
                    dgvDatos.Rows[i].Cells[8].Value = datos.Tables[0].Rows[i][6];//estado

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
            DatosClient = new object[7];

            tbDniRuc.Text = "";
            tbRazon.Text = "";
            tbTelefono.Text = "";
            tbDireccion.Text = "";
            dtpFechaRegistro.Value = DateTime.Now;
            tbEmail.Text = "";
            rbtActivo.Checked = true;

            tbDniRuc.Focus();
            tbDniRuc.Select();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (validaError(tbDniRuc, "Ingrese el número de su DNI") && validaError(tbRazon, "Ingrese su Nombre") && validaError(tbDireccion, "Ingrese su Apellido Paterno"))
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

            DatosClient[0] = tbDniRuc.Text;
            DatosClient[1] = tbRazon.Text;
            DatosClient[2] = tbTelefono.Text;
            DatosClient[3] = tbDireccion.Text;
            DatosClient[4] = ConexionBD.FechaFormatoMySQL(dtpFechaRegistro.Value, 0);
            DatosClient[5] = tbEmail.Text;
            if (rbtActivo.Checked)
                DatosClient[6] = 0;
            else
                DatosClient[6] = 1;

            object[] NombresClient = { "pDocumento", "pRazon", "pTelefono", "pDireccion", "pFechaRegistro", "pEmail", "pEstado" };

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {
                ConexionBD.EjecutarProcedimientoReturnVoid("proveedor_guarda", NombresClient, DatosClient);
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



        private void validaNumeros(object sender, KeyPressEventArgs e)
        {
            ValidarDatos.texto_KeyPress(((TextBox)sender).Text, "Numeros", sender, e);
            if (e.KeyChar == '\r')
            {
                e.Handled = true;
                SendKeys.Send("{TAB}");
            }
        }

        private void dgvDatos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if ((e.RowIndex >= 0) && ((e.ColumnIndex == 0) || (e.ColumnIndex == 1)))
            {
                if (e.ColumnIndex == 0)
                {// EDITAR

                    tbDniRuc.Text = dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString();
                    tbRazon.Text = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    dtpFechaRegistro.Value = Convert.ToDateTime(dgvDatos.Rows[e.RowIndex].Cells[4].Value);
                    tbTelefono.Text = dgvDatos.Rows[e.RowIndex].Cells[5].Value.ToString();
                    tbDireccion.Text = dgvDatos.Rows[e.RowIndex].Cells[6].Value.ToString();
                    tbEmail.Text = dgvDatos.Rows[e.RowIndex].Cells[7].Value.ToString();
                    if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[8].Value) == 0)
                    {
                        rbtActivo.Checked = true;
                    }
                    else
                    {
                        rbtInactivo.Checked = true;
                    }


                    tipo = Tipo.modificar;
                    habilitaBoton();
                }
                else
                {//ELIMINAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE PROVEEDOR? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        //LimpiarDatosHorario();
                        ConexionBD.Conectar(true, string_ArchivoConfiguracion);
                        bool SeElimino = false;
                        try
                        {
                            ConexionBD.EjecutarProcedimientoReturnVoid("proveedor_elimina", "pDocumento", dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString());
                            ConexionBD.COMMIT();
                            SeElimino = true;
                            listar();
                            tipo = Tipo.eliminar;
                            habilitaBoton();

                        }
                        catch
                        {
                            ConexionBD.ROLLBACK();
                            SeElimino = false;
                        }
                        finally
                        {
                            ConexionBD.Desconectar();
                        }

                        if (SeElimino)
                            MessageBox.Show("DATOS ELIMINADOS CON EXITO", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        else
                            MessageBox.Show("HUBO UN ERROR AL ELIMINAR EL PROVEEDOR, INTENTELO NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        LimpiarDatos();
                    }

                }
            }
        }














    }
}

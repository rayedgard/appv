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
    public partial class frmTipoDescuento : Form
    {
        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosTipoDes = new object[4];
        string string_ArchivoConfiguracion;

        public frmTipoDescuento(string ArchivoCOnfig)
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


            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("tipodescuento_lista");

            if (datos.Tables[0].Rows.Count >= 1)
            {

                dgvDatos.Rows.Add(datos.Tables[0].Rows.Count);

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.edit_button);
                    dgvDatos.Rows[i].Cells[1].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvDatos.Rows[i].Cells[2].Value = datos.Tables[0].Rows[i][0];//id
                    dgvDatos.Rows[i].Cells[3].Value = datos.Tables[0].Rows[i][1];//nombre
                    dgvDatos.Rows[i].Cells[4].Value = datos.Tables[0].Rows[i][2];//porcentaje
                    dgvDatos.Rows[i].Cells[5].Value = datos.Tables[0].Rows[i][3];//estado

                    if (Convert.ToInt32(datos.Tables[0].Rows[i][3]) == 1)
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
            DatosTipoDes = new object[4];

            tbNombre.Text = "";
            tbPorcentaje.Text = "";
            rbtActivo.Checked = true;

            tbNombre.Focus();
            tbNombre.Select();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (validaError(tbNombre, "Ingrese el nombre del Descuento") && validaError(tbPorcentaje, "Ingrese el porcentaje de descuento"))
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
            if (DatosTipoDes == null || DatosTipoDes[0] == null)
            {
                DatosTipoDes = new object[4];
                DatosTipoDes[0] = "0";
            }
            DatosTipoDes[0] = DatosTipoDes[0].ToString().Trim();
            DatosTipoDes[1] = tbNombre.Text;
            DatosTipoDes[2] = tbPorcentaje.Text;
   
            if (rbtActivo.Checked)
                DatosTipoDes[3] = 0;
            else
                DatosTipoDes[3] = 1;

            object[] NombresTipoDes = { "pId","pNombre", "pPorcentaje", "pEstado" };

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {
                ConexionBD.EjecutarProcedimientoReturnVoid("tipodescuento_guarda", NombresTipoDes, DatosTipoDes);
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

                    tbNombre.Text = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    tbPorcentaje.Text = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();
                    if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[5].Value) == 0)
                    {
                        rbtActivo.Checked = true;
                    }
                    else
                    {
                        rbtInactivo.Checked = true;
                    }


                    /****AQUI ALMACENAMOS LOS DATOS EN EL ARREGLO --- PARA MODIFICACION---***/
                    DatosTipoDes = new object[4];
                    DatosTipoDes[0] = dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString();
                    //DatosTipoDes[1] = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    //DatosTipoDes[2] = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();
                    //DatosTipoDes[3] = dgvDatos.Rows[e.RowIndex].Cells[5].Value.ToString();

                    tipo = Tipo.modificar;
                    habilitaBoton();
                }
                else
                {//ELIMINAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE TIPO DE DESCUENTO? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        //LimpiarDatosHorario();
                        ConexionBD.Conectar(true, string_ArchivoConfiguracion);
                        bool SeElimino = false;
                        try
                        {
                            ConexionBD.EjecutarProcedimientoReturnVoid("tipodescuento_elimina", "pId", dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString());
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
                            MessageBox.Show("HUBO UN ERROR AL ELIMINAR EL TIPO DE DESCUENTO, INTENTELO NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        LimpiarDatos();
                    }

                }
            }
        }









    }
}

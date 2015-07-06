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
    public partial class frmCaracteristicas : Form
    {
        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosCaract = new object[5];
        string string_ArchivoConfiguracion;

        public frmCaracteristicas(string ArchivoCOnfig)
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


            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("caracteristicas_lista");

            if (datos.Tables[0].Rows.Count >= 1)
            {

                dgvDatos.Rows.Add(datos.Tables[0].Rows.Count);

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.edit_button);
                    dgvDatos.Rows[i].Cells[1].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvDatos.Rows[i].Cells[2].Value = datos.Tables[0].Rows[i][0];//id
                    dgvDatos.Rows[i].Cells[3].Value = datos.Tables[0].Rows[i][1];//dimencion    
                    dgvDatos.Rows[i].Cells[4].Value = datos.Tables[0].Rows[i][2];//peso
                    
                    dgvDatos.Rows[i].Cells[5].Value = datos.Tables[0].Rows[i][3];//color
                    dgvDatos.Rows[i].Cells[5].Style.BackColor =Color.FromName(datos.Tables[0].Rows[i][3].ToString());
                    dgvDatos.Rows[i].Cells[6].Value = datos.Tables[0].Rows[i][4];//estado

                    if (Convert.ToInt32(datos.Tables[0].Rows[i][4]) == 1)
                    {
                        dgvDatos.Rows[i].DefaultCellStyle.BackColor = Color.Red;
                        dgvDatos.Rows[i].DefaultCellStyle.ForeColor = Color.White;
                    }

                }
            }
            ConexionBD.Desconectar();
        }



        private void button1_Click(object sender, EventArgs e)
        {
            cdColor.AllowFullOpen = false;
            cdColor.ShowHelp = true;
            //cdColor.Color = tbcolor.ForeColor;
            if (cdColor.ShowDialog() == DialogResult.OK)
            {
                tbcolor.BackColor = cdColor.Color;
                tbcolor.Text = cdColor.Color.Name;
            }
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
            DatosCaract = new object[5];

            tbDimencion.Text = "";
            tbPeso.Text = "";
            tbcolor.Text = "";
            tbcolor.BackColor = Color.WhiteSmoke;

            rbtActivo.Checked = true;
          
            tbDimencion.Focus();
            tbDimencion.Select();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (validaError(tbDimencion, "Ingrese la dimención del producto") && validaError(tbPeso, "Ingrese el peso del producto") && validaError(tbcolor, "Seleccione el color del producto"))
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
            if (DatosCaract == null || DatosCaract[0] == null)
            {
                DatosCaract = new object[5];
                DatosCaract[0] = "0";
            }
            DatosCaract[0] = DatosCaract[0].ToString().Trim();
            DatosCaract[1] = tbDimencion.Text;
            DatosCaract[2] = tbPeso.Text;
            DatosCaract[3] = tbcolor.Text;
            
            if (rbtActivo.Checked)
                DatosCaract[4] = 0;
            else
                DatosCaract[4] = 1;

            object[] NombresCaract = { "pId", "pDimencion", "pPeso","pColor", "pEstado" };

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {
                ConexionBD.EjecutarProcedimientoReturnVoid("caracteristicas_guarda", NombresCaract, DatosCaract);
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

        private void dgvDatos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if ((e.RowIndex >= 0) && ((e.ColumnIndex == 0) || (e.ColumnIndex == 1)))
            {
                if (e.ColumnIndex == 0)
                {// EDITAR

                    tbDimencion.Text = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    tbPeso.Text = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();
                    tbcolor.Text = dgvDatos.Rows[e.RowIndex].Cells[5].Value.ToString();
                   

                    if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[6].Value) == 0)
                    {
                        rbtActivo.Checked = true;
                    }
                    else
                    {
                        rbtInactivo.Checked = true;
                    }


                    /****AQUI ALMACENAMOS LOS DATOS EN EL ARREGLO --- PARA MODIFICACION---***/
                    DatosCaract = new object[5];
                    DatosCaract[0] = dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString();
                    //DatosTipoDes[1] = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    //DatosTipoDes[2] = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();
                    //DatosTipoDes[3] = dgvDatos.Rows[e.RowIndex].Cells[5].Value.ToString();

                    tipo = Tipo.modificar;
                    habilitaBoton();
                }
                else
                {//ELIMINAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE ELEMENTO? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        //LimpiarDatosHorario();
                        ConexionBD.Conectar(true, string_ArchivoConfiguracion);
                        bool SeElimino = false;
                        try
                        {
                            ConexionBD.EjecutarProcedimientoReturnVoid("caracteristicas_elimina", "pId", dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString());
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
                            MessageBox.Show("HUBO UN ERROR AL ELIMINAR, INTENTELO NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        LimpiarDatos();
                    }

                }
            }
        }


        private void validaNumeros(object sender, KeyPressEventArgs e)
        {

        }


    }
}

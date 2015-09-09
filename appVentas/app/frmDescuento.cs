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
        //VARIABLES PARA ALMACENAR LOS IDS DE GRUPOS Y DESCUENTOS
        string idGrupo = "";
        string idDescuento = "";
        object[] DatosDes = new object[9];
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
                    dgvDatos.Rows[i].Cells[5].Value = datos.Tables[0].Rows[i][3];//nombre grupo
                    dgvDatos.Rows[i].Cells[6].Value = datos.Tables[0].Rows[i][4];//tipodescuento
                    dgvDatos.Rows[i].Cells[7].Value = datos.Tables[0].Rows[i][5];//nombre descuento
                    dgvDatos.Rows[i].Cells[8].Value = datos.Tables[0].Rows[i][6];//fecha inicio
                    dgvDatos.Rows[i].Cells[9].Value = datos.Tables[0].Rows[i][7];//fecha fin
                    dgvDatos.Rows[i].Cells[10].Value = datos.Tables[0].Rows[i][8];//estado

                    if (Convert.ToInt32(datos.Tables[0].Rows[i][8]) == 1)
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
            DatosDes = new object[9];

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
            tbProducto.Text=Cfunciones.Globales.valor;
            idGrupo = Cfunciones.Globales.codigo;
        }

        private void btnBuscaDescuento_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "TIPODESCUENTO";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
            tbDescuento.Text = Cfunciones.Globales.valor;
            idDescuento = Cfunciones.Globales.codigo;
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
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);

            if (DatosDes == null || DatosDes[0] == null)
            {
                DatosDes = new object[9];
                DatosDes[0] = "0";
            }
            DatosDes[0] = DatosDes[0].ToString().Trim();
            DatosDes[1] = cbCriterio.Text;
            DatosDes[2] = idGrupo;
            DatosDes[3] = tbProducto.Text;
            DatosDes[4] = idDescuento;
            DatosDes[5] = tbDescuento.Text;
            DatosDes[6] = ConexionBD.FechaFormatoMySQL(dtpFechaIni.Value, 0);
            DatosDes[7] = ConexionBD.FechaFormatoMySQL(dtpFechaFin.Value, 0); 
            if (rbtActivo.Checked)
                DatosDes[8] = 0;
            else
                DatosDes[8] = 1;

            object[] NombresDes = { "pId","pCriterio","pIdProducto","pNomProducto", "pIdTipoDescuento","pNomDescuento","pFechaIni","pFechaFin", "pEstado" };

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

        private void dgvDatos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if ((e.RowIndex >= 0) && ((e.ColumnIndex == 0) || (e.ColumnIndex == 1)))
            {
                if (e.ColumnIndex == 0)
                {// EDITAR

                    cbCriterio.Text = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    idGrupo = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();
                    tbProducto.Text = dgvDatos.Rows[e.RowIndex].Cells[5].Value.ToString();
                    idDescuento = dgvDatos.Rows[e.RowIndex].Cells[6].Value.ToString();
                    tbDescuento.Text = dgvDatos.Rows[e.RowIndex].Cells[7].Value.ToString();
                    dtpFechaIni.Value=Convert.ToDateTime(dgvDatos.Rows[e.RowIndex].Cells[8].Value);
                    dtpFechaFin.Value = Convert.ToDateTime(dgvDatos.Rows[e.RowIndex].Cells[9].Value);
                    
                    if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[10].Value) == 0)
                    {
                        rbtActivo.Checked = true;
                    }
                    else
                    {
                        rbtInactivo.Checked = true;
                    }


                    /****AQUI ALMACENAMOS LOS DATOS EN EL ARREGLO --- PARA MODIFICACION---***/
                    DatosDes = new object[9];
                    DatosDes[0] = dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString();
                    //DatosTipoDes[1] = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    //DatosTipoDes[2] = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();
                    //DatosTipoDes[3] = dgvDatos.Rows[e.RowIndex].Cells[5].Value.ToString();

                    tipo = Tipo.modificar;
                    habilitaBoton();
                }
                else
                {//ELIMINAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE DESCUENTO? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        //LimpiarDatosHorario();
                        ConexionBD.Conectar(true, string_ArchivoConfiguracion);
                        bool SeElimino = false;
                        try
                        {
                            ConexionBD.EjecutarProcedimientoReturnVoid("descuento_elimina", "pId", dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString());
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
                            MessageBox.Show("HUBO UN ERROR AL ELIMINAR LA UNIDAD, INTENTELO NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        LimpiarDatos();
                    }

                }
            }
        }










    }
}

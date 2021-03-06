﻿using clases;
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
    public partial class frmProducto : Form
    {


        CConection ConexionBD;
        CValidacion ValidarDatos;

        //VARIABLES PARA ALMACENAR LOS IDS DE GRUPOS Y DESCUENTOS
        string idcategoria= "";
        string idunidades = "";
        string idfisicas = "";
        string idDescuento = "";

        object[] DatosProducto = new object[14];
        string string_ArchivoConfiguracion;

        public frmProducto(string ArchivoCOnfig)
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
            gbDatos1.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            gbDatos2.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
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

            //Cargar areass
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            dgvDatos.Rows.Clear();


            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("producto_lista");

            if (datos.Tables[0].Rows.Count >= 1)
            {

                dgvDatos.Rows.Add(datos.Tables[0].Rows.Count);

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.edit_button);
                    dgvDatos.Rows[i].Cells[1].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvDatos.Rows[i].Cells[2].Value = datos.Tables[0].Rows[i][0];//id
                    dgvDatos.Rows[i].Cells[3].Value = datos.Tables[0].Rows[i][1];//nombre
                    dgvDatos.Rows[i].Cells[4].Value = datos.Tables[0].Rows[i][2];//detalle
                    dgvDatos.Rows[i].Cells[5].Value = datos.Tables[0].Rows[i][3];//imagen
                    dgvDatos.Rows[i].Cells[6].Value = datos.Tables[0].Rows[i][4];//precio de compra
                    dgvDatos.Rows[i].Cells[7].Value = datos.Tables[0].Rows[i][5];//precio de Venta
                    dgvDatos.Rows[i].Cells[8].Value = datos.Tables[0].Rows[i][6];//id categorioa
                    dgvDatos.Rows[i].Cells[9].Value = datos.Tables[0].Rows[i][7];//stock
                    dgvDatos.Rows[i].Cells[10].Value = datos.Tables[0].Rows[i][8];//stock minimo
                    dgvDatos.Rows[i].Cells[11].Value = datos.Tables[0].Rows[i][9];//id unidades
                    dgvDatos.Rows[i].Cells[12].Value = datos.Tables[0].Rows[i][10];//nro de serie
                    dgvDatos.Rows[i].Cells[13].Value = datos.Tables[0].Rows[i][11];//id caracteristicas
                    dgvDatos.Rows[i].Cells[14].Value = datos.Tables[0].Rows[i][12];//estado
                    dgvDatos.Rows[i].Cells[15].Value = datos.Tables[0].Rows[i][13];//promocion

                    if (Convert.ToInt32(datos.Tables[0].Rows[i][12]) == 1)
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
            tbNombres.Focus();
            tbNombres.Select();
        }



        /// <summary>
        /// METODO PARA LIMPIAR FORM
        /// </summary>
        private void LimpiarDatos()
        {
            DatosProducto = new object[14];

            tbNombres.Text = "";
            tbDetalle.Text = "";
            tbPrecioCom.Text = "0";
            tbPrecioVen.Text = "0";
            tbStock.Text = "0";
            tbStockMin.Text = "5";
            tbCategoria.Text = "";
            tbUnidades.Text = "";
            tbCarFisicas.Text = "";

            rbtActivo.Checked = true;

            tbNroSerie.Text = "";
            rbtSinPromo.Checked = true;

        }

        private void btnBuscaCat_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "CATEGORIA";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
            tbCategoria.Text = Cfunciones.Globales.valor;
            idcategoria = Cfunciones.Globales.codigo;
        }

        private void btnBuscaUni_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "UNIDADES";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
            tbUnidades.Text = Cfunciones.Globales.valor;
            idunidades = Cfunciones.Globales.codigo;
        }

        private void btnBuscaFisicas_Click(object sender, EventArgs e)
        {
            //LimpiarDatos();
            clases.Cfunciones.Globales.criterio = "FISICAS";
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);
            busca.ShowDialog();
            tbCarFisicas.Text = Cfunciones.Globales.valor;
            idfisicas = Cfunciones.Globales.codigo;
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (validaError(tbNombres, "Agregue nombre de Producto") && validaError(tbDetalle, "Ingrese el detalle del producto") && validaError(tbPrecioCom, "Ingrese el precio de Compra del producto") && validaError(tbPrecioVen, "Ingrese el precio de Venta del producto") && validaError(tbStock, "Ingrese el stock del producto") && validaError(tbStockMin, "Ingrese el stock minimo del producto"))
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

            if (tb.Text.Length == 0 && tb.Text == "" && tb.Text == "0")
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

        private void tbNroSerie_KeyPress(object sender, KeyPressEventArgs e)
        {
          
            if ((int)e.KeyChar == 13)
            {
               
                //Aqui pones lo que deba haccer al momento de terminar la lectura del codigo              
            }
        }




        private void GuardarDatos()
        {
            frmBusca busca = new frmBusca(string_ArchivoConfiguracion);

            if (DatosProducto == null || DatosProducto[0] == null)
            {
                DatosProducto = new object[14];
                DatosProducto[0] = "0";
            }
            DatosProducto[0] = DatosProducto[0].ToString().Trim();
            DatosProducto[1] = tbNombres.Text;
            DatosProducto[2] = tbDetalle.Text;
            DatosProducto[3] = ConexionBD.Image2Bytes(pcbImagen.Image);
            DatosProducto[4] = tbPrecioCom.Text;
            DatosProducto[5] = tbPrecioVen.Text;
            DatosProducto[6] = tbStock.Text;
            DatosProducto[7] = tbStockMin.Text;
            /*-----previa condicion para cargar los datos o IDs de categoria, unidades y caracteristicas fisicas----------*/
            if (tbCategoria.Text == "")
                idcategoria = "1";
            if (tbUnidades.Text == "")
                idunidades = "1";
            if (tbCarFisicas.Text == "")
                idfisicas = "1";
            DatosProducto[8] = idcategoria;
            DatosProducto[9] = idunidades;
            DatosProducto[10] = idfisicas;
            
            if (rbtActivo.Checked)
                DatosProducto[11] = 0;
            else
                DatosProducto[11] = 1;

            DatosProducto[12] = tbNroSerie.Text;
            
            if (rbtSinPromo.Checked)
                DatosProducto[13] = 0;//no tiene promocion
            if (rbtUno.Checked)
                DatosProducto[13] = 1;//promocion de 2x1
            if (rbtDos.Checked)
                DatosProducto[13] = 2;//promocion de 3x2

            object[] NombresProducto = { "pId", "pNombre", "pDetalle", "pImagen", "pPrecioCom", "pPrecioVen", "pStock", "pStockMin", "pIdCategoria", "pIdUnidades", "pIdCaractFisicas", "pEstado", "pSerie", "pPromocion" };

            ConexionBD.Conectar(true, string_ArchivoConfiguracion);
            bool SeGuardo = false;
            try
            {
                ConexionBD.EjecutarProcedimientoReturnVoid("producto_guarda", NombresProducto, DatosProducto);
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

                    tbNombres.Text = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    tbDetalle.Text = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();
                     try
                    {
                        pcbImagen.Image = ConexionBD.Bytes2Image((byte[])dgvDatos.Rows[e.RowIndex].Cells[5].Value);
                    }
                    catch
                    {
                        pcbImagen.Image = (System.Drawing.Image)(app.Properties.Resources.descarga);
                    }

                    tbPrecioCom.Text = dgvDatos.Rows[e.RowIndex].Cells[6].Value.ToString();
                    tbPrecioVen.Text = dgvDatos.Rows[e.RowIndex].Cells[7].Value.ToString();
                    idcategoria = dgvDatos.Rows[e.RowIndex].Cells[8].Value.ToString();
                    idunidades = dgvDatos.Rows[e.RowIndex].Cells[11].Value.ToString();
                    idfisicas = dgvDatos.Rows[e.RowIndex].Cells[13].Value.ToString();

                    object[] datosNombres = new object[2];
                    object[] Nombres = { "pId", "pCriterio" };

                    ConexionBD.Conectar(false, string_ArchivoConfiguracion);
                    datosNombres[0] = dgvDatos.Rows[e.RowIndex].Cells[8].Value.ToString();
                    datosNombres[1] = "categoria";
                        tbCategoria.Text = ConexionBD.EjecutarProcedimientoReturnMensaje("producto_retornaNombres", Nombres, datosNombres);
                    datosNombres[0] = dgvDatos.Rows[e.RowIndex].Cells[11].Value.ToString();
                    datosNombres[1] = "unidades";
                        tbUnidades.Text = ConexionBD.EjecutarProcedimientoReturnMensaje("producto_retornaNombres", Nombres, datosNombres);
                    datosNombres[0] = dgvDatos.Rows[e.RowIndex].Cells[13].Value.ToString();
                    datosNombres[1] = "fisicas";
                        tbCarFisicas.Text = ConexionBD.EjecutarProcedimientoReturnMensaje("producto_retornaNombres", Nombres, datosNombres);

                    ConexionBD.Desconectar();
                    tbStock.Text = dgvDatos.Rows[e.RowIndex].Cells[9].Value.ToString();
                    tbStockMin.Text = dgvDatos.Rows[e.RowIndex].Cells[10].Value.ToString();
                    tbNroSerie.Text = dgvDatos.Rows[e.RowIndex].Cells[12].Value.ToString();

                    if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[14].Value) == 0)
                    {
                        rbtActivo.Checked = true;
                    }
                    else
                    {
                        rbtInactivo.Checked = true;
                    }

                     if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[15].Value) == 0)
                    {
                        rbtSinPromo.Checked = true;
                    }
                     if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[15].Value) == 1)
                    {
                        rbtUno.Checked = true;
                    }
                     if (Convert.ToInt32(dgvDatos.Rows[e.RowIndex].Cells[15].Value) == 2)
                     {
                         rbtDos.Checked = true;
                     }
                    /****AQUI ALMACENAMOS LOS DATOS EN EL ARREGLO --- PARA MODIFICACION---***/
                    
                    DatosProducto[0] = dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString();
                    //DatosTipoDes[1] = dgvDatos.Rows[e.RowIndex].Cells[3].Value.ToString();
                    //DatosTipoDes[2] = dgvDatos.Rows[e.RowIndex].Cells[4].Value.ToString();
                    //DatosTipoDes[3] = dgvDatos.Rows[e.RowIndex].Cells[5].Value.ToString();

                    tipo = Tipo.modificar;
                    habilitaBoton();
                }
                else
                {//ELIMINAR
                    if (MessageBox.Show("¿ESTA SEGURO DE ELIMINAR ESTE PRODUCTO? \r", "CUIDADO!!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
                    {
                        //LimpiarDatosHorario();
                        ConexionBD.Conectar(true, string_ArchivoConfiguracion);
                        bool SeElimino = false;
                        try
                        {
                            ConexionBD.EjecutarProcedimientoReturnVoid("producto_elimina", "pId", dgvDatos.Rows[e.RowIndex].Cells[2].Value.ToString());
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
                            MessageBox.Show("HUBO UN ERROR AL ELIMINAR EL PRODUCTO, INTENTELO NUEVAMENTE", "AVISO", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        LimpiarDatos();
                    }

                }
            }
        }

        private void pcbImagen_Click(object sender, EventArgs e)
        {
            CargarFoto();
        }



        private void CargarFoto()
        {
            this.ofd_CargarImagen.Title = "Cargar Fotografía";
            this.ofd_CargarImagen.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);

            this.ofd_CargarImagen.Filter = "Imagenes (*.gif)|*.gif|Imagenes(*.bmp)|*.bmp|Imagenes(*.jpg)|*.jpg|Imagenes(*.png)|*.png";

            this.ofd_CargarImagen.DefaultExt = "jpg";
            this.ofd_CargarImagen.FilterIndex = 3;
            this.ofd_CargarImagen.FileName = "";

            if (this.ofd_CargarImagen.ShowDialog() == DialogResult.OK)
            {
                if (this.ofd_CargarImagen.FileName != string.Empty)
                {
                    try
                    {
                        this.pcbImagen.Image = Image.FromFile(this.ofd_CargarImagen.FileName);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        pcbImagen.Image = (System.Drawing.Image)(app.Properties.Resources.faq);
                    }

                }
                else
                {
                    pcbImagen.Image = (System.Drawing.Image)(app.Properties.Resources.faq);
                }


            }
        }

        private void tbBurcar_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)e.KeyChar == 13)
            {
                Buscar();
                              
            }
            else
                Buscar();
        }

        object[] datosBusqueda = new object[2];
        object[] VariablesBusqueda = { "pCriterio", "pFiltro" };
        public void Buscar()
        {
            datosBusqueda[0] = "PRODUCTOS";
            datosBusqueda[1] = tbBurcar.Text;
            try
            {
                ConexionBD.Conectar(false, string_ArchivoConfiguracion);
                DataSet dsDatosGrid = ConexionBD.EjecutarProcedimientoReturnDataSet("busca_descuento", VariablesBusqueda, datosBusqueda);
                dgvDatos.Rows.Clear();
                //for (int i = 0; i < dsDatosGrid.Tables[0].Rows.Count; i++)
                //{
                //    dgvDatos.Rows.Add(dsDatosGrid.Tables[0].Rows[i].ItemArray);
                //}



                dgvDatos.Rows.Add(dsDatosGrid.Tables[0].Rows.Count);

                for (int i = 0; i < dsDatosGrid.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = (System.Drawing.Image)(app.Properties.Resources.edit_button);
                    dgvDatos.Rows[i].Cells[1].Value = (System.Drawing.Image)(app.Properties.Resources.delete);
                    dgvDatos.Rows[i].Cells[2].Value = dsDatosGrid.Tables[0].Rows[i][0];//id
                    dgvDatos.Rows[i].Cells[3].Value = dsDatosGrid.Tables[0].Rows[i][1];//nombre
                    dgvDatos.Rows[i].Cells[4].Value = dsDatosGrid.Tables[0].Rows[i][2];//detalle
                    dgvDatos.Rows[i].Cells[5].Value = dsDatosGrid.Tables[0].Rows[i][3];//imagen
                    dgvDatos.Rows[i].Cells[6].Value = dsDatosGrid.Tables[0].Rows[i][4];//precio
                    dgvDatos.Rows[i].Cells[7].Value = dsDatosGrid.Tables[0].Rows[i][5];//id categorioa
                    dgvDatos.Rows[i].Cells[8].Value = dsDatosGrid.Tables[0].Rows[i][6];//stock
                    dgvDatos.Rows[i].Cells[9].Value = dsDatosGrid.Tables[0].Rows[i][7];//stock minimo
                    dgvDatos.Rows[i].Cells[10].Value = dsDatosGrid.Tables[0].Rows[i][8];//id unidades
                    dgvDatos.Rows[i].Cells[11].Value = dsDatosGrid.Tables[0].Rows[i][9];//nro de serie
                    dgvDatos.Rows[i].Cells[12].Value = dsDatosGrid.Tables[0].Rows[i][10];//id caracteristicas
                    dgvDatos.Rows[i].Cells[13].Value = dsDatosGrid.Tables[0].Rows[i][11];//estado
                    dgvDatos.Rows[i].Cells[14].Value = dsDatosGrid.Tables[0].Rows[i][12];//promocion

                    if (Convert.ToInt32(dsDatosGrid.Tables[0].Rows[i][11]) == 1)
                    {
                        dgvDatos.Rows[i].DefaultCellStyle.BackColor = Color.Red;
                        dgvDatos.Rows[i].DefaultCellStyle.ForeColor = Color.White;
                    }

                }

                ConexionBD.Desconectar();
            }
            catch { }
        }




















    }
}

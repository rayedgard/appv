﻿using clases;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Collections;

namespace app
{
    public partial class frmBusca : Form
    {

        CConection conBD;
   
        string string_ArchivoConfiguracion;

        object[] datosBusqueda  = new object[2];
        object[] VariablesBusqueda = {"pCriterio","pFiltro"};

        public frmBusca(string ArchivoConfig)
        {
            string_ArchivoConfiguracion = ArchivoConfig;
            InitializeComponent();
            conBD = new CConection();

            lblTitulo.Text="Busqueda  de: "+clases.Cfunciones.Globales.criterio;
            tbFiltro.Focus();
            tbFiltro.Select();
        }

   
        public void rotativo()
        {
            datosBusqueda[0]=clases.Cfunciones.Globales.criterio;
            datosBusqueda[1]=tbFiltro.Text;
            try
            {
                conBD.Conectar(false, string_ArchivoConfiguracion);
                DataSet dsDatosGrid = conBD.EjecutarProcedimientoReturnDataSet("busca_descuento",VariablesBusqueda , datosBusqueda);
                dgvDatos.Rows.Clear();
                for (int i = 0; i < dsDatosGrid.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows.Add(dsDatosGrid.Tables[0].Rows[i].ItemArray);
                }

                conBD.Desconectar();
            }
            catch { }
        }









        private void btnBuscar_Click(object sender, EventArgs e)
        {
            rotativo();
        }

        private void dgvDatos_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                Cfunciones.Globales.codigo = dgvDatos.Rows[e.RowIndex].Cells[0].Value.ToString().Trim();
                Cfunciones.Globales.valor = dgvDatos.Rows[e.RowIndex].Cells[1].Value.ToString().Trim();
                lbSeleccion.Text = dgvDatos.Rows[e.RowIndex].Cells[1].Value.ToString();

                this.Close();
              
            }
            catch
            {
            }
        }

        private void tbFiltro_KeyPress(object sender, KeyPressEventArgs e)
        {
            rotativo();
        }

     
        private void dgvDatos_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == 13)
            {
               this.Close();
       
            }
        }

        private void dgvDatos_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                Cfunciones.Globales.codigo = dgvDatos.Rows[e.RowIndex].Cells[0].Value.ToString().Trim();
                Cfunciones.Globales.valor = dgvDatos.Rows[e.RowIndex].Cells[1].Value.ToString().Trim();
                lbSeleccion.Text = dgvDatos.Rows[e.RowIndex].Cells[1].Value.ToString();

            }
            catch
            {
            }
        }

    


    }
}

using clases;
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
        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosUser = new object[12];
        string string_ArchivoConfiguracion;

        DataSet datos;
        public frmBusca(string ArchivoCOnfig)
        {
             InitializeComponent();
            string_ArchivoConfiguracion = ArchivoCOnfig;
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();

            DatosRecuperados();

        }

        private void DatosRecuperados()
        {
            string criterio = clases.Cfunciones.Globales.criterio;
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            datos = ConexionBD.EjecutarProcedimientoReturnDataSet("busca_descuento","pCriterio",criterio);
            if (datos.Tables[0].Rows.Count >= 1)
            {

                dgvDatos.Rows.Add(datos.Tables[0].Rows.Count);

                for (int i = 0; i < datos.Tables[0].Rows.Count; i++)
                {
                    dgvDatos.Rows[i].Cells[0].Value = datos.Tables[0].Rows[i][0];//id
                    dgvDatos.Rows[i].Cells[1].Value = datos.Tables[0].Rows[i][1];//nombre
           
                }
            }


          
            ConexionBD.Desconectar();

        }


        private void btnBuscar_Click(object sender, EventArgs e)
        {
            
           
           if (datos.Tables[0].Rows.Count >= 1)
            {
                DataRow[] rows = datos.Tables[0].Select("nombre LIKE '%" + tbNombre.Text + "%'");
               
                dgvDatos.Rows.Add(rows);
                int i = 0;
                
                foreach(DataRow[] row in rows) 
                {
                    dgvDatos.Rows[i].Cells[0].Value = row[i][0];//id
                    dgvDatos.Rows[i].Cells[1].Value = row[i][1];//nombre
                    i++;
           
                }
            }
        }
    }
}

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

        List<object> datos;
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
            datos = ConexionBD.EjecutarProcedimientoReturnList("busca_descuento","pCriterio",criterio);
          
                MessageBox.Show(datos.Count.ToString());
     


          
            ConexionBD.Desconectar();

        }


        private void btnBuscar_Click(object sender, EventArgs e)
        {
            
           
          
        }



    }
}

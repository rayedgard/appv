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
    public partial class frmVenta : Form
    {
        
        CConection ConexionBD;
        CValidacion ValidarDatos;
        object[] DatosCategoria = new object[4];
        string string_ArchivoConfiguracion;

        public frmVenta(string ArchivoCOnfig)
        {
            InitializeComponent();
            string_ArchivoConfiguracion = ArchivoCOnfig;
            ConexionBD = new CConection();
            ValidarDatos = new CValidacion();

            //listar();
            listaDatos();

        }

        private void listaDatos()
        {
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);
            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_formas_pago");
            DataSet datos1 = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_tipos_comprobante");
            
            int y = 0;
            foreach (DataRow row in datos.Tables[0].Rows)
            {
                RadioButton radio = new RadioButton();
                radio.Text = Convert.ToString(row["nombre"]);
                radio.Tag = Convert.ToString(row["id"]);

                y += 20;
                radio.Location = new Point(20, y);

                gbFormasPago.Controls.Add(radio);
            }


            int z = 0;
            foreach (DataRow row1 in datos1.Tables[0].Rows)
            {
                RadioButton radio1 = new RadioButton();
                radio1.Text = Convert.ToString(row1["nombre"]);
                radio1.Tag = Convert.ToString(row1["id"]);

                z += 20;
                radio1.Location = new Point(20, z);

                gbTipoComprobante.Controls.Add(radio1);
            }

            ConexionBD.Desconectar();
        }
        private void frmVenta_Load(object sender, EventArgs e)
        {

        }
    }
}

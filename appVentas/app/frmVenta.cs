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

        //listas para almacenar los datos de los radiobutons 
        List<object> arreglo1= new List<object>();
        List<object> arreglo2= new List<object>();
        List<object> arreglo3= new List<object>();


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
            DataSet datos2 = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_tipos_tarjeta");
            int conta=0;
            int y = 0;
            foreach (DataRow row in datos.Tables[0].Rows)
            {
                RadioButton radio = new RadioButton();
                radio.Text = Convert.ToString(row["nombre"]);
                radio.Tag = Convert.ToString(row["id"]);
                arreglo1.Add(row["nombre"]);
                y += 20;
                radio.Location = new Point(20, y);

                gbFormasPago.Controls.Add(radio);

                if (radio.Checked)
                {
                    radio.Checked = true;
                    radio.Click += new EventHandler(mimetodo);
                }

                radio.Click += new EventHandler(mimetodo);
                conta++;
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
                
                if (Convert.ToInt32(radio1.Tag) == 1)
                {
                    radio1.Checked = true;
                }
            }

            /*------PARA GENERAR RADIO BUTUNS------*/
            int zz = 0;
            foreach (DataRow row2 in datos2.Tables[0].Rows)
            {
                RadioButton radio2 = new RadioButton();
                radio2.Text = Convert.ToString(row2["nombre"]);
                radio2.Tag = Convert.ToString(row2["id"]);

                zz += 20;
                radio2.Location = new Point(20, zz);

                gbTiposTarjeta.Controls.Add(radio2);

                if (radio2.Text == "1")
                {
                    radio2.Checked = true;
                }
            }

            ConexionBD.Desconectar();
        }
        private void frmVenta_Load(object sender, EventArgs e)
        {
            
            
        }



        private void mimetodo(object sender, EventArgs e)
        {
            MessageBox.Show("ff"+sender);
        }

    }
}

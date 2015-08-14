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


        //lista para capturar los datos
        List<string> lista = new List<string>();



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
            DataSet datos1 = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_tipos_comprobante");
            DataSet datos = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_formas_pago");
            DataSet datos2 = ConexionBD.EjecutarProcedimientoReturnDataSet("ventas_tipos_tarjeta");
            

            // para generar los radiobutons de FORMAS DE PAGO
            int y = 0;
            foreach (DataRow row in datos1.Tables[0].Rows)
            {
                RadioButton radio = new RadioButton();
                radio.Text = Convert.ToString(row["nombre"]);
                radio.Tag = Convert.ToString(row["id"]);
    
                y += 20;
                radio.Location = new Point(20, y);

                gbTipoComprobante.Controls.Add(radio);

                if (Convert.ToInt32(radio.Tag) == 1)
                {
                    radio.Checked = true;
                    lista.Add(Convert.ToString(row["nombre"]));
                }

                radio.Click += new EventHandler(radiobuton);
               
            }

            // para generar los radiobutons de COMPROBANTES DE PAGO
            int z = 0;
            foreach (DataRow row1 in datos.Tables[0].Rows)
            {
                RadioButton radio1 = new RadioButton();
                radio1.Text = Convert.ToString(row1["nombre"]);
                radio1.Tag = Convert.ToString(row1["id"]);

                z += 20;
                radio1.Location = new Point(20, z);

                gbFormasPago.Controls.Add(radio1);
                
                if (Convert.ToInt32(radio1.Tag) == 1)
                {
                    radio1.Checked = true;
                    lista.Add(Convert.ToString(row1["nombre"]));
                }
                radio1.Click += new EventHandler(radiobutonTipoTarjeta);
            }

            // para generar los radiobutons de TIPOS DE TARJETA
            int zz = 0;
            foreach (DataRow row2 in datos2.Tables[0].Rows)
            {
                RadioButton radio2 = new RadioButton();
                radio2.Text = Convert.ToString(row2["nombre"]);
                radio2.Tag = Convert.ToString(row2["id"]);

                zz += 20;
                radio2.Location = new Point(20, zz);

                gbTiposTarjeta.Controls.Add(radio2);

                if (Convert.ToInt32(radio2.Tag) == 1)
                {
                    radio2.Checked = true;
                    lista.Add(Convert.ToString(row2["nombre"]));
                }
                radio2.Click += new EventHandler(radiobuton);
            }

            ConexionBD.Desconectar();
        }
        private void frmVenta_Load(object sender, EventArgs e)
        {
            ConexionBD.Conectar(false, string_ArchivoConfiguracion);

            ConexionBD.autoCompletar(tbBusca, "SELECT nombre,nroserie FROM `producto`");
            ConexionBD.Desconectar();
            
        }


        /// <summary>
        /// METODO PARA CAPTURAR EL EVENTO CLICK
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void radiobuton(object sender, EventArgs e)
        {
            var nombre = (RadioButton)sender;
           // MessageBox.Show(nombre.Text);
            if (nombre.Text == "TARJETA")
            {
                tipo = Tipo.radio;
            }
            

            if (nombre.Checked)
            {
                MessageBox.Show(nombre.Text);
                
            }

            habilitaBoton();
        }



        /// <summary>
        /// CAPTURA EVENTO CLICK PARA EL GRUPO DE FORMAS DE PAGO
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void radiobutonTipoTarjeta(object sender, EventArgs e)
        {
            var nombre = (RadioButton)sender;
            if (nombre.Text == "TARJETA")
            {
                tipo = Tipo.radio;
            }
            else
            {
                tipo = Tipo.inicio;
            }

             habilitaBoton();
        }


        






        

        #region ------para las logica de botoners-------------
        private enum Tipo
        {
            guardar, modificar, eliminar, grid, radio,inicio
        }
        private Tipo tipo;




        private void habilitaBoton()
        {
            //btnGuardar.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            //gbDatosPersonales.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            //gbDatosContacto.Enabled = tipo == Tipo.guardar || tipo == Tipo.modificar;
            //dgvDatos.Enabled = dgvDatos.Rows.Count > 0;

            gbTiposTarjeta.Enabled = tipo == Tipo.radio;

        }
        #endregion







    }
}

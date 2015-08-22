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
    public partial class frmLoguin : Form
    {
        CConection ConexionBD;
        Correos EnviarCorreo;
        string string_ArchivoConfiguracion;
        object privilegio, usuario;
        /// <summary>
        /// Propiedad de login Ok
        /// </summary>
        int login;

        public int Login
        {
            get { return login; }
            set { login = value; }
        }
        public frmLoguin()
        {
            InitializeComponent();
            ConexionBD = new CConection();
            EnviarCorreo = new Correos();
            string_ArchivoConfiguracion = System.Environment.CurrentDirectory + @"\confiRed.cfg";
            login = 0;
        }

        private void lbRed_Click(object sender, EventArgs e)
        {
            frmCambiarIP cambio = new frmCambiarIP(string_ArchivoConfiguracion);
            cambio.ShowDialog();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {




           
            object[] Variables = { tbUsuario.Text, tbPass.Text };
            object[] Paramentros = { "pIdUsuario", "pPassword" };

            string Mensaje = "false";
            try
            {
                ConexionBD.Conectar(false, string_ArchivoConfiguracion);
                Mensaje = ConexionBD.EjecutarProcedimientoReturnMensaje("usuario_valida", Paramentros, Variables);
                if (Mensaje == "true")
                {
                    DataTable tabla = ConexionBD.EjecutarProcedimientoReturnDataSet("usuario_privilegios", Paramentros, Variables).Tables[0];
                    clases.Cfunciones.Globales.privilegio = Convert.ToInt32(tabla.Rows[0][0]); //para el usuario 
                    privilegio = tabla.Rows[0][0]; //obteniendo el tipo de privilegio
                    usuario = tabla.Rows[0][1];// obteniendo el usuario de acceso
                 
                }
            }
            catch
            {
                Mensaje = "false";
            }
            finally
            {
                ConexionBD.Desconectar();
            }
            tbUsuario.Text = "";
            tbPass.Text = "";
            if (Mensaje.Trim().ToLower() == "false")
            {
                MessageBox.Show("Usuario o Clave Incorrecta", "Error", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                tbUsuario.Focus();
            }
            else
            {
                try
                {

                    clases.Cfunciones.Globales.nameUser = usuario.ToString();

                    if ((int)privilegio == 0)
                    {
                        login = 1;
                        this.Close();

                    }
                    else { MessageBox.Show("Usuario no Autorizado", "Información", MessageBoxButtons.OK, MessageBoxIcon.Asterisk); }


                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, ex.Source);
                }

            }



        }

        private void frmLoguin_Load(object sender, EventArgs e)
        {
            tbUsuario.Focus();
            tbUsuario.Select();
        }

        private void tbPass_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                this.btnIngresar_Click(sender, new EventArgs());

            }
            if (e.KeyChar == (char)Keys.Escape)
            {
                this.btnCancelar_Click(sender, new EventArgs());
            }
        }

       
    }
}

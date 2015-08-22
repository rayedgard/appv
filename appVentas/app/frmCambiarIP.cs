using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.IO;
using System.Diagnostics;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using clases;
namespace app
{
    public partial class frmCambiarIP : Form
    {
        CValidacion ValidarDatos;
     

        string string_ArchivoConfiguracion;
        public frmCambiarIP(string ArchivoConfig)
        {
            string_ArchivoConfiguracion = ArchivoConfig;
            InitializeComponent();
            ValidarDatos = new CValidacion();
        
        }


        

        public void CargarConfiguracionEquipo()
        {
            
            CConfigXML configXml_ArchivoConfiguracion = new CConfigXML(string_ArchivoConfiguracion);

    
            tbservidor.Text = configXml_ArchivoConfiguracion.GetValue("principal", "servidor", "localhost");
            tbdatabase.Text = configXml_ArchivoConfiguracion.GetValue("principal", "database", "hospital");
            tbuser.Text = configXml_ArchivoConfiguracion.GetValue("principal", "usuario", "root");
            tbpassword.Text = configXml_ArchivoConfiguracion.GetValue("principal", "contrasenia", "mysql");
            //---para las configuraciones iniciales --------------imprime en panatalla
            tbNumeroCaja.Text= configXml_ArchivoConfiguracion.GetValue("principal", "numerocaja", "");//---> numero de caja 
            tbSerieFactura.Text = configXml_ArchivoConfiguracion.GetValue("principal", "seriefactura", "");//---> Serie de factura
            tbNumeroFactura.Text = configXml_ArchivoConfiguracion.GetValue("principal", "numerofactura", "");//---> numero de factura
            tbSerieBoleta.Text = configXml_ArchivoConfiguracion.GetValue("principal", "serieboleta", "");//---> Serie de boleta
            tbNumeroBoleta.Text = configXml_ArchivoConfiguracion.GetValue("principal", "numeroboleta", "");//---> numero de boleta
            //--------fiun configuraciones iniciales -----------
            System.Environment.SpecialFolder folderProgramas = System.Environment.SpecialFolder.ProgramFiles;
            System.Environment.SpecialFolder folderUsuarios = System.Environment.SpecialFolder.CommonApplicationData;
            string ProgramMySQL = Environment.GetFolderPath(folderProgramas) + @"\MySQL\MySQL Server 5.5";
            tbrutamysqldump.Text = configXml_ArchivoConfiguracion.GetValue("principal", "mysqldump", string.Format(@"{0}\bin\mysqldump.exe", ProgramMySQL));
            tbmysql.Text = configXml_ArchivoConfiguracion.GetValue("principal", "mysql", string.Format(@"{0}\bin\mysql.exe", ProgramMySQL));

        }

      

    


      




        public void CrearBATInstalacionMySQL()
        {
            System.IO.DirectoryInfo infoCarpeta = new DirectoryInfo(string_ArchivoConfiguracion);
            string folderAplicsssacion = infoCarpeta.Parent.FullName;
            string InstalerBAT = folderAplicsssacion + @"\InstallMySQL.bat";
            string mysqlmsi = folderAplicsssacion + @"\mysql-5.5.14-win32.msi";

            if (File.Exists(InstalerBAT))
                File.Delete(InstalerBAT);

            StreamWriter writer = File.CreateText(InstalerBAT);
            writer.WriteLine("echo on");
            writer.WriteLine("cls"); 
            writer.WriteLine("echo Starting Install...");
            writer.WriteLine(string.Format(@"set mysql_msi=""{0}""", mysqlmsi));
            writer.WriteLine("set mysql_svname=MySQL");

            System.Environment.SpecialFolder folderProgramas = System.Environment.SpecialFolder.ProgramFiles;
            System.Environment.SpecialFolder folderUsuarios = System.Environment.SpecialFolder.CommonApplicationData;
            string ProgramMySQL = Environment.GetFolderPath(folderProgramas) + @"\MySQL\MySQL Server 5.5";
            string UsuarioMySQL = Environment.GetFolderPath(folderUsuarios) + @"\MySQL\MySQL Server 5.5";
            string DiscoProgramFiles = Environment.GetFolderPath(folderProgramas).Substring(0, 1) + @":\MSI-MySQL-Log.txt";
            string MySQLODBC = Environment.GetFolderPath(folderProgramas).Substring(0, 1) + @":\MSI-MySQL-ODBC-Log.txt";
            string MySQLGUI = Environment.GetFolderPath(folderProgramas).Substring(0, 1) + @":\MSI-MySQL-GUI-Log.txt";

            writer.WriteLine(string.Format(@"set mysql_datadir=""{0}\data""", UsuarioMySQL));
            writer.WriteLine(string.Format(@"set mysql_data2=""{0}\data""", ProgramMySQL));
            writer.WriteLine(@"set mysql_cmd=""GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'mysql' WITH GRANT OPTION;""");
            writer.WriteLine("");
            writer.WriteLine(string.Format(@"msiexec /i %mysql_msi% /qn INSTALLDIR=""{0}\"" /L* {1}", ProgramMySQL, DiscoProgramFiles));
            writer.WriteLine("echo MySQL Version 5.5.14 installed...");
            writer.WriteLine("md %mysql_data2%");
            writer.WriteLine("");
            writer.WriteLine(string.Format(@"""{0}\bin\mysqlinstanceconfig.exe"" -i -q ServiceName=MySQRayme RootPassword=mysql ServerType=DEVELOPMENT DatabaseType=MYISAM Port=3306 RootCurrentPassword=mysql", ProgramMySQL));
            writer.WriteLine("echo MySQL Instance Configured...Service started...");
            writer.WriteLine("");
            writer.WriteLine("rem Uncomment next line to allow root access from any pc...");
            writer.WriteLine(string.Format(@"""{0}\bin\mysql.exe"" -uroot -pmysql -e %mysql_cmd%", ProgramMySQL));
            writer.WriteLine("");
            writer.WriteLine(string.Format(@"""{0}\bin\mysql.exe"" -uroot -pmysql -e ""drop database asistencia""", ProgramMySQL));
            writer.WriteLine(string.Format(@"""{0}\bin\mysql.exe"" -uroot -pmysql -e ""create database asistencia""", ProgramMySQL));
            writer.WriteLine("");
            writer.WriteLine("msiexec /qn /i %mysql_odbc% /L* " + MySQLODBC);
            writer.WriteLine("echo ODBC Connector installed...");
            writer.WriteLine("");
            writer.WriteLine("msiexec /qn /i %mysql_gui% /L* " + MySQLGUI);
            writer.WriteLine("echo MySQL GUI Tools installed...");
            writer.WriteLine("");
            writer.WriteLine("echo on");
            //writer.WriteLine("");
            //writer.WriteLine(string.Format(@"explorer ""{0}\bin""",ProgramMySQL));
            writer.Close();


            // Guardar Algunas configuraciones
            //System.Environment.SpecialFolder folderXML = System.Environment.CurrentDirectory;
            //string_ArchivoConfiguracion = System.Environment.CurrentDirectory + @"\RelojSistema.cfg";
            CConfigXML configXml_ArchivoConfiguracion = new CConfigXML(string_ArchivoConfiguracion);
            configXml_ArchivoConfiguracion.SetValue("principal", "servidor", "localhost");
            configXml_ArchivoConfiguracion.SetValue("principal", "database", "asistencia");
            configXml_ArchivoConfiguracion.SetValue("principal", "usuario", "root");
            configXml_ArchivoConfiguracion.SetValue("principal", "contrasenia", "mysql");
            //---- agregamos estas lineas para la configuracion inicial ---------------
            configXml_ArchivoConfiguracion.SetValue("principal", "numerocaja", "");//---> numero de caja 
            configXml_ArchivoConfiguracion.SetValue("principal", "seriefactura", "");//---> Serie de factura
            configXml_ArchivoConfiguracion.SetValue("principal", "numerofactura", "");//---> numero de factura
            configXml_ArchivoConfiguracion.SetValue("principal", "serieboleta", "");//---> Serie de boleta
            configXml_ArchivoConfiguracion.SetValue("principal", "numeroboleta", "");//---> numero de boleta
            //----------fin codigo aumentado
            configXml_ArchivoConfiguracion.SetValue("principal", "mysqldump", string.Format(@"{0}\bin\mysqldump.exe", ProgramMySQL));
            configXml_ArchivoConfiguracion.SetValue("principal", "mysql", string.Format(@"{0}\bin\mysql.exe", ProgramMySQL));
            configXml_ArchivoConfiguracion.SetValue("principal", "instaloMySQL", 1);



        }

       
        private void frmCambiarIP_Load_1(object sender, EventArgs e)
        {
            CargarConfiguracionEquipo();
        }

        private void btnCambiaDatos_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Esta Seguro que quiere cambiar los valores de la conexion de la base de datos\r\nCualquier mal cambio imposibilitara la ejecucion del software de asistencia", "CUIDADO", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Warning) == DialogResult.Yes)
            {
            
                CConfigXML configXml_ArchivoConfiguracion = new CConfigXML(string_ArchivoConfiguracion);

                configXml_ArchivoConfiguracion.SetValue("principal", "servidor", tbservidor.Text.Trim());
                configXml_ArchivoConfiguracion.SetValue("principal", "database", tbdatabase.Text.Trim());
                configXml_ArchivoConfiguracion.SetValue("principal", "usuario", tbuser.Text.Trim());
                configXml_ArchivoConfiguracion.SetValue("principal", "contrasenia", tbpassword.Text);
                //----configuracion inicial------------
                configXml_ArchivoConfiguracion.SetValue("principal", "numerocaja", tbNumeroCaja.Text);
                configXml_ArchivoConfiguracion.SetValue("principal", "seriefactura", tbSerieFactura.Text);
                configXml_ArchivoConfiguracion.SetValue("principal", "numerofactura", tbNumeroFactura.Text);
                configXml_ArchivoConfiguracion.SetValue("principal", "serieboleta", tbSerieBoleta.Text);
                configXml_ArchivoConfiguracion.SetValue("principal", "numeroboleta", tbNumeroBoleta.Text);
                //----fin configuracion inicial---------
                configXml_ArchivoConfiguracion.SetValue("principal", "mysqldump", tbrutamysqldump.Text);
                configXml_ArchivoConfiguracion.SetValue("principal", "mysql", tbmysql.Text);
                CargarConfiguracionEquipo();

                this.Close();
            }
        }

      
    }
}

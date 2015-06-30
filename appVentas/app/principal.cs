﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace app
{
    public partial class Principal : Form
    {
        string string_ArchivoConfiguracion;
        public Principal()
        {
            string_ArchivoConfiguracion = System.Environment.CurrentDirectory + @"\confiRed.cfg";
            InitializeComponent();
        }

        private void Principal_Load(object sender, EventArgs e)
        {
            string content = System.IO.File.ReadAllText("miTema.ini");
            Theme.ColorTable.ReadThemeIniFile(content);
            ribbon1.Refresh();
            this.Refresh();
        }

        private void ribbonButton1_Click(object sender, EventArgs e)
        {
            frmUsuario user = new frmUsuario(string_ArchivoConfiguracion);
            user.MdiParent = this;
            user.Show();
        }
    }
}

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
    public partial class prueba : Form
    {

     

        public prueba()
        {
            InitializeComponent();
            InitializeTimer();
        }



        // This variable will be the loop counter.
        private int counter;

        private void InitializeTimer()
        {
            // Run this procedure in an appropriate event.
            counter = 0;
            Timer1.Interval = 100;
            Timer1.Enabled = true;
            // Hook up timer's tick event handler.
            this.Timer1.Tick += new System.EventHandler(this.Timer1_Tick);
        }


        private void Timer1_Tick(object sender, System.EventArgs e)
        {
            if (counter >= 100)
            {
                // Exit loop code.
                Timer1.Enabled = false;
                counter = 0;
            }
            else
            {
                // Run your procedure here.
                // Increment counter.
                counter = counter + 1;
                label1.Text = "Procedures Run: " + counter.ToString();
            }
        }
    
    }
}

using DevExpress.XtraEditors;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DataVisualization
{
    public partial class MainForm : DevExpress.XtraEditors.XtraForm
    {
        Report1 report1 = new Report1();
        Report2 report2 = new Report2();
         
        public MainForm()
        {
            InitializeComponent();
        }
        private void tileBar_SelectedItemChanged(object sender, TileItemEventArgs e)
        {
            navigationFrame.SelectedPageIndex = tileBarGroupTables.Items.IndexOf(e.Item);
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            navigationPage1.Controls.Add(new Dashboard());
            navigationPage2.Controls.Add(report1);
        }



        private void simpleButton1_Click_1(object sender, EventArgs e)
        {
            navigationPage2.Controls.Clear(); //trang 2 - pie
            navigationPage2.Controls.Add(report1);
        }

        private void simpleButton2_Click(object sender, EventArgs e)
        {
            navigationPage2.Controls.Clear(); // trang 2 - cột
            navigationPage2.Controls.Add(report2);
        }


        private void navigationFrame_Click(object sender, EventArgs e)
        {

        }

    }
}
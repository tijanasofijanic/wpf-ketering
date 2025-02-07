using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace app_ketering
{
    /// <summary>
    /// Interaction logic for Koordinator.xaml
    /// </summary>
    public partial class Koordinator : Window
    {
        public Koordinator()
        {
            InitializeComponent();
        }

        private void btnZatvori_Click(object sender, RoutedEventArgs e)
        {
            MainWindow loginWindow = new MainWindow();
            loginWindow.Show();

            this.Close();
        }

        private void btnUpravljajJelima(object sender, RoutedEventArgs e)
        {
            Jela prozorJela = new Jela();
            prozorJela.ShowDialog();
        }

        private void btnUpravljajPorudzbinama(object sender, RoutedEventArgs e)
        {
            Porudzbina prozorPorudzbina = new Porudzbina();
            prozorPorudzbina.ShowDialog();
        }
    }
}

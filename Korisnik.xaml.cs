using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Windows;
using System.Windows.Media.Imaging;
using System.Windows.Controls;

namespace app_ketering
{
    public partial class Korisnik : Window
    {
        public List<Jelo> KorpaItems { get; set; } = new List<Jelo>();
        public Korisnik()
        {
            InitializeComponent(); 
            UcitajJela();
        }

        private void UcitajJela()
        {
            List<Jelo> jela = UcitajJelaIzBaze();
            JelaItemsControl.ItemsSource = jela;
        }

        private List<Jelo> UcitajJelaIzBaze()
        {
            List<Jelo> jela = new List<Jelo>();
            string connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;
            string query = "SELECT id, naziv, opis, slika, cena FROM jela";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    string imagePath = System.IO.Path.Combine("C:\\Users\\tijan\\source\\repos\\app-ketering\\slike", reader.GetString(3));
                    Jelo jelo = new Jelo
                    {
                        Id = reader.GetInt32(0),
                        Naziv = reader.GetString(1),
                        Opis = reader.GetString(2),
                        Slika = new BitmapImage(new Uri(imagePath, UriKind.Absolute)),
                        Cena = reader.GetDecimal(4)
                    };
                    jela.Add(jelo);
                }
                reader.Close();
            }
            return jela;
        }


        private void btnZatvori_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        private void OrderButton_Click(object sender, RoutedEventArgs e)
        {
            // Pronađi odgovarajuće jelo koje je korisnik izabrao
            Jelo jelo = (sender as Button).DataContext as Jelo;

            // Dodaj jelo u korpu
            KorpaItems.Add(jelo);

            // Opciono: Dajte korisniku obaveštenje o dodavanju u korpu
            MessageBox.Show($"{jelo.Naziv} je dodato u vašu korpu.");
        }
        private void KorpaButton_Click(object sender, RoutedEventArgs e)
        {
            Korpa prozorKorpa = new Korpa(KorpaItems);
            prozorKorpa.ShowDialog();
        }


    }

    public class Jelo
    {
        public int Id { get; set; }
        public string Naziv { get; set; }
        public string Opis { get; set; }
        public BitmapImage Slika { get; set; }
        public decimal Cena { get; set; }
    }

}

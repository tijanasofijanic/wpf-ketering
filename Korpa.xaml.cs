using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
    public partial class Korpa : Window
    {
        public List<Jelo> KorpaItems { get; set; }

        public Korpa(List<Jelo> korpaItems)
        {
            InitializeComponent();
            KorpaItems = korpaItems;
            PrikaziKorpu();
            PrikaziUkupnuCenu(); 
        }
        private void PrikaziKorpu()
        {
            KorpaItemsControl.ItemsSource = KorpaItems;
        }
        private void btnZatvori_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
        private void PrikaziUkupnuCenu()
        {
            decimal ukupnaCena = KorpaItems.Sum(j => j.Cena);
            UkupnaCenaTextBlock.Text = $"{ukupnaCena} RSD";
        }

        private void btnZavrsiKupovinu_Click(object sender, RoutedEventArgs e)
        {
            if (KorpaItems.Count == 0)
            {
                MessageBox.Show("Korpa je prazna!");
                return;
            }
            
            int korisnikId = Sesija.TrenutniKorisnikId;

            string connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlTransaction transaction = connection.BeginTransaction();

                try
                {
                    // Ubacivanje porudžbine
                    string insertPorudzbina = "INSERT INTO porudzbine (idKorisnik, datum, idStatus) OUTPUT INSERTED.id VALUES (@idKorisnik, @datum, 1)";
                    SqlCommand cmdPorudzbina = new SqlCommand(insertPorudzbina, connection, transaction);
                    cmdPorudzbina.Parameters.AddWithValue("@idKorisnik", korisnikId);
                    cmdPorudzbina.Parameters.AddWithValue("@datum", DateTime.Now);
                    int porudzbinaId = (int)cmdPorudzbina.ExecuteScalar();

                    // Ubacivanje stavki porudžbine
                    foreach (var jelo in KorpaItems)
                    {
                        string insertStavke = "INSERT INTO stavkePorudzbine (idPorudzbine, idJela, kolicina) VALUES (@idPorudzbine, @idJela, @kolicina)";
                        SqlCommand cmdStavke = new SqlCommand(insertStavke, connection, transaction);
                        cmdStavke.Parameters.AddWithValue("@idPorudzbine", porudzbinaId);
                        cmdStavke.Parameters.AddWithValue("@idJela", jelo.Id);
                        cmdStavke.Parameters.AddWithValue("@kolicina", 1); 
                        cmdStavke.ExecuteNonQuery();
                    }

                    transaction.Commit();
                    MessageBox.Show("Kupovina uspešno završena!");
                    KorpaItems.Clear();
                    KorpaItemsControl.ItemsSource = null; 
                    PrikaziUkupnuCenu();
                }
                catch
                {
                    transaction.Rollback();
                    MessageBox.Show("Došlo je do greške pri čuvanju narudžbine.");
                }
            }
        }

    }
}

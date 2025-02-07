using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using static MaterialDesignThemes.Wpf.Theme;

namespace app_ketering
{
    public partial class Porudzbina : Window
    {
        private string connectionString;

        public Porudzbina()
        {
            InitializeComponent();
            connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;
            dohvatiPodatke();
        }

        private void dohvatiPodatke()
        {
            List<StavkaPorudzbineViewModel> stavke = new List<StavkaPorudzbineViewModel>();

            string connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"
            SELECT p.id, k.ime AS Korisnik, p.datum, s.naziv AS Status, j.naziv AS NazivJela, sp.kolicina
            FROM porudzbine p
            INNER JOIN korisnici k ON p.idKorisnik = k.id
            INNER JOIN status s ON p.idStatus = s.id
            INNER JOIN stavkePorudzbine sp ON p.id = sp.idPorudzbine
            INNER JOIN jela j ON sp.idJela = j.id";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        dataAdapter.Fill(dataTable);

                        foreach (DataRow row in dataTable.Rows)
                        {
                            stavke.Add(new StavkaPorudzbineViewModel
                            {
                                Id = Convert.ToInt32(row["id"]),
                                Korisnik = row["Korisnik"].ToString(),
                                Datum = Convert.ToDateTime(row["datum"]),
                                Status = row["Status"].ToString(),
                                NazivJela = row["NazivJela"].ToString(),
                                Kolicina = Convert.ToInt32(row["kolicina"])
                            });
                        }

                        datagrid.ItemsSource = stavke;
                    }
                }
            }
        }


        private void btnZatvori_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btnIzmeni_Status(object sender, RoutedEventArgs e)
        {
            StavkaPorudzbineViewModel selectedRow = datagrid.SelectedItem as StavkaPorudzbineViewModel;
            if (selectedRow == null)
            {
                MessageBox.Show("Molimo izaberite porudžbinu.");
                return;
            }
           
            StatusModal statusModal = new StatusModal(selectedRow.Id, connectionString);
            statusModal.Owner = this;
            statusModal.ShowDialog();
            
            dohvatiPodatke();
        }

        public class StavkaPorudzbineViewModel
        {
            public int Id { get; set; }
            public string Korisnik { get; set; }
            public DateTime Datum { get; set; }
            public string Status { get; set; }
            public string NazivJela { get; set; }
            public int Kolicina { get; set; }
        }

    }
}

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Windows;

namespace app_ketering
{
    public partial class Jela : Window
    {
        public Jela()
        {
            InitializeComponent();
            dohvatiPodatke();
        }

        private void btnZatvori_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void dohvatiPodatke()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"SELECT * FROM jela";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        dataAdapter.Fill(dataTable);

                        List<Jelo> jela = new List<Jelo>();
                        foreach (DataRow row in dataTable.Rows)
                        {
                            jela.Add(new Jelo
                            {
                                Id = Convert.ToInt32(row["id"]),
                                Naziv = row["naziv"].ToString(),
                                Opis = row["opis"].ToString(),
                                Slika = row["slika"].ToString(),
                                Cena = Convert.ToDecimal(row["cena"])
                            });
                        }

                        datagrid.ItemsSource = jela;
                    }
                }
            }
        }

        private void btnSnimi_Click(object sender, RoutedEventArgs e)
        {
            // Proveri da li su sva polja popunjena
            if (string.IsNullOrWhiteSpace(txtNaziv.Text) ||
                string.IsNullOrWhiteSpace(txtOpis.Text) ||
                string.IsNullOrWhiteSpace(txtSlika.Text) ||
                string.IsNullOrWhiteSpace(txtCena.Text))
            {
                MessageBox.Show("Molimo popunite sva polja.");
                return;
            }

            // Proveri da li je cena validna
            if (!decimal.TryParse(txtCena.Text, out decimal cena))
            {
                MessageBox.Show("Unesite validnu cenu.");
                return;
            }

            // Dodaj novo jelo u bazu podataka
            string connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"INSERT INTO jela (naziv, opis, slika, cena) VALUES (@naziv, @opis, @slika, @cena)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@naziv", txtNaziv.Text);
                    command.Parameters.AddWithValue("@opis", txtOpis.Text);
                    command.Parameters.AddWithValue("@slika", txtSlika.Text);
                    command.Parameters.AddWithValue("@cena", cena);

                    command.ExecuteNonQuery();
                }
            }

            // Osveži DataGrid
            dohvatiPodatke();

            // Očisti polja
            txtNaziv.Clear();
            txtOpis.Clear();
            txtSlika.Clear();
            txtCena.Clear();
        }

        private void btnOcisti_Click(object sender, RoutedEventArgs e)
        {
            txtNaziv.Clear();
            txtOpis.Clear();
            txtSlika.Clear();
            txtCena.Clear();
        }

        private void btnBrowse_Click(object sender, RoutedEventArgs e)
        {
            Microsoft.Win32.OpenFileDialog openFileDialog = new Microsoft.Win32.OpenFileDialog();
            openFileDialog.Filter = "Image Files (*.jpg; *.jpeg; *.png)|*.jpg;*.jpeg;*.png";
            if (openFileDialog.ShowDialog() == true)
            {
                txtSlika.Text = openFileDialog.FileName;
            }
        }

        private void btnObrisi_Click(object sender, RoutedEventArgs e)
        {
            if (datagrid.SelectedItem != null)
            {

                Jelo selectedJelo = (Jelo)datagrid.SelectedItem;
                int jeloId = selectedJelo.Id;

                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ketering"].ConnectionString);
                try
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand("DELETE FROM jela WHERE id = @jeloId", connection);
                    command.Parameters.AddWithValue("@jeloId", jeloId);
                    command.ExecuteNonQuery();

                    MessageBox.Show("Jelo je uspješno obrisano.");

                    // Osvezava DataGrid
                    dohvatiPodatke();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Greška prilikom brisanja jela: " + ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
            else
            {
                MessageBox.Show("Molimo odaberite jelo za brisanje.");
            }


        }


        public class Jelo
        {
            public int Id { get; set; }
            public string Naziv { get; set; }
            public string Opis { get; set; }
            public string Slika { get; set; }
            public decimal Cena { get; set; }
        }
    }
}
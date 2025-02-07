using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
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
    /// Interaction logic for Administrator.xaml
    /// </summary>
    public partial class Administrator : Window
    {
        public Administrator()
        {
            InitializeComponent();
            dohvatiPodatke();
        }

        public class Uloga
        {
            public int Id { get; set; }
            public string Naziv { get; set; }
        }

        public class Korisnik
        {
            public int Id { get; set; }
            public string Ime { get; set; }
            public string Prezime { get; set; }
            public string Email { get; set; }
            public string Adresa { get; set; }
            public string Grad { get; set; }
            public string Telefon { get; set; }
            public string KorisnickoIme { get; set; }
            public string Lozinka { get; set; }
            public string Uloga { get; set; }
        }

       private void dohvatiPodatke()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = @"
                    SELECT k.id, k.ime, k.prezime, k.email, k.adresa, k.grad, k.telefon, k.korisnickoIme, k.lozinka, u.naziv AS Uloga
                    FROM korisnici k
                    JOIN uloge u ON k.idUloge = u.id";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        dataAdapter.Fill(dataTable);

                        List<Korisnik> korisnici = new List<Korisnik>();
                        foreach (DataRow row in dataTable.Rows)
                        {
                            korisnici.Add(new Korisnik
                            {
                                Id = Convert.ToInt32(row["id"]),
                                Ime = row["ime"].ToString(),
                                Prezime = row["prezime"].ToString(),
                                Email = row["email"].ToString(),
                                Adresa = row["adresa"].ToString(),
                                Grad = row["grad"].ToString(),
                                Telefon = row["telefon"].ToString(),
                                KorisnickoIme = row["korisnickoIme"].ToString(),
                                Lozinka = row["lozinka"].ToString(),
                                Uloga = row["Uloga"].ToString()
                            });
                        }

                        datagrid.ItemsSource = korisnici;
                    }
                }
            }
        }

   

        private void btnZatvori_Click(object sender, RoutedEventArgs e)
        {
            MainWindow loginWindow = new MainWindow();
            loginWindow.Show(); 

            this.Close();  
        }

        private void btnObrisi_Click(object sender, RoutedEventArgs e)
        {
            if (datagrid.SelectedItem != null)
            {
                
                Korisnik selectedUser = (Korisnik)datagrid.SelectedItem;
                int userId = selectedUser.Id;

                SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ketering"].ConnectionString);
                try
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand("DELETE FROM korisnici WHERE id = @userId", connection);
                    command.Parameters.AddWithValue("@userId", userId);
                    command.ExecuteNonQuery();

                    MessageBox.Show("Korisnik je uspješno obrisan.");

                    // Osvezava DataGrid
                    dohvatiPodatke();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Greška prilikom brisanja korisnika: " + ex.Message);
                }
                finally
                {
                    connection.Close();
                }
            }
            else
            {
                MessageBox.Show("Molimo odaberite korisnika za brisanje.");
            }
        }
        private void IzmeniKorisnikaUBazi(Korisnik korisnik)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(
                        "UPDATE korisnici SET ime = @ime, prezime = @prezime, email = @email, adresa = @adresa, grad = @grad, telefon = @telefon, korisnickoIme = @korisnickoIme, lozinka = @lozinka, idUloge = (SELECT id FROM uloge WHERE naziv = @uloga) WHERE id = @id",
                        connection);

                    command.Parameters.AddWithValue("@ime", korisnik.Ime);
                    command.Parameters.AddWithValue("@prezime", korisnik.Prezime);
                    command.Parameters.AddWithValue("@email", korisnik.Email);
                    command.Parameters.AddWithValue("@adresa", korisnik.Adresa);
                    command.Parameters.AddWithValue("@grad", korisnik.Grad);
                    command.Parameters.AddWithValue("@telefon", korisnik.Telefon);
                    command.Parameters.AddWithValue("@korisnickoIme", korisnik.KorisnickoIme);
                    command.Parameters.AddWithValue("@lozinka", korisnik.Lozinka);
                    command.Parameters.AddWithValue("@uloga", korisnik.Uloga);
                    command.Parameters.AddWithValue("@id", korisnik.Id);

                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Greška prilikom ažuriranja korisnika: " + ex.Message);
                }
            }
        }
     
        private void btnIzmeni_Click(object sender, RoutedEventArgs e)
        {
           
            if (datagrid.SelectedItem != null)
            {
                
                try
                {
                    Korisnik selectedKorisnik = (Korisnik)datagrid.SelectedItem;


                    IzmeniKorisnikaUBazi(selectedKorisnik);

                    MessageBox.Show("Podaci su uspešno izmenjeni.");

                    // Osvezava DataGrid
         
                    dohvatiPodatke();
                }
                catch (InvalidCastException ex)
                {
                    MessageBox.Show("Greška pri konverziji: " + ex.Message);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Greška: " + ex.Message);
                }
            }
            else
            {
                MessageBox.Show("Molimo odaberite korisnika za izmenu.");
            }
        }

        private void btnDodaj_Click(object sender, RoutedEventArgs e)
        {
            DodajKorisnika prozorDodaj = new DodajKorisnika();
            prozorDodaj.ShowDialog();
            // Osvezava DataGrid
            dohvatiPodatke();
        }
    }
}

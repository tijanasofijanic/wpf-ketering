using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows;

namespace app_ketering
{
    public partial class DodajKorisnika : Window
    {
        public DodajKorisnika()
        {
            InitializeComponent();
        }

        private void btnSnimi_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    
                    SqlCommand checkUlogaCommand = new SqlCommand(
                        "SELECT id FROM uloge WHERE naziv = @uloga", connection);
                    checkUlogaCommand.Parameters.AddWithValue("@uloga", txtUloga.Text);

                    object ulogaIdObj = checkUlogaCommand.ExecuteScalar();

                    if (ulogaIdObj == null)
                    {
                        SqlCommand insertUlogaCommand = new SqlCommand(
                            "INSERT INTO uloge (naziv) VALUES (@uloga); SELECT SCOPE_IDENTITY();", connection);
                        insertUlogaCommand.Parameters.AddWithValue("@uloga", txtUloga.Text);

                        ulogaIdObj = insertUlogaCommand.ExecuteScalar();
                    }

                    int ulogaId = Convert.ToInt32(ulogaIdObj);

                   
                    SqlCommand command = new SqlCommand(
                        "INSERT INTO korisnici (ime, prezime, email, adresa, grad, telefon, korisnickoIme, lozinka, idUloge) " +
                        "VALUES (@ime, @prezime, @email, @adresa, @grad, @telefon, @korisnickoIme, @lozinka, @idUloge)", connection);

                    command.Parameters.AddWithValue("@ime", txtIme.Text);
                    command.Parameters.AddWithValue("@prezime", txtPrezime.Text);
                    command.Parameters.AddWithValue("@email", txtEmail.Text);
                    command.Parameters.AddWithValue("@adresa", txtAdresa.Text);
                    command.Parameters.AddWithValue("@grad", txtGrad.Text);
                    command.Parameters.AddWithValue("@telefon", txtTelefon.Text);
                    command.Parameters.AddWithValue("@korisnickoIme", txtKorisnickoIme.Text);
                    command.Parameters.AddWithValue("@lozinka", txtLozinka.Text);
                    command.Parameters.AddWithValue("@idUloge", ulogaId);

                    command.ExecuteNonQuery();

                    MessageBox.Show("Korisnik je uspešno dodat.");
                    ClearFields(); // Funkcija za čišćenje polja
                    
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Došlo je do greške: " + ex.Message);
            }
        }


        private void btnOcisti_Click(object sender, RoutedEventArgs e)
        {
            ClearFields();
        }

        private void ClearFields()
        {
            txtIme.Clear();
            txtPrezime.Clear();
            txtEmail.Clear();
            txtAdresa.Clear();
            txtGrad.Clear();
            txtTelefon.Clear();
            txtKorisnickoIme.Clear();
            txtLozinka.Clear();
            txtUloga.Clear();
        }

        private void btnZatvori_Click(object sender, RoutedEventArgs e)
        {
            this.Close();

        }
  
    }
}
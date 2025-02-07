using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Windows;

namespace app_ketering
{
    public partial class MainWindow : Window
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;

        public MainWindow()
        {
            InitializeComponent();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["ketering"].ConnectionString.ToString();
        }

        private void btnPrijava_Click(object sender, RoutedEventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }

            string korIme = korisnickoIme.Text;
            string loz = lozinka.Password;

            int idUloge = ProveraKorisnika(korIme, loz);

            if (idUloge != -1)
            {
                
                string ulogaNaziv;
                if (idUloge == 1)
                {
                    ulogaNaziv = "Administrator";
                }
                else if (idUloge == 2)
                {
                    ulogaNaziv = "Korisnik";
                }
                else if (idUloge == 3)
                {
                    ulogaNaziv = "Koordinator";
                }
                else
                {
                    ulogaNaziv = "Nepoznata uloga";
                }

                MessageBox.Show($"Uspešno ste se prijavili kao {ulogaNaziv}", "Uspešna prijava", MessageBoxButton.OK, MessageBoxImage.Information);

               
                if (idUloge == 1)
                {
                    Administrator adminWindow = new Administrator();
                    adminWindow.Show();
                }
                else if (idUloge == 2)
                {
                    Korisnik userWindow = new Korisnik();
                    userWindow.Show();
                }
                else if (idUloge == 3)
                {
                    Koordinator koorWindow = new Koordinator();
                    koorWindow.Show();
                }

                this.Close();
            }
            else
            {
                MessageBox.Show("Korisničko ime ili lozinka nisu tačni", "Greška", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private int ProveraKorisnika(string korIme, string loz)
        {
                try
                {
                    con.Open();
                    com.Connection = con;
                    com.CommandText = "SELECT k.id, k.ime, k.idUloge FROM korisnici k WHERE k.korisnickoIme=@korIme AND k.lozinka=@loz";
                    com.Parameters.Clear();
                    com.Parameters.AddWithValue("@korIme", korIme);
                    com.Parameters.AddWithValue("@loz", loz);
                    dr = com.ExecuteReader();

                    if (dr.Read())
                    {
                        Sesija.TrenutniKorisnikId = Convert.ToInt32(dr["id"]);
                        Sesija.TrenutniKorisnikIme = dr["ime"].ToString();

                        return Convert.ToInt32(dr["idUloge"]);
                    }
                    else
                    {
                        return -1;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Greška", MessageBoxButton.OK, MessageBoxImage.Error);
                    return -1;
                }
                finally
                {
                    con.Close();
                }
            }

            private void btnZatvori_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}

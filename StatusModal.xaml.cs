using System.Data.SqlClient;
using System.Data;
using System.Windows;

namespace app_ketering
{
    public partial class StatusModal : Window
    {
        private int porudzbinaId;
        private string connectionString;

        public StatusModal(int id, string connStr)
        {
            InitializeComponent();
            porudzbinaId = id;
            connectionString = connStr;
            LoadStatusi();
        }

        private void LoadStatusi()
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT id, naziv FROM status";
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(query, connection);
                    DataTable dataTable = new DataTable();
                    dataAdapter.Fill(dataTable);
                    comboStatusi.ItemsSource = dataTable.DefaultView;
                    comboStatusi.DisplayMemberPath = "naziv";
                    comboStatusi.SelectedValuePath = "id";
                }
                catch (SqlException ex)
                {
                    MessageBox.Show("Greška prilikom povezivanja sa bazom podataka: " + ex.Message);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Greška prilikom učitavanja podataka: " + ex.Message);
                }
            }
        }

        private void btnSnimi_Click(object sender, RoutedEventArgs e)
        {
            if (comboStatusi.SelectedValue == null)
            {
                MessageBox.Show("Molimo izaberite status.");
                return;
            }

            int noviStatusId = Convert.ToInt32(comboStatusi.SelectedValue);

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "UPDATE porudzbine SET idStatus = @idStatus WHERE id = @id";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@idStatus", noviStatusId);
                        command.Parameters.AddWithValue("@id", porudzbinaId);
                        command.ExecuteNonQuery();
                    }
                    MessageBox.Show("Status uspešno izmenjen.");
                    this.Close();
                }
                catch (SqlException ex)
                {
                    MessageBox.Show("Greška prilikom povezivanja sa bazom podataka: " + ex.Message);
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Greška prilikom snimanja podataka: " + ex.Message);
                }
            }
        }

   
    }
}
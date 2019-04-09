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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Agenda2
{
    /// <summary>
    /// Logique d'interaction pour AppointmentList.xaml
    /// </summary>
    public partial class AppointmentList : Page
    {
        private AgendaContext db = new AgendaContext();
        /// <summary>
        /// Déclaration des listes
        /// </summary>
        public AppointmentList()
        {
            InitializeComponent();
            AppointmentsListDataGrid.ItemsSource = db.Appointments.ToList();
            BrokerComboBox.DataContext = db.Brokers.ToList();
            CustomerComboBox.DataContext = db.Customers.ToList();
        }
        /// <summary>
        /// Modification
        /// </summary>
        private void BtnModify_Click(object sender, RoutedEventArgs e)
        {
            //un switch case pour changé un peu du try catch
            MessageBoxResult result = MessageBox.Show("Etes-vous sûr de modifier ?", "Modifier", MessageBoxButton.OKCancel, MessageBoxImage.Question);
            switch (result)
            {
                case MessageBoxResult.OK:
                    ModifyAppointment();
                    break;
                case MessageBoxResult.Cancel:
                    Refresh();
                    // sinon rafrechissement de la page
                    break;
            }
        }

        private void Refresh()
        {
            NavigationService.Navigate(new System.Uri("AppointmentList.xaml", UriKind.RelativeOrAbsolute));
        }

        private void ModifyAppointment()
        {
            //On recupère l'objet avec l'ID actuel
            Appointment appointment = db.Appointments.Find(Convert.ToInt32(TxtAppointmentID.Text));
            //Si l'objet est non nul, on créé un autre objet où on insère les modifications
            //puis on insère les modifications dans l'objet.
            if (appointment != null)
            {
                //Création de l'objet avec les infos modifiés
                var newAppointment = new Appointment()
                {
                    AppointmentID = appointment.AppointmentID,
                    BrokerID = Convert.ToInt32(BrokerComboBox.SelectedValue),
                    CustomerID = Convert.ToInt32(CustomerComboBox.SelectedValue),
                    Subject = TxtSubject.Text,
                    DateHour = Convert.ToDateTime(dateHourDatePicker.Text)
                };
                //On insère les données du nouvel objet dans l'ancien
                db.Entry(appointment).CurrentValues.SetValues(newAppointment);
                db.SaveChanges();
                //On rafraichit le dataGrid.
                AppointmentsListDataGrid.ItemsSource = db.Appointments.ToList();
                //On affiche une alerte afin d'informer la modification.
                MessageBox.Show("Bravo, le rendez-vous à bien été modifier!", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
            }
        }
        /// <summary>
        /// Suppression
        /// </summary>
        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //On recupère l'objet avec l'ID actuel
                Appointment appointment = db.Appointments.Find(Convert.ToInt32(TxtAppointmentID.Text));
                //Si l'objet est non nul, On le supprime puis on actualise le dataGrid avec le db.Appointments.ToList()
                //A la fin, on ouvre une alerte avec le message Suppression.
                if (appointment != null)
                {
                    MessageBoxResult result = MessageBox.Show("Voulez-vous confirmer la suppression?", "Supprimer??", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                    if (result == MessageBoxResult.Yes)
                    {
                        db.Appointments.Remove(appointment);
                        db.SaveChanges();
                        AppointmentsListDataGrid.ItemsSource = db.Appointments.ToList();
                        MessageBox.Show("Bravo, le rendez-vous à bien été supprimé!", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
                    }

                }
                else
                {
                    MessageBox.Show("l'élément que vous voulez supprimer n'existe pas!", "error", MessageBoxButton.OK, MessageBoxImage.Stop);
                }

            }
            catch
            {
                MessageBox.Show("error!", "error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}

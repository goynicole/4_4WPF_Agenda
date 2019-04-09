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
    /// Logique d'interaction pour AddBroker.xaml
    /// </summary>
    public partial class AddBroker : Page
    {
        //déclaration de ma BDD
        private AgendaContext db = new AgendaContext();
        public AddBroker()
        {
            InitializeComponent();
        }
        /// <summary>
        /// ajouter un courtier
        /// </summary>
        private void Save_Click(object sender, RoutedEventArgs e)
        {
            Broker AddBroker = new Broker();


            AddBroker.Lastname = lastnameTextBox.Text;
            AddBroker.Firstname = firstnameTextBox.Text;
            AddBroker.Mail = mailTextBox.Text;
            AddBroker.PhoneNumber = phoneNumberTextBox.Text;
            
            db.Brokers.Add(AddBroker);
            db.SaveChanges();//enregistrement dans la BDD
            MessageBox.Show("Bravo, Courtier ajouté avec succès!", "Succès", MessageBoxButton.OK, MessageBoxImage.Information);
            lastnameTextBox.Clear();//vider les textbox
            firstnameTextBox.Clear();
            mailTextBox.Clear();
            phoneNumberTextBox.Clear();
            NavigationService.Navigate(new System.Uri("BrokersList.xaml", UriKind.RelativeOrAbsolute));//revoie à la liste des courtiers
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            this.NavigationService.Navigate(new BrokersList());
        }
    }
}

# Client lourd : Agenda
>Reprendre la base de données créée pour l'Agenda de l'exercice client léger.

>Rappel :
>1. Table **brokers**  :  

| Colonne     | Type      | Attributs                     |
|-------------|-----------|-------------------------------|
| idBroker    | INT       | Auto-incrémenté, clé primaire |
| lastname    | NVARCHAR  | 50 |
| firstname   | NVARCHAR  | 50 |
| mail        | VARCHAR   | 100 |
| phoneNumber | VARCHAR   | 10 |

>2. Table **customers** :

| Colonne       | Type      | Attributs                     |
| ------------- | --------- | ----------------------------- |
| idCustomer    | INT       | Auto-incrémenté, clé primaire |
| lastname      | NVARCHAR  | 50 |
| firstname     | NVARCHAR  | 50 |
| mail          | VARCHAR   | 100 |
| phoneNumber   | VARCHAR   | 10 |
| budget        | INT       | |

>3. Table **appointments** :  

| Colonne       | Type        | Attributs                     |
| ------------- | ----------- | ----------------------------- |
| idAppointment | INT         | Auto-incrémenté, clé primaire |
| dateHour      | DATETIME    | |
| subject       | TEXT        | |


# Partie 1:

## Exercice 1 :
Créer les classes de toutes vos tables dans Visual Studio  en utilisant le **Framework Entity** et le modèle **Code First** à partir de la base de données.

## Exercice 2 :
Dans le fichier **MainWindow.xaml**, changer le **Title** de la fenêtre en Agenda LaManu.

## Exercice 3 :
Dans le fichier **MainWindow.xaml**, créer un **menu**. Y créer un élément Clients. Dans cet élément, créer deux autres éléments : Ajouter un client et Liste des clients.

## Exercice 4 :
Dans le fichier **MainWindow.xaml**, créer élément **frame**. Il permettra d'afficher nos différentes pages.

## Exercice 5 :
Créer une page appelée **addCustomer** et changer sa couleur de fond.

## Exercice 6 :
Y ajouter un titre, tous les champs et tous les labels correspondant aux champs de la table customers.
Ajouter également un bouton enregistrer et un bouton annuler.

## Exercice 7 :
Dans le fichier **MainWindow.xaml.cs**, faire qu'au clic sur l'élément de menu "Ajouter un client", la page addCustomer s'affiche.

## Exercice 8 :
Dans le fichier **addCustomer.xaml.cs**, permettre l'ajout d'un client dans la base en utilisant les méthodes EntityFramework.

**Bonus :** Quand tout fonctionne, afficher un message disant que l'utilisateur a bien été ajouté. Si quelque chose ne va pas, afficher un message indiquant qu'il y a eu une erreur.

## Exercice 9 :
Créer une page **customersList** et changer sa couleur de fond.
La rendre accessible depuis le menu Liste des clients.

## Exercice 10 :
Ajouter un élément **DataGrid** et y afficher les éléments présents dans la table customers.

## Exercice 11 :
En vue de la modification, y ajouter tous les champs et tous les labels correspondant aux champs de la table customers.
Ajouter également un bouton enregistrer et un bouton supprimer.

## Exercice 12 :
Quand on sélectionne un élement dans le DataGrid, afficher ses informations dans les champs créés à l'exercice 11.

## Exercice 13 :
Permettre la mise à jour des informations au clic sur le bouton Enregistrer.

**Bonus :** Afficher les messages indiquant que le client a bien été modifié ou qu'une erreur est survenue.

## Exercice 14 :
Permettre la suppression de l'élément au clic sur le bouton supprimer.

**Bonus 1 :** Au démarrage de l'application, afficher la liste des clients.

**Bonus 2 :** Au clic sur le bouton Annuler de l'ajout de client, revenir sur la liste des clients.

# Partie 2

## Exercice 1 :
Créer une page appelée **addBroker** et changer sa couleur de fond.  

Dans le fichier **mainWindow.xaml** ajouter un élément de menu Courtiers contenant deux élements :
- Ajouter un courtier
- Liste des courtiers

Au clic sur Ajouter un courtier, afficher la page **addBroker.xaml**.

## Exercice 2 :
Y ajouter un titre, tous les champs et tous les labels correspondant aux champs de la table brokers.
Ajouter également un bouton enregistrer et un bouton annuler.

## Exercice 3 :
Dans le fichier **addBroker.xaml.cs**, permettre l'ajout d'un courtier dans la base en utilisant les méthodes EntityFramework.

**Bonus 1 :** Quand tout fonctionne, afficher un message disant que le courtier a bien été ajouté. Si quelque chose ne va pas, afficher un message indiquant qu'il y a eu une erreur.  
**Bonus 2 :** Au clic sur le bouton Annuler de l'ajout de courtier, revenir sur la liste des courtiers.

## Exercice 4 :
Créer une page **brokersList** et changer sa couleur de fond.
La rendre accessible depuis le menu Liste des courtiers.

## Exercice 5 :
Ajouter un élément **DataGrid** et y afficher les éléments présents dans la table brokers.

## Exercice 6 :
En vue de la modification, y ajouter tous les champs et tous les labels correspondant aux champs de la table brokers.
Ajouter également un bouton enregistrer et un bouton supprimer.

## Exercice 7 :
Quand on sélectionne un élement dans le DataGrid, afficher ses informations dans les champs créés à l'exercice 6.

## Exercice 8 :
Permettre la mise à jour des informations au clic sur le bouton Enregistrer.

**Bonus :** Afficher les messages indiquant que le courtier a bien été modifié ou qu'une erreur est survenue.

## Exercice 9 :
Permettre la suppression de l'élément au clic sur le bouton supprimer.

# Partie 3

## Exercice 1 :

Créer une page **addAppointment.xaml**.

Dans le fichier **mainWindow.xaml** ajouter un élément de menu Rendez-vous contenant deux élements :
- Ajouter un rendez-vous
- Liste des rendez-vous

Au clic sur Ajouter un rendez-vous, afficher la page **addAppointment.xaml**.

## Exercice 2 :

Dans le fichier **addAppointment.xaml** ajouter :

- une ComboBox avec la liste des clients
- une ComboBox avec la liste des courtiers
- un DatePicker pour la date du rendez-vous
- un TextBox pour les heures
- et un TextBox pour les minutes.

Ne pas oublier un bouton pour sauvegarder.

## Exercice 3 :

Permettre l'enregistrement d'un rendez-vous dans la base de données.

**Bonus :** Si l'enregistrement fonctionne afficher le message : "Le rendez-vous a bien été ajouté" sinon afficher "Une erreur est survenue"

## Exercice 4 :

Créer une page **appointmentsList.xaml**. Au clic sur l'élément Liste des rendez-vous créé à l'Exercice 1, afficher cette page.

## Exercice 5 :

Ajouter à cette page un DataGrid contenant la liste des rendez-vous.

## Exercice 6 :

Ajouter tous les élements WPF permettant la modification d'un rendez-vous. Permettre la modification dans la base de données.

**Bonus :** Si la modification fonctionne afficher le message : "Le rendez-vous a bien été ajouté" sinon afficher "Une erreur est survenue"

## Exercice 7 :

Ajouter un bouton supprimer et permettre la suppression d'un rendez-vous.




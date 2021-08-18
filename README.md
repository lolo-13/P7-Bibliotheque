# Système d'information de la bibliothèque - P7
Gestion des bibliothèques d'une grande ville

**Prérequis**
--------------
Apache Maven 3.6.3

PostgreSQL 12

**Déploiement**
---------------
Cloner les 3 projets sous GitHub:

 -https://github.com/lolo-13/api-biblio
 
 -https://github.com/lolo-13/client-ui
 
 -https://github.com/lolo-13/batch

Importer les projets dans l'IDE ( projet développé avec IntelliJ)

Compiler via maven avec la commande mvn clean compile

Le fichier war est généré dans le repertoire target

Créer une base de données nommée library sous postgreSQL

Utiliser le script du dump pour créer les tables puis le script du jeu de données pour remplir les tables de la BDD

Soit demarrer le serveur tomcat sur l'IDE pour les 3 projets, soit copier les fichiers war de l'application depuis le dossier target dans le dossier webapps du répertoire Tomcat, puis lancer le serveur Tomcat

Puis se rendre via le navigateur sur l'adresse http://localhost:9091

L'application est prète à fonctionner avec 3 utilisateurs :

laurie-test@yopmail.com mot de passe 123 pour le rôle d'utilisateur connecté

Et pour les tests Postman et Batch:

biblio@gmail.com mot de passe 123 pour le rôle d'un employé

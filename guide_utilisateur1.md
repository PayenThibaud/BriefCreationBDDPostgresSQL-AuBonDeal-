# Guide utilisateur1
  
## Connexion à la base de données

dans le terminal taper :  
`pgcli -h localhost -U utilisateur1 -d aubondeal`  
Votre mot de passe est : MDP

## Requêtes
  
L'utilisateur1 a uniquement accès au schéma "deal".   
Pour effectuer une requête, vous devez spécifier le schéma avant la table.  
Exemple :  
`select * from deal.products;`  
  
## Visualisation des tables
  
Pour afficher les tables auxquelles l'utilisateur1 a accès :   
`\dt deal.`    
  
## Ajouter des données au Table
  
Pour ajouter des données au table :  
`INSERT INTO deal.(nomTable) ( (nomColonne1), (nomColonne2), ...) VALUES ( (valeur1), (valeur2), ...);`  
  
## Mettre à jour / corriger une donnée une Table  
  
Pour mettre à jours une donnée d'une table :  
`UPDATE deal.(nomTable) SET (nomColonne1) = 'NouveauNom' WHERE (nomColonneKP) = (valeurKP);`   
*Il est préférable d'utiliser la colonne qui contient la PRIMARY KEY pour éviter des bugs.*  
  
## Supprimer des données d'une Table  
  
Pour supprimer une donnée d'une table :  
`DELETE FROM deal.(nomTable) WHERE (nomColonneKP) = (valeurKP);`  
*Il est préférable d'utiliser la colonne qui contient la PRIMARY KEY pour éviter des bugs.*
  
## Quitter pgcli
  
Pour déconnecter la session :  
`\q`   
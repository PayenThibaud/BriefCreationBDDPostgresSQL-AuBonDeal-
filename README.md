# Brief Creation BDDP ostgresSQL-Au Bon Deal-
  
## Description du repotitories
  
### 1 Table "Products"
- **Description** : Cette table stocke des informations sur les produits disponibles dans le système AuBonDeal. Chaque ligne représente un produit spécifique avec son nom, sa description, son prix, sa quantité en stock, ainsi que des horodatages de création et de mise à jour.
- **Colonnes :**
    - `product_UUID` : Identifiant unique du produit (UUID).
    -  `product_name` : Nom du produit.
    - `product_description` : Description du produit.
    - `product_price` : Prix du produit.
    - `product_quantity` : Quantité en stock du produit.
    - `created_at` : Horodatage de création du produit.
    - `updated_at` : Horodatage de mise à jour du produit.
  
### 2 Table "Users"
- **Description** : Cette table stocke des informations sur les utilisateurs du système AuBonDeal. Chaque ligne représente un utilisateur avec un identifiant unique, un pseudo, un nom d'utilisateur, un mot de passe et un horodatage de création.
- **Colonnes :**
    - `User_UUID` : Identifiant unique de l'utilisateur (UUID).
    - `user_pseudo` : Pseudo de l'utilisateur.
    - `username` : Nom d'utilisateur.
    - `user_password` : Mot de passe de l'utilisateur (stocké de manière sécurisée).
    - `created_at` : Horodatage de création de l'utilisateur.
  
### 3 Table "Orders"
- **Description** : Cette table stocke des informations sur les commandes passées dans le système AuBonDeal. Chaque ligne représente une commande avec un numéro unique, le coût total hors taxes, la quantité totale, des horodatages de création et de livraison, ainsi que la référence de l'utilisateur qui a passé la commande.
- **Colonnes :**
    - `order_number` : Numéro unique de la commande.
    - `order_total_cost_ht` : Coût total de la commande hors taxes.
    - `order_total_quantity` : Quantité totale des produits commandés.
    - `created_at` : Horodatage de création de la commande.
    - `deliver_at` : Horodatage de livraison de la commande.
    - `user_UUID` : Référence à l'utilisateur qui a passé la commande (clé étrangère).
  
### 4 Table "belong"
- **Description** : Cette table représente une relation many-to-many entre les produits et les commandes. Chaque ligne indique qu'un produit spécifique appartient à une commande spécifique.
- **Colonnes :**
    - `product_UUID` : Référence au produit (clé étrangère).
    - `order_number` : Référence à la commande (clé étrangère).

  

//Vous devez créer le modèle relationnel ci-dessus en utilisant le langage SQL et en vous basant sur les différentes contraintes mentionnées.
Après avoir créé les tables, écrivez les commandes SQL pour :
Ajouter une colonne Catégorie (VARCHAR2(20)) à la table PRODUIT. 
Ajouter une colonne Date de commande (DATE) ; à la table COMMANDES qui ont SYSDATE comme valeur par défaut.
.
CREATE TABLE CLIENT (
    ID_CLIENT NUMBER PRIMARY KEY,
    NOM VARCHAR2(50) NOT NULL,
    PRENOM VARCHAR2(50) NOT NULL,
    ADRESSE VARCHAR2(100),
    TELEPHONE VARCHAR2(20)
);

CREATE TABLE PRODUIT (
    ID_PRODUIT NUMBER PRIMARY KEY,
    NOM VARCHAR2(50) NOT NULL,
    PRIX NUMBER(10,2) NOT NULL
);

CREATE TABLE COMMANDES (
    ID_COMMANDE NUMBER PRIMARY KEY,
    ID_CLIENT NUMBER,
    ID_PRODUIT NUMBER,
    QUANTITE NUMBER NOT NULL,
    FOREIGN KEY (ID_CLIENT) REFERENCES CLIENT(ID_CLIENT),
    FOREIGN KEY (ID_PRODUIT) REFERENCES PRODUIT(ID_PRODUIT)
);

-- Ajout de la colonne Catégorie à la table PRODUIT
ALTER TABLE PRODUIT ADD (CATEGORIE VARCHAR2(20));

-- Ajout de la colonne Date de commande à la table COMMANDES avec SYSDATE comme valeur par défaut
ALTER TABLE COMMANDES ADD (DATE_COMMANDE DATE DEFAULT SYSDATE);

CREATE TABLE PRODUIT_RECHERCHE
(
    ID_PRODUIT_RECHERCHE INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    PRODUIT_RECHERCHE VARCHAR(100) NOT NULL,
    DATE_PRODUIT_RECHERCHE DATETIME NOT NULL,
    ID_VISITEUR INT,
    ID_UTILISATEUR INT,
    FOREIGN KEY (ID_VISITEUR) REFERENCES VISITEUR(ID_VISITEUR),
    FOREIGN KEY (ID_UTILISATEUR) REFERENCES UTILISATEUR(ID_UTILISATEUR)
);
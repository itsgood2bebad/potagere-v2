CREATE TABLE UTILISATEUR
(
    ID_CLIENT INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NOM_CLIENT VARCHAR(50) NOT NULL,
    PRENOM_CLIENT VARCHAR(50) NOT NULL,
    EMAIL_CLIENT VARCHAR(50) NOT NULL,
    MDP_CLIENT VARCHAR(50) NOT NULL,
    ADRESSE_CLIENT VARCHAR(50) NOT NULL,
    TELEPHONE_CLIENT VARCHAR(20) NOT NULL,
    DATE_NAISSANCE_CLIENT DATE NOT NULL,
);
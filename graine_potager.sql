CREATE TABLE FOURNISSEUR (
ID_FOURNISSEUR int NOT NULL auto_increment
,LIB_NOM_FOURNISSEUR varchar(50)
,LIB_PRENOM_FOURNISSEUR varchar(50)
,ADRESSE_MAIL_FOURNISSEUR varchar(50)
,MDP_FOURNISSEUR varchar(10)
,NUM_FAX_FOURNISSEUR varchar(10)
,PRIMARY KEY (ID_FOURNISSEUR)
)ENGINE=InnoDB;

CREATE TABLE JARDINIER (
ID_JARDINIER int NOT NULL auto_increment
,LIB_NOM_JARDINIER varchar(50)
,LIB_PRENOM_JARDINIER varchar(50)
,ADRESSE_MAIL_JARDINIER varchar(50)
,MDP_JARDINIER varchar(10)
,DATE_NAISSANCE_JARDINIER date
,PRIMARY KEY (ID_JARDINIER)
)ENGINE=InnoDB;

CREATE TABLE ADMINISTRATEUR (
ID_ADMINISTRATEUR int NOT NULL auto_increment
,LIB_NOM_ADMINISTRATEUR varchar(50)
,LIB_PRENOM_ADMINISTRATEUR varchar(50)
,ADRESSE_MAIL_ADMINISTRATEUR varchar(50)
,MDP_ADMINISTRATEUR varchar(10)
,NUM_PORTABLE_ADMINISTRATEUR varchar(10)
,PRIMARY KEY (ID_ADMINISTRATEUR)
)ENGINE=InnoDB;

CREATE TABLE RECETTE (
ID_RECETTE int NOT NULL auto_increment
,LIB_NOM_RECETTE varchar(50)
,DESC_RECETTE varchar(255)
,ID_JARDINIER int
,PRIMARY KEY (ID_RECETTE)
,FOREIGN KEY (ID_JARDINIER) REFERENCES JARDINIER (ID_JARDINIER)
)ENGINE=InnoDB;


CREATE TABLE FAMILLE (
ID_FAMILLE int NOT NULL auto_increment
,LIB_FAMILLE varchar(50)
,PRIMARY KEY (ID_FAMILLE)
)ENGINE=InnoDB;

CREATE TABLE GRAINE (
ID_GRAINE int NOT NULL auto_increment
,LIB_GRAINE varchar(50)
,SEMAINE_MIN date
,SEMAINE_MAX date
,ESPACE_PIED float
,ESPACE_LIGNE float
,ID_FAMILLE int
,PRIMARY KEY (ID_GRAINE)
,FOREIGN KEY (ID_FAMILLE) REFERENCES FAMILLE (ID_FAMILLE)
)ENGINE=InnoDB;

CREATE TABLE PHOTO (
ID_PHOTO int NOT NULL auto_increment
,LIB_PHOTO varchar(50)
,CHEMIN_PHOTO varchar(255)
,ID_GRAINE int
,PRIMARY KEY (ID_PHOTO)
,FOREIGN KEY (ID_GRAINE) REFERENCES GRAINE (ID_GRAINE)
)ENGINE=InnoDB;

CREATE TABLE MAPPING_RECETTE_GRAINE (
ID_GRAINE int NOT NULL
,ID_RECETTE int NOT NULL
,FOREIGN KEY (ID_GRAINE) REFERENCES GRAINE (ID_GRAINE)
,FOREIGN KEY (ID_RECETTE) REFERENCES RECETTE (ID_RECETTE)
)ENGINE=InnoDB;

CREATE TABLE MAPPING_FOURNISSEUR_GRAINE (
ID_GRAINE int NOT NULL
,ID_FOURNISSEUR int NOT NULL
,PRIX float
,POIDS float
,FOREIGN KEY (ID_GRAINE) REFERENCES GRAINE (ID_GRAINE)
,FOREIGN KEY (ID_FOURNISSEUR) REFERENCES FOURNISSEUR (ID_FOURNISSEUR)
)ENGINE=InnoDB;

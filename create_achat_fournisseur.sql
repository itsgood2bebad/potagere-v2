CREATE TABLE ACHAT_FOURNISSEUR
(
    ID INT NOT NULL AUTO_INCREMENT,
    ID_GRAINE INT,
    ID_FOURNISSEUR INT,
    ID_STOCK INT,
    QUANTITE INT,
    PROVENANCE CHAR(100)
)
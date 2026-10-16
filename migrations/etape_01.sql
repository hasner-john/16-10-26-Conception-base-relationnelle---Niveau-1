CREATE TABLE CATEGORIES(
        id_categorie NUMBER(6),
        categorie VARCHAR2(20),

        CONSTRAINT pk_CATEGORIES PRIMARY KEY (id_categorie)
);
CREATE TABLE PLATS(
    id_plat NUMBER(6),
    nom VARCHAR(20),
    id_categorie NUMBER(6),
    prix NUMBER(20),

    CONSTRAINT pk_PLATS PRIMARY KEY (id_plat),
    CONSTRAINT fk_PLATS_CATEGORIES FOREIGN KEY (id_categorie) REFERENCES CATEGORIES(id_categorie)
);
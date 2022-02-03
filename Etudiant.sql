-- Création des tables --
create table Étudiant (
	Id int(10) not null auto_increment,
    Nom varchar(15) not null,
    Prénom varchar(20) not null,
    Age int(3) not null,
    DateDeNaissance date not null,
    Statut enum('T.plein','T.partiel'),
    Crédit int(2),
    CodePermanent varchar(11) not null,
    primary key (Id)
);
create table Téléphone (
	Id int(10) not null auto_increment,
    Indicatif char(3) not null,
    Numéro varchar(8) not null,
    Principale enum('Oui','Non'),
    Cellulaire enum('Oui','Non'),
    Id_Etudiant int(10) not null,
    primary key (Id),
    foreign key (Id_Etudiant) references Étudiant(Id)
);
create table Adresse (
	Id int(10) not null auto_increment,
    Numéro char(3) not null,
    Rue varchar(15) not null,
    Ville varchar(15) not null,
    CodePostal varchar(7) not null,
    Province varchar(10),
    Pays varchar(10),
    Principale enum('Oui','Non'),
    Supprimé enum('Oui','Non'),
    Id_Etudiant int(10) not null,
    primary key (Id),
    foreign key (Id_Etudiant) references Étudiant(Id)
);
-- Saisie des données --
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Blow','Joe','72','T.partiel','12','BJOE4575891','1950-01-01');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Luke','Lucky','85','T.partiel','3','LLUC4575891','1937-07-01');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Allen','Woody','86','T.plein','21','AWOO4575891','1933-07-23');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Mousse','Mickey','22','T.plein','30','MMIC4575891','1990-03-10');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Duck','Donald','28','T.partiel','2','DDON4575891','1990-11-05');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Tarrantino','Quentin','58','T.partiel','18','TQUE4575891','1965-05-06');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Morisson','Jim','37','T.plein','3','MJIM4575891','1949-02-03');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('John','Elton','33','T.partiel','33','JELT4575891','1970-11-12');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Star','Ringo','47','T.plein','54','SRIN4575891','1932-07-04');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Lennon','John','62','T.partiel','9','LJOH4575891','1982-10-28');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Trump','Donald','100','T.plein','0','TDON4575891','1950-03-15');
INSERT INTO Étudiant (Nom, Prénom, Age, Statut, Crédit, CodePermanent, DateDenaissance)
VALUES ('Van Halen','Eddy','65','T.partiel','21','VEDD4575891','1965-06-04');
-- ------------------------------------- --
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (518,'663-2545','Oui','Non','1');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (514,'452-2125','Non','Oui','2');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (514,'452-6085','Oui','Non','2');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (418,'777-4585','Non','Oui','3');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (418,'785-2251','Oui','Oui','4');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (819,'452-0215','Oui','Non','5');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (819,'784-5252','Non','Non','6');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (819,'652-5260','Oui','Oui','6');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (418,'555-2360','Non','Oui','7');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (514,'875-5850','Non','Oui','8');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (819,'458-0258','Oui','Oui','9');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (819,'785-5541','Non','Oui','10');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (819,'4586-1029','Non','Non','9');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (514,'774-5582','Oui','Oui','11');
INSERT INTO Téléphone (Indicatif, Numéro, Principale, Cellulaire, Id_Etudiant)
VALUES (514,'302-5520','Oui','Non','12');
-- ----------------------------------- --
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('1', 'Rue Gauttier', 'Lévis','G3C 4R5','Québec','Canada','Oui','Non','1');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('235', 'Rue Vinary', 'Montreal','G4F V3R','Québec','Canada','Oui','Non','2');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('110', 'Avenue Oullet', 'Granby','F3F R3W','Québec','Canada','Non','Non','3');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('23', 'Rue Cherstey', 'Jolliette','G5Y 7U8','Québec','Canada','Oui','Non','4');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('10', 'Rue Belair', 'Bonnelle','75000','Paris','France','Non','Non','4');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('15', 'Rue Cherstey', 'Jolliette','2W3 R3W','Québec','Canada','Oui','Non','5');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('05', 'Rue Vianney', 'Jolliette','G6V 3L0','Québec','Canada','Non','Non','5');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('60', 'Avenue Aviateur', 'Granby','G5Y R3W','Québec','Canada','Non','Non','6');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('8', 'Rue ginger', 'Lévis','G3C 4R5','Québec','Canada','Oui','Non','7');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('104', 'Rue St-Honoré', 'Québec','G4F V3R','Québec','Canada','Oui','Non','8');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('110', 'Av. la Libraire', 'Gaspésie','F3F R3W','Québec','Canada','Non','Non','9');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('150', 'Av. hallouette', 'Paris','751500','Paris','France','Oui','Non','9');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('85', 'Rue Yvon', 'St-Pascal','2W3R3W','Québec','Canada','Oui','Non','10');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('65', 'Rue Cherstey', 'Jolliette','2W3 R3W','Québec','Canada','Oui','Non','11');
INSERT INTO Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
VALUES ('105', 'Avenue Aviateur', 'Lévis','G5Y R3W','Québec','Canada','Non','Non','12');

-- Modifications tables --
alter table adresse
change column supprimé supprimé enum('Oui','Non');
alter table adresse
change column principale principale enum('Oui','Non');
alter table téléphone
change column principale principale enum('Oui','Non');
alter table téléphone
change column numéro numéro varchar(8);
alter table téléphone
change column cellulaire cellulaire enum('Oui','Non');

-- Modification de données --
update téléphone
set principale='Non'
where Id_Etudiant=(select Id from Étudiant where Nom='Trump') ;

update Étudiant
set statut='T.partiel'
where Id_Etudiant=(select Id from Étudiant where Nom='Trump') ;

update téléphone
set indicatif='454',
	Numéro='568-1456'
where Id_Etudiant=(select Id from Étudiant where Nom='Trump') ;

update adresse
set principale='Non'
where Id_Etudiant=(select Id from Étudiant where Nom='Trump') ;

update adresse
set ville='St-Georges',
	codePostal='G0R 3E0',
    numéro='256'
where Id_Etudiant=(select Id from Étudiant where Nom='Trump') ;

update adresse
set ville='St-Georges',
	codePostal='G0R 3E0',
    numéro='256'
where Id_Etudiant=(select Id from Étudiant where Nom='Trump') ;

insert into Adresse (Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant)
select Numéro, Rue, Ville, CodePostal, Province, Pays, Principale, Supprimé, Id_Etudiant
from Adresse
where id_Etudiant=11;

-- Suppressions --

delete from Étudiant where id=11;

drop table téléphone;

/*suppression logique*/
Update adresse
set supprimé='Oui'
where id_Etudiant=11;

-- Modification de table --
alter table Étudiant
add DiplomeObtenu varchar (50),
add AnnéeDiplomation year;

alter table Adresse
add Compte varchar (30);

alter table Téléphone
add Maison enum('Oui','Non');

-- Sélection --
select * from Étudiant
inner join téléphone
on Étudiant.Id=Téléphone.Id_Etudiant
where Téléphone.indicatif='514';

select * from Étudiant
full join téléphone;

select Étudiant.nom, Étudiant.prénom, Adresse.numéro,Adresse.rue, Adresse.ville from Étudiant, Adresse
where Étudiant.Id=Adresse.Id_Etudiant
order by Étudiant.prénom desc;

select Étudiant.nom, Étudiant.prénom, Étudiant.CodePermanent, Adresse.ville from Étudiant, Adresse
where Adresse.Ville='Québec'and Étudiant.Age>=30 and Étudiant.statut='T.partiel';

select * from Téléphone
where indicatif=819;

select distinct Étudiant.nom, Étudiant.prénom, Téléphone.indicatif, Téléphone.Numéro from Étudiant, Téléphone
where Étudiant.Id=Téléphone.Id_Etudiant and Étudiant.Crédit>=12;


select distinct Étudiant.nom, Étudiant.prénom, Étudiant.CodePermanent from Étudiant, Adresse
where Étudiant.Id=Adresse.Id_Etudiant and (Adresse.Ville='Québec' or Adresse.ville= 'Montreal');

select distinct Étudiant.nom, Étudiant.prénom, Étudiant.CodePermanent from Étudiant, Adresse
where Étudiant.Id=Adresse.Id_Etudiant and Adresse.pays!='Canada';

select Adresse.rue, Adresse.ville, adresse.CodePostal from Adresse
where Adresse.CodePostal like'%R3W';

select * from Étudiant
left join Adresse
on Étudiant.id=Adresse.id_Etudiant;

select * from Adresse
cross join Téléphone
on adresse.Id_Etudiant=Téléphone.Id_Etudiant;

select distinct Étudiant.nom, Étudiant.prénom, adresse.numéro, adresse.rue, adresse.ville from Étudiant, Adresse
where Étudiant.Id=Adresse.Id_Etudiant;

select Étudiant.nom, Étudiant.prénom, Étudiant.CodePermanent from Étudiant
where Étudiant.Age>=30;

select Étudiant.nom, Étudiant.prénom, Étudiant.CodePermanent, Téléphone.indicatif, Téléphone.numéro from Étudiant, Téléphone
where Étudiant.Id=Téléphone.Id_Etudiant and Étudiant.Age>=35;
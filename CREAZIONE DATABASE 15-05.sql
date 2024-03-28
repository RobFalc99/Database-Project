	--create database scriptprogetto;

	drop table if exists qualifica_professionale cascade;
	drop table if exists titolo_di_studio cascade;
	drop table if exists obiettivo_formativo cascade;
	drop table if exists competenza cascade;
	drop table if exists docente cascade;

	drop table if exists corso cascade;
	drop table if exists docenza cascade;
	drop table if exists sede cascade;
	drop table if exists responsabile cascade;

	drop table if exists dipendente cascade;
	drop table if exists sviluppo cascade;
	drop table if exists partecipazione cascade;
	drop table if exists comitato cascade;

	drop table if exists valutazione cascade;
	drop table if exists proposta  cascade;
	drop table if exists  istruzione cascade;
	drop table if exists  promozione cascade;

	drop table if exists  gerarchia_passata cascade;
	drop table if exists  esperienza cascade;
	drop table if exists  abilitazione cascade;

	create table qualifica_professionale(
		nome varchar(30)primary key );

	create table titolo_di_studio(
		nome varchar(30)primary key);
		
	create table obiettivo_formativo(
		nome varchar(40)primary key);
		
	create table competenza(
		nome varchar(30)primary key);

		
	create table sede(
		nazione varchar(30),
		citta varchar(30),
		indirizzo varchar(30),
		numero_dipendenti integer not null,
		responsabile char(8) not null unique,
		constraint pk_sede primary key (nazione,citta,indirizzo));


	create table dipendente(
		matricola char(8)primary key,
		CF char(16) unique not null,
		nome varchar(30) not null,
		cognome varchar(30)not null,
		data_di_nascita date not null,
		ruolo varchar(30) not null,
		gerarchia_attuale_inizio date null,
		responsabile char(8) null,
		nazione_sede varchar(30) not null,
		citta_sede varchar(30) not null,
		indirizzo_sede varchar(30) not null,
		constraint fk_dipendente_sede foreign key(nazione_sede,citta_sede,indirizzo_sede)references sede(nazione,citta,indirizzo) 
		on update cascade on delete cascade,
		check ((responsabile is not null and gerarchia_attuale_inizio is not null)
		or (responsabile is null and gerarchia_attuale_inizio is null)));

	create table docente(
		matricola char(12)primary key,
		nome varchar (30) not null,
		cognome varchar(30)not null);

	create table corso(
		codice char(12),
		data_inizio date,
		titolo varchar(30) not null unique,
		obiettivo_formativo varchar(30),
		modalita varchar(30),
		tipo varchar(30),
		data_fine date null,
		constraint pk_corso primary key (codice, data_inizio));
		

	create table docenza(
		codice_corso char (12),
		data_inizio_corso date,
		matricola_docente char(12),
		constraint pk_docenza primary key(codice_corso,data_inizio_corso, matricola_docente),
		constraint fk_docenza_corso foreign key (codice_corso, data_inizio_corso)references corso(codice, data_inizio)
		on update cascade on delete cascade,
		constraint fk_docenza_docente foreign key (matricola_docente)references docente(matricola) 
		on update cascade on delete cascade);

		
	create table partecipazione(
		matricola_dipendente char(8),
		codice_corso char (12),
		data_inizio_corso date,
		constraint pk_partecipazione primary key (matricola_dipendente,codice_corso, data_inizio_corso),
		constraint fk_partecipazione_dipendente foreign key(matricola_dipendente)references dipendente(matricola)
		on update cascade on delete cascade,
		constraint fk_partecipazione_corso foreign key (codice_corso, data_inizio_corso)references corso(codice, data_inizio)
		on update cascade on delete cascade);

	create table responsabile(
		dipendente char (8) primary key,
		tipo varchar(30) not null);
	
		
	create table sviluppo(
		competenza varchar(30),
		codice_corso char(12) not null,
		data_inizio_corso date not null,
		constraint pk_sviluppo primary key (competenza,codice_corso, data_inizio_corso),
		constraint fk_sviluppo_compentenza foreign key (competenza)references competenza(nome)
		on update cascade on delete cascade,
		constraint fk_sviluppo_corso foreign key (codice_corso,data_inizio_corso)references corso(codice,data_inizio)
		on update cascade on delete cascade);
		

	create table valutazione (
		"data" date,
		commento varchar(80)not null,
		dipendente char(8),
		constraint pk_valutazione primary key("data",dipendente),
		constraint fk_valutazione_dipendente foreign key (dipendente)references dipendente(matricola)
		on update cascade on delete cascade);	
		
	create table comitato(
		data_valutazione date,
		dipendente_valutazione char(8),
		dipendente char(8),
		constraint pk_comitato primary key (data_valutazione,dipendente_valutazione,dipendente),
		constraint fk_comitato_valutazione foreign key(data_valutazione,dipendente_valutazione)references valutazione("data",dipendente)
		on update cascade on delete cascade,
		constraint fk_comitato_dipendente foreign key (dipendente)references dipendente(matricola)
		on update cascade on delete cascade);

	create table proposta(
		data_valutazione date,
		dipendente_valutazione char(8),
		obiettivo_formativo varchar(40),
		constraint pk_proposta primary key(data_valutazione,dipendente_valutazione,obiettivo_formativo),
		constraint fk_proposta_valutazione foreign key ( data_valutazione,dipendente_valutazione)references valutazione("data",dipendente)
		on update cascade on delete cascade,
		constraint fk_proposta_obiettivo_formativo foreign key(obiettivo_formativo)references obiettivo_formativo(nome)
		on update cascade on delete cascade);


		
	create table promozione(
		data_inizio_ruolo date,
		ruolo_promozione varchar(30)not null,
		tipo varchar(30),
		data_fine_ruolo date null,
		dipendente char(8),
		constraint pk_promozione primary key(data_inizio_ruolo,dipendente),
		constraint fk_promozione_dipendente foreign key (dipendente)references dipendente(matricola)
		on update cascade on delete cascade);
		
	create table abilitazione (
		dipendente_matricola char(8),
		qualifica_professionale varchar(30),
		constraint pk_abilitazione primary key (dipendente_matricola, qualifica_professionale),
		constraint fk_abilitazione_dipendente foreign key (dipendente_matricola)references dipendente(matricola)
		on update cascade on delete cascade,
		constraint fk_abilitazione_qualifica_professionale foreign key (qualifica_professionale)references qualifica_professionale(nome)
		on update cascade on delete cascade);	

	create table istruzione(
		dipendente_matricola char(8),
		titolo_di_studio varchar(30),
		constraint pk_istruzione primary key(dipendente_matricola,titolo_di_studio),
		constraint fk_istruzione_dipendente foreign key (dipendente_matricola)references dipendente(matricola)
		on update cascade on delete cascade,
		constraint fk_istruzione_titolo_di_studio foreign key(titolo_di_studio)references titolo_di_studio(nome)
		on update cascade on delete cascade);

	create table gerarchia_passata(
		dipendente_matricola char(8),
		responsabile char(8),
		inizio date not null,
		fine date not null,
		constraint pk_gerarchia_passata primary key (dipendente_matricola,responsabile),
		constraint fk_gerarchia_passata_dipendente foreign key(dipendente_matricola) references dipendente(matricola)
		on update cascade on delete cascade,
		constraint fk_gerarchia_passata_responsabile foreign key (responsabile)references responsabile(dipendente)
		on update cascade on delete cascade);
		
	create table esperienza(
		livello integer not null check (livello>=1 and livello<=10),
		"data" date not null,
		dipendente char(8),
		competenza varchar(30),
		constraint pk_esperienza primary key (dipendente,competenza),
		constraint fk_esperienza_dipendente foreign key (dipendente)references dipendente (matricola)
		on update cascade on delete cascade,
		constraint fk_esperienza_competenza foreign key (competenza)references competenza(nome)
		on update cascade on delete cascade);

		
alter table dipendente add constraint fk_dipendente_responsabile foreign key (responsabile)references responsabile(dipendente)on update cascade on delete set null deferrable initially deferred;
alter table responsabile add constraint fk_responsabile_dipendente foreign key(dipendente)references dipendente(matricola)on update cascade on delete cascade deferrable initially deferred;
alter table sede add constraint fk_sede foreign key (responsabile) references responsabile(dipendente) on update cascade on delete restrict deferrable initially deferred;



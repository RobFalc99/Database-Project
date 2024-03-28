
-- TRIGGERS
-- 1• Aggiornare numero di Dipendenti ad assunzione, licenziamento e trasferimento

-- CREAZIONE DELLA FUNZIONE
create or replace function aggiorna_numero_dipendenti() returns trigger as $$
	begin
		if (TG_OP='INSERT') then
			if(exists(select * from dipendente where matricola=new.matricola and nazione_sede=new.nazione_sede
				 	and citta_sede=new.citta_sede and indirizzo_sede=new.indirizzo_sede)) then
				 		update sede set numero_dipendenti=numero_dipendenti+1 
				 		where sede.nazione=new.nazione_sede and sede.citta=new.citta_sede and sede.indirizzo=new.indirizzo_sede;
				return new;
			end if;
		elsif (TG_OP='DELETE') then
			if(not exists(select * from dipendente where matricola=old.matricola and nazione_sede=old.nazione_sede
				 	and citta_sede=old.citta_sede and indirizzo_sede=old.indirizzo_sede)) then
						update sede set numero_dipendenti=numero_dipendenti-1 
				 		where sede.nazione=old.nazione_sede and sede.citta=old.citta_sede and sede.indirizzo=old.indirizzo_sede;
				return old;
			end if;
		elsif (TG_OP='UPDATE') then
			if(exists(select * from dipendente where matricola=new.matricola and nazione_sede=new.nazione_sede
				and citta_sede=new.citta_sede and indirizzo_sede=new.indirizzo_sede)
			  		and not exists(select * from dipendente where matricola=old.matricola and nazione_sede=old.nazione_sede
				 	and citta_sede=old.citta_sede and indirizzo_sede=old.indirizzo_sede)) then
						update sede set numero_dipendenti=numero_dipendenti+1
				 		where sede.nazione=new.nazione_sede and sede.citta=new.citta_sede and sede.indirizzo=new.indirizzo_sede;
						
						update sede set numero_dipendenti=numero_dipendenti-1 
				 		where sede.nazione=old.nazione_sede and sede.citta=old.citta_sede and sede.indirizzo=old.indirizzo_sede;
			return null;
			end if;
	end if;
	return null;
	end	$$ language plpgsql;


-- CREAZIONE DEL TRIGGER 1•
drop trigger if exists modifica_dipendenti_sede on dipendente cascade;
create trigger modifica_dipendenti_sede
	after
	insert or delete or update on dipendente
	for each row
		execute procedure aggiorna_numero_dipendenti();

		
-- -- codice utile per provare il trigger 1•
select * from sede;

update sede set numero_dipendenti=numero_dipendenti-1 where nazione='Italia';
update sede set numero_dipendenti=numero_dipendenti+1 where nazione='Giappone';

select * from dipendente where nazione_sede='Giappone';
select * from dipendente where nazione_sede='Italia';

insert into dipendente values('AAPTLAVV','XXJVMVRURMPOZYBH', 'Roberto', 'Falcone', '1999-6-3', 'dipendente', '2020-6-2', 'XRFYRGVO', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
update dipendente set nazione_sede='Giappone',citta_sede='Tokyo',indirizzo_sede='Via sushi n.5'  where  matricola='AAPTLAVV';

delete from dipendente where matricola='AAPTLAVV';



-- 2• Corso deve sviluppare almeno una competenza
-- INSERT
create or replace function insert_cardinalita_minima_corso() returns trigger as $$
	begin
		if (not exists(select * from sviluppo where codice_corso=new.codice and data_inizio_corso=new.data_inizio)) then
			raise exception 'Nessuna competenza per il Corso %', new.titolo;
		end if;
		return null;
	end	$$ language plpgsql;
	
-- DELETE OR UPDATE
create or replace function delete_update_cardinalita_minima_corso() returns trigger as $$
	declare
	temprow record;
	begin
		for temprow in (select * from corso) loop
			if (not exists(select * from sviluppo where codice_corso=temprow.codice and data_inizio_corso=temprow.data_inizio)) then
				raise exception 'Nessuna competenza per il Corso %', temprow.titolo;
			end if;
		end loop;
	return null;
	end	$$ language plpgsql;

-- CREAZIONE DEL TRIGGER 2•
-- INSERT
drop trigger if exists cardinalita_ins_minima_corso on corso cascade;
create constraint trigger cardinalita_minima_corso
	after
	insert on corso
	deferrable initially deferred
	for each row
		execute procedure insert_cardinalita_minima_corso();
-- DELETE OR UPDATE
drop trigger if exists cardinalita_del_upd_minima_corso on sviluppo cascade;
create trigger cardinalita_minima_corso
	after
	delete or update on sviluppo
	for each statement
		execute procedure delete_update_cardinalita_minima_corso();

-- codice utile per provare il trigger 2•

-- INSERT

-- dovrebbe lanciare l'eccezione 'Nessuna competenza per il Corso %'
insert into corso values('AAAAAAAAAAAA', '2021-01-15', 'DB', 'strutture dati', 'online', 'attuale', null);

begin transaction;
insert into corso values('AAAAAAAAAAAA', '2021-01-15', 'DB', 'strutture dati', 'online', 'attuale', null);
select * from corso;
insert into sviluppo values('database administration', 'AAAAAAAAAAAA', '2021-01-15');
commit;

-- UPDATE E DELETE

begin transaction;
insert into corso values('BBBBBBBBBBBB', '2020-4-5', 'IOT', 'tecnologie IOT', 'in presenza', 'passato', '2020-7-28');
select * from corso;
insert into sviluppo values('principi di progettazione', 'BBBBBBBBBBBB', '2020-4-5');
commit;

-- dovrebbe lanciare l'eccezione 'Nessuna competenza per il Corso %'
delete from sviluppo where codice_corso='BBBBBBBBBBBB' and data_inizio_corso='2020-4-5';


-- TRIGGER 3• Regola aziendale RV2: La Promozione di un Dipendente 
-- può essere attribuita ad un Dipendente che deve avere almeno una Valutazione 
create or replace function check_esistenza_valutazione() returns trigger as $$
	begin
		if (not exists (select * from valutazione where dipendente=new.dipendente)) then
			raise exception 'Dipendente promosso non presente in Valutazione';
			return null;
		else
			return new;
		end if;
	end	$$ language plpgsql;



-- CREAZIONE TRIGGER 3•
create trigger check_promozione
	before 
	insert or update on promozione
	for each row
	execute procedure check_esistenza_valutazione();
	
-- codice utile per provare il trigger 3•

insert into dipendente values('ALTUMB04','XXJVSRRURMPOZYBH', 'Umberto', 'Altieri', '1999-7-12', 'dipendente', '2021-1-2', 'XRFYRGVO', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
-- dovrebbe lanciare l'eccezione 'Dipendente promosso non presente in Valutazione'
insert into promozione values('2021-4-5', 'responsabile', 'attuale', null, 'ALTUMB04');

insert into dipendente values('ALTUMB04','XXJVSRRURMPOZYBH', 'Umberto', 'Altieri', '1999-7-12', 'dipendente', '2021-1-2', 'XRFYRGVO', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
insert into valutazione values ('2021-01-01', 'in crescita', 'ALTUMB04');
insert into promozione values ('2021-01-02', 'responsabile', 'attuale', null, 'ALTUMB04');
-- dovrebbe lanciare l'eccezione 'Dipendente promosso non presente in Valutazione'
update promozione set dipendente='FAHCFZCJ' where dipendente='ALTUMB04'




-- TRIGGER 4• Regola aziendale RV3: La Data Inizio della Promozione deve essere successiva 
-- o uguale a quella della Valutazione
create or replace function check_data_promozione_valutazione() returns trigger as $$
	begin
		if(not exists(select * from valutazione where dipendente=new.dipendente
		  	and "data" <= new.data_inizio_ruolo) and new.tipo='attuale') then
			raise exception 'Dipendente non possiede una Valutazione precedente';
			return null;
		else
			return new;
		end if;
	end	$$ language plpgsql;

-- CREAZIONE TRIGGER 4•
create trigger data_promozione_valutazione
	before
	insert or update on promozione
	for each row
	execute procedure check_data_promozione_valutazione();
	
-- codice utile per provare il trigger 4•
insert into dipendente values('EUGCARPT','XXJVSRRURMAOGYBH', 'Eugenio', 'Carpentieri', '1999-9-5', 'dipendente', '2021-2-3', 'XRFYRGVO', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
insert into valutazione values ('2021-05-7', 'molto in crescita', 'EUGCARPT');
-- dovrebbe lanciare l'eccezione 'Dipendente non possiede un Valutazione precedente'
insert into promozione values ('2021-01-02', 'responsabile', 'attuale', null, 'EUGCARPT');

delete from dipendente where matricola = 'EUGCARPT';



-- TRIGGER 5• Aggiornare il ruolo del Dipendente quando ottiene una promozione
create or replace function new_ruolo() returns trigger as $$
	begin
		if(exists(select * from dipendente where matricola=new.dipendente)
		   			and new.tipo='attuale') then
			update dipendente set ruolo=new.ruolo_promozione where new.dipendente=matricola;
			return new;
		end if;
		return null;
	end	$$ language plpgsql;



-- CREAZIONE TRIGGER 5•
create trigger aggiorna_ruolo
	after
	insert on promozione
	for each row
	execute procedure new_ruolo();
	

-- codice utile per provare il trigger 5•
insert into dipendente values('LUIGFERR','XXJVSGRUTMAOFYBH', 'Luigi', 'Ferraioli', '1999-12-29', 'dipendente', '2021-4-5', 'XRFYRGVO', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
insert into valutazione values ('2021-1-2', 'davvero in crescita', 'LUIGFERR');
insert into promozione values('2021-2-5', 'responsabile', 'attuale', null, 'LUIGFERR');

select * from dipendente where matricola='LUIGFERR'


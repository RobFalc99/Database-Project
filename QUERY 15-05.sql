-- Il livello medio di Esperienza in una Competenze 
-- dei Dipendenti delle Sedi con più di 9 Dipendenti

select S.nazione, S.citta, S.indirizzo, AVG(livello) livello
	from dipendente D, esperienza E, sede S
		where D.matricola=E.dipendente
		and D.nazione_sede=S.nazione
		and D.citta_sede=S.citta
		and D.indirizzo_sede=S.indirizzo
		and E.competenza='programmatore'
		and S.numero_dipendenti>9
		group by S.nazione, S.citta, S.indirizzo;

-- Dipendenti che non hanno avuto più di un Responsabile nel tempo 
-- e non hanno mai avuto una Promozione

select D.nome, D.cognome
	from Dipendente D
	where D.matricola not in (
		select Pr.dipendente
			from promozione Pr
			where D.matricola=Pr.dipendente
			and exists(select distinct GP.dipendente_matricola
							from gerarchia_passata GP
							where D.matricola=GP.dipendente_matricola));

	
--  Responsabili nati prima del 1975 che hanno seguito almeno un Corso nel tempo
select nome, cognome, data_di_nascita
	from dipendente D
	where D.ruolo<>'dipendente'
	and D.data_di_nascita<'1975-1-1'
intersect
select D.nome, D.cognome, D.data_di_nascita
	from partecipazione Pr, dipendente D
	where Pr.matricola_dipendente=D.matricola
order by data_di_nascita;
	
	
-- Cf, matricola e le informazioni sulla sede di tutti i Dipendenti che hanno
-- ricevuto una Valutazione e in seguito hanno seguito un Corso in presenza.
select distinct D.cf, D.matricola, D.nazione_sede, D.citta_sede, D.indirizzo_sede 
	from dipendente D
	where exists
		(select  *
			from valutazione V
		 	where D.matricola=V.dipendente
		 	and V.dipendente = any (
				select Pr.matricola_dipendente
					from corso Co, partecipazione Pr
					where Pr.codice_corso=Co.codice
					and Pr.data_inizio_corso=Co.data_inizio
					and Co.modalita='in presenza'
					and V.data<=Pr.data_inizio_corso));	
					
-- Nome e Cognome dei Dipendenti che non hanno un basso livello (>=5) in una competenza 
-- e che ha seguito un corso passato che sviluppava quella competenza
select D.nome, D.cognome
	from dipendente D, esperienza E
	where D.matricola=E.dipendente
	and E.competenza='principi di progettazione'
	and E.livello>=5
intersect
select D.nome, D.cognome
	from partecipazione Pr, sviluppo S, dipendente D, corso Co
	where Pr.matricola_dipendente=D.matricola
	and Co.codice=Pr.codice_corso
	and Co.data_inizio=Pr.data_inizio_corso
	and Co.tipo='passato'
	and Pr.codice_corso=S.codice_corso
	and Pr.data_inizio_corso=S.data_inizio_corso
	and S.competenza = 'principi di progettazione'
	
-- Nazione, città e indirizzo delle Sedi con meno di 5 Dipendenti che hanno seguito o seguono Corsi

select distinct S.nazione, S.citta, S.indirizzo
	from sede S, partecipazione Pr, dipendente D
	where D.matricola=Pr.matricola_dipendente
	and D.nazione_sede=S.nazione
	and D.citta_sede=S.citta
	and D.indirizzo_sede=S.indirizzo
	group by S.nazione, S.citta, S.indirizzo
	having count(D.matricola)<=5;
	


-- VISTA 1
-- Numero dei Dipendenti di un Responsabile.
drop view if exists numero_dipendenti_responsabili;
create view numero_dipendenti_responsabili as
	select R.dipendente ,count(*) numero_dipendenti
		from responsabile R, dipendente D
		where D.responsabile=R.dipendente
		group by R.dipendente;
		
-- QUERY CHE UTILIZZA LA VISTA 1
-- Il nome, cognome e la data di nascita del Responsabile con il maggior numero di Dipendenti
select D.cf, D.nome, D.cognome, D.data_di_nascita
	from dipendente D, numero_dipendenti_responsabili ndr
	where D.matricola=ndr.dipendente
	and ndr.numero_dipendenti = (select max(numero_dipendenti)
									 		from numero_dipendenti_responsabili);

-- VISTA 2
-- Dipendenti che hanno ricevuto una Valutazione nell'anno 2020
drop view if exists dipendente_valutati_2020;
create view dipendente_valutati_2020 as
	select D.*
		from valutazione V, dipendente D
		where extract('year' from V.data)=2020
		and V.dipendente=D.matricola;
		
-- QUERY CHE UTILIZZA LA VISTA 2
-- Cf e cognome dei dipendenti il cui cognome inizia con “b” e ordinati alfabeticamente 
-- e che hanno avuto una valutazione nell’anno 2020
	
select D.cf, D.cognome
	from dipendente D
	where D.cognome like 'B%'
	and D.matricola in (select DV.matricola from dipendente_valutati_2020 DV)
	order by D.cognome;
	
	
-- VISTA 3
-- Corsi in presenza con relativo numero di Docenti
drop view if exists numero_docenti;
create view numero_docenti as(	
	select Dz.codice_corso codice_corso, count(*) n_docenti
	from docenza Dz, corso Co
	where Dz.codice_corso=Co.codice
	and Dz.data_inizio_corso=Co.data_inizio
	and Co.modalita='in presenza'
	group by Dz.codice_corso);
	
-- QUERY --  Corsi, in presenza, tenuti dal maggior numero di Docenti e seguiti dai Dipendenti della sede di Parigi
select distinct Pr.codice_corso, num.n_docenti
	from partecipazione Pr, dipendente D, numero_docenti num
	where Pr.codice_corso = num.codice_corso
	and num.n_docenti=(select max(n_docenti) from numero_docenti)
	and Pr.matricola_dipendente=D.matricola
	and D.citta_sede='Parigi';
	

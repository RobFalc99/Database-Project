begin transaction;

	-- SEDE
	insert into sede values('Germania','Monaco','Via Muller n.67',8,'XRFYRGVO');
	insert into sede values('Italia','Milano','Via Edoardo Lazazzera n.70',12, 'NXDXNVCX');
	insert into sede values('Giappone','Tokyo','Via sushi n.5',9,'MDTCYVML');
	insert into sede values('Francia','Parigi','Via baguette n.61',11, 'RCFQFBYY');
	insert into sede values('USA','New York','Via Maria Teresa Sestito n.62',10, 'RCAHJZQA');
	

	-- DIPENDENTE
	insert into dipendente values('JXHTJZZT','ESRNVREDRROPGAGR', 'Thomas', 'Muller', '1970-6-25', 'amministratore delegato', null, null, 'Germania', 'Monaco', 'Via Muller n.67');

	insert into dipendente values('NXDXNVCX','CHRGWPEESNEHKCEX', 'Tommaso', 'Zuccherelli', '1980-8-4', 'responsabile di sede', '2018-10-25', 'JXHTJZZT', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('MDTCYVML','WXCPBCNIAALGSOXB', 'Hana', 'Yamamoto', '1974-1-7', 'responsabile di sede', '2019-8-7', 'JXHTJZZT', 'Giappone', 'Tokyo', 'Via sushi n.5');
	insert into dipendente values('RCFQFBYY','RGXICUUTVFZESLXP', 'Margherite', 'Trezeguet', '1989-3-5', 'responsabile di sede', '2019-8-19', 'JXHTJZZT', 'Francia', 'Parigi', 'Via baguette n.61');
	insert into dipendente values('XRFYRGVO','RZPUDXYIYNCPGOTJ', 'Agimund', 'Schmidt', '1988-3-15', 'responsabile di sede', '2020-3-24' , 'JXHTJZZT', 'Germania', 'Monaco', 'Via Muller n.67');
	insert into dipendente values('RCAHJZQA','QRASNVYBJVVPFCSY', 'Annalisa', 'Johnson', '1973-10-1',  'responsabile di sede', '2018-2-1', 'JXHTJZZT', 'USA', 'New York', 'Via Maria Teresa Sestito n.62');

	insert into dipendente values('NUYWQFQI','OPPOHSNAUROLJRAI', 'Graziano', 'Pelle', '1990-7-28', 'responsabile', '2018-11-25', 'NXDXNVCX', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('VWXOPHZC','RUSFCPVBKBDKWTMM', 'Lina', 'Costa', '1990-6-4', 'responsabile', '2019-2-12', 'NXDXNVCX', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	
	insert into dipendente values('FWHIUZAK','ZQDKTTRFIXNBXHXG', 'Yui', 'Tanaka', '1985-4-30', 'responsabile', '2019-9-5', 'MDTCYVML', 'Giappone', 'Tokyo', 'Via sushi n.5');
	insert into dipendente values('RSDDKLHL','BMUFWZQDLDFJUZID', 'Mei', 'Kobayashi', '1973-7-2', 'responsabile', '2019-11-23', 'MDTCYVML', 'Giappone', 'Tokyo', 'Via sushi n.5');
	
	insert into dipendente values('QDSVDDRB','JWRHJHOHWVYWLNWN', 'Melissa', 'Davis', '1982-11-11','responsabile', '2018-4-29', 'RCAHJZQA', 'USA', 'New York', 'Via Maria Teresa Sestito n.62');
	insert into dipendente values('LKKZNYBB','PEXQTDLNAXWEOKZQ', 'Marco', 'Santoro', '1970-4-9', 'responsabile', '2018-3-18', 'RCAHJZQA', 'USA', 'New York', 'Via Maria Teresa Sestito n.62');
	
	insert into dipendente values('NSFKVYRM','MJYMEDTRQMNPCTVI', 'Martin', 'Dubois', '1994-7-15', 'responsabile', '2019-8-31', 'RCFQFBYY', 'Francia', 'Parigi', 'Via baguette n.61');
	insert into dipendente values('HIICQTKS','RXAODQOMCSIMWZTW', 'Hugo', 'Lloris', '1980-10-11', 'responsabile', '2019-12-29', 'RCFQFBYY', 'Francia', 'Parigi', 'Via baguette n.61');
	
	insert into dipendente values('UAVHGZEC','XXJVMVRUSMPOZYBH', 'Manuel', 'Schneider', '1980-6-3', 'responsabile', '2020-6-2', 'XRFYRGVO', 'Germania', 'Monaco', 'Via Muller n.67');
	
	insert into dipendente values('SJABFEKT','AZDVSTOSDNQFWWKX', 'Giacomo', 'Palo', '1974-5-2', 'dipendente', '2019-7-23', 'NUYWQFQI', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('JEISWHRV','CYCCXKNQBOIZPQCB', 'Fabio', 'Fusco', '1995-4-14', 'dipendente', '2018-12-12', 'NUYWQFQI', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('MQUEHWBT','KVVENTUTYBAGNFQO', 'Guido', 'Bartolini', '1985-2-16', 'dipendente', '2020-3-26', 'NUYWQFQI', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('SVDTESXI','KCKAZNPJCJDCQIBF', 'Simona', 'Forcina ', '1973-7-19', 'dipendente', '2019-2-6', 'NUYWQFQI', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	
	insert into dipendente values('CCVVEVIO','VFSKHJRHVNDRQPZB', 'Bianca', 'Mollica', '1978-4-15', 'dipendente', '2019-11-29', 'VWXOPHZC', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('DNEBNTGV','XPEMMOQOXLLHEJMN', 'Gloria', 'Zuccherelli', '1970-8-12', 'dipendente', '2019-2-23', 'VWXOPHZC', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('HUVIXZBD','CYZMZHCHKNUTPWCG', 'Gino', 'Iacobelli', '1978-11-21', 'dipendente', '2019-3-26', 'VWXOPHZC', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('LIWGJCAQ','TOKNGHAYUJNDGAFK', 'Federico', 'Orlandi', '1991-6-2', 'dipendente', '2020-12-16', 'VWXOPHZC', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');
	insert into dipendente values('IEELGLZS','QLFUXGEEDTQNIMNN', 'Clara', 'Tranquilli', '1994-7-16', 'dipendente', '2020-8-23', 'VWXOPHZC', 'Italia', 'Milano', 'Via Edoardo Lazazzera n.70');

	insert into dipendente values('SKKHQJWL','IXQGDYHVUHQPSCCJ', 'Alexandre', 'Kimpembe', '1980-1-14', 'dipendente', '2020-5-20', 'NSFKVYRM', 'Francia', 'Parigi', 'Via baguette n.61');
	insert into dipendente values('XLLEUZIK','HQIEHTVJCPWEQWOJ', 'Alessio', 'Lacazette', '1995-3-11', 'dipendente', '2020-6-7', 'NSFKVYRM', 'Francia', 'Parigi', 'Via baguette n.61');
	insert into dipendente values('GUHUUYVL','IGHXZZHXPDZBVSCA', 'Antoine', 'Bernard', '1976-4-13', 'dipendente', '2019-10-26', 'NSFKVYRM', 'Francia', 'Parigi', 'Via baguette n.61');
	insert into dipendente values('FTTFFMMP','QQHYONPXUTXMOHSI', 'Emmanuel', 'Petit', '1995-6-17', 'dipendente', '2020-7-18', 'NSFKVYRM', 'Francia', 'Parigi', 'Via baguette n.61');
	
	insert into dipendente values('OWAZJRFZ','EWMVZKCNYAMJBQCJ', 'Jean', 'Mele', '1988-3-15', 'dipendente', '2020-2-6', 'HIICQTKS', 'Francia', 'Parigi', 'Via baguette n.61');
	insert into dipendente values('WHAWRTCU','GDFUBCYGLNUYQKKP', 'Marie', 'Toulouse', '1979-7-10', 'dipendente', '2020-10-26', 'HIICQTKS', 'Francia', 'Parigi', 'Via baguette n.61');
	insert into dipendente values('OURKWSGB','OYNOJHCWFNJMRCLB', 'Grazia', 'Moreau', '1996-12-2', 'dipendente', '2020-7-25', 'HIICQTKS', 'Francia', 'Parigi', 'Via baguette n.61');
	insert into dipendente values('YDQIXXBD','CKKQXUGYVYJQRPTO', 'Jessica', 'Ottavio', '1992-11-23', 'dipendente', '2020-12-8', 'HIICQTKS', 'Francia', 'Parigi', 'Via baguette n.61');

	insert into dipendente values('CDCEMTYD','MQDXLPNHNKAZVNTD', 'Sakura', 'Hinata', '1982-4-20', 'dipendente', '2019-10-16' , 'FWHIUZAK', 'Giappone', 'Tokyo', 'Via sushi n.5');
	insert into dipendente values('YSAUKPMN','ZBFQFGEQXTSQJCLP', 'Rin', 'Yuki', '1983-10-30', 'dipendente', '2019-10-22', 'FWHIUZAK', 'Giappone', 'Tokyo', 'Via sushi n.5');
	insert into dipendente values('ETVIOIMX','JUHYDWSRINIQENQC', 'Himari', 'Haruto', '1988-11-24', 'dipendente', '2020-7-2','FWHIUZAK', 'Giappone', 'Tokyo', 'Via sushi n.5');
	
	insert into dipendente values('KHTMGKON','IEUVFDLTYNGTCWKS', 'Yuto', 'Nagatomo', '1972-12-29', 'dipendente', '2020-3-9', 'RSDDKLHL', 'Giappone', 'Tokyo', 'Via sushi n.5');
	insert into dipendente values('FAHCFZCJ','BIDTHEFRMCEJTGJH', 'Keisude', 'Honda', '1977-8-22', 'dipendente', '2020-9-21', 'RSDDKLHL', 'Giappone', 'Tokyo', 'Via sushi n.5');
	insert into dipendente values('HPHJPRSQ','TFIYMSLVKYEZHCZN', 'Maniu', 'Kazi', '1983-4-7', 'dipendente', '2020-5-26', 'RSDDKLHL', 'Giappone', 'Tokyo', 'Via sushi n.5');

	insert into dipendente values('YFBUTMHJ','VRHHPJOXGURLQMRH', 'Ben', 'White', '1984-7-19', 'dipendente', '2018-6-24','QDSVDDRB','USA', 'New York', 'Via Maria Teresa Sestito n.62');
	insert into dipendente values('ZLEHOYIT','KRPROKTRYYXUZRCF', 'Bryan', 'Foster', '1992-3-25', 'dipendente', '2019-3-8', 'QDSVDDRB', 'USA', 'New York', 'Via Maria Teresa Sestito n.62');
	insert into dipendente values('YFIBCXJG','IQSNBFXHJGIOTOAF', 'Emma', 'Watson', '1982-8-3', 'dipendente', '2020-6-27', 'QDSVDDRB','USA', 'New York', 'Via Maria Teresa Sestito n.62');
	
	insert into dipendente values('RBBGXWPB','RJZTGXPJAAWTJTIU', 'Liam', 'Brooks', '1982-7-27', 'dipendente', '2018-2-7', 'LKKZNYBB', 'USA', 'New York', 'Via Maria Teresa Sestito n.62');
	insert into dipendente values('ACPMWVTU','JTELTUINYGCVFSCV', 'Lily', 'Jones', '1995-7-29', 'dipendente', '2018-9-10', 'LKKZNYBB', 'USA', 'New York', 'Via Maria Teresa Sestito n.62');
	insert into dipendente values('STAAUVPQ','AOPXEKNAOOYSCMVN', 'Benjamin', 'Moore', '1996-11-26', 'dipendente', '2018-4-11', 'LKKZNYBB', 'USA', 'New York', 'Via Maria Teresa Sestito n.62');
	insert into dipendente values('BFAIWBGF','BUTWIKWKTEMUUSAS', 'Daniel', 'Johnson', '1994-1-4', 'dipendente', '2019-11-15', 'LKKZNYBB', 'USA', 'New York', 'Via Maria Teresa Sestito n.62');

	insert into dipendente values('SKLBIRVF','TEAVVNTBBZSYQSYV', 'Aron', 'Weber', '1989-3-19', 'dipendente', '2020-9-22', 'UAVHGZEC', 'Germania', 'Monaco', 'Via Muller n.67');
	insert into dipendente values('ZGGSZICZ','OAGEXXHHRMWZTXFH', 'Conrad', 'Becker', '1974-9-14', 'dipendente', '2020-7-29', 'UAVHGZEC', 'Germania', 'Monaco', 'Via Muller n.67');
	insert into dipendente values('IFHQXXNE','RKUBNIMRZAVWSRME', 'Frans', 'Wagner', '1970-11-29', 'dipendente', '2020-8-28', 'UAVHGZEC', 'Germania', 'Monaco', 'Via Muller n.67');
	insert into dipendente values('YWYXCXIE','TUGEDOKPNHXFRDNM', 'Helge', 'Berger', '1978-4-5', 'dipendente', '2020-9-16', 'UAVHGZEC', 'Germania', 'Monaco', 'Via Muller n.67');
	insert into dipendente values('REUOCRPE','PABEMXJTBPPMYWBN', 'Kamill', 'Bauer', '1980-9-23', 'dipendente', '2021-1-18', 'UAVHGZEC', 'Germania', 'Monaco', 'Via Muller n.67');

	-- RESPONSABILE
	insert into responsabile(dipendente, tipo) values('JXHTJZZT','amministratore delegato');
	insert into responsabile(dipendente, tipo) values('NXDXNVCX', 'responsabile di sede');
	insert into responsabile(dipendente, tipo) values('MDTCYVML', 'responsabile di sede');
	insert into responsabile(dipendente, tipo) values('RCFQFBYY', 'responsabile di sede');
	insert into responsabile(dipendente, tipo) values('XRFYRGVO', 'responsabile di sede');
	insert into responsabile(dipendente, tipo) values('RCAHJZQA', 'responsabile di sede');
	insert into responsabile(dipendente, tipo) values('NUYWQFQI', 'responsabile');
	insert into responsabile(dipendente, tipo) values('VWXOPHZC', 'responsabile');
	insert into responsabile(dipendente, tipo) values('FWHIUZAK', 'responsabile');
	insert into responsabile(dipendente, tipo) values('RSDDKLHL', 'responsabile');
	insert into responsabile(dipendente, tipo) values('QDSVDDRB', 'responsabile');
	insert into responsabile(dipendente, tipo) values('LKKZNYBB', 'responsabile');
	insert into responsabile(dipendente, tipo) values('NSFKVYRM', 'responsabile');
	insert into responsabile(dipendente, tipo) values('HIICQTKS', 'responsabile');
	insert into responsabile(dipendente, tipo) values('UAVHGZEC', 'responsabile');
	

commit work;

	-- QUALIFICA PROFESSIONALE
	insert into  qualifica_professionale values('programmatore informatico');
	insert into  qualifica_professionale values('tecnico informatico');
	insert into  qualifica_professionale values('sviluppatore web');
	insert into  qualifica_professionale values('system integrator');
	insert into  qualifica_professionale values('elearning manager');
	insert into  qualifica_professionale values('project manager');
	insert into  qualifica_professionale values('system embedded');
	insert into  qualifica_professionale values('cyber security');
	insert into  qualifica_professionale values('system analist');
	insert into  qualifica_professionale values('datawarehouse developer');

	-- TITOLO DI STUDIO
	insert into  titolo_di_studio values('Laurea ingegneria informatica');
	insert into  titolo_di_studio values('Laurea ingegneria elettronica');
	insert into  titolo_di_studio values('Laurea ingegneria meccanica');
	insert into  titolo_di_studio values('Diploma tecnico informatico');
	insert into  titolo_di_studio values('Laurea informatica');

	-- OBIETTIVO FORMATIVO
	insert into obiettivo_formativo values('nozioni di matematica');
	insert into obiettivo_formativo values('architettura dei calcolatori');
	insert into obiettivo_formativo values('sistemi operativi');
	insert into obiettivo_formativo values('database');
	insert into obiettivo_formativo values('linguaggio C#');
	insert into obiettivo_formativo values('linguaggio python');
	insert into obiettivo_formativo values('linguaggio java');
	insert into obiettivo_formativo values('tecnologie IOT');
	insert into obiettivo_formativo values('strutture dati');
	insert into obiettivo_formativo values('nozioni di elettronica');
	insert into obiettivo_formativo values('controlli automatici');
	insert into obiettivo_formativo values('principi di telecomunicazione');
	insert into obiettivo_formativo values('sistemi digitali');

	-- COMPETENZA
	insert into competenza values('principi di progettazione');
	insert into competenza values('elettronica');
	insert into competenza values('web application');
	insert into competenza values('database administration');
	insert into competenza values('web designer');
	insert into competenza values('programmatore');
	insert into competenza values('matematico');

	-- VALUTAZIONE
	insert into valutazione("data",commento,dipendente) values('2019-7-24','il dipendente deve migliorare nella conoscenza del linguaggio C','LKKZNYBB');
	insert into valutazione("data",commento,dipendente) values('2019-7-24','il dipendente deve migliorare nella conoscenza dei linguaggi Python','DNEBNTGV');
	insert into valutazione("data",commento,dipendente) values('2020-1-24','il dipendente ha difficoltà in applicazione di algoritmi','CDCEMTYD');
	insert into valutazione("data",commento,dipendente) values('2020-1-24','il dipendente deve migliorare le proprie nozioni di matematica','YFBUTMHJ');
	insert into valutazione("data",commento,dipendente) values('2020-7-24','il dipendente deve approfondire le proprie conoscenze riguardo S.O.','ZGGSZICZ');
	insert into valutazione("data",commento,dipendente) values('2020-7-24','il dipendente deve impegnarsi sul migliorare le proprie conoscenze in IOT','GUHUUYVL');

	-- COMITATO
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2019-7-24','LKKZNYBB','MDTCYVML');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2019-7-24','DNEBNTGV','NXDXNVCX');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-1-24','CDCEMTYD','MDTCYVML');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-1-24','YFBUTMHJ','RCFQFBYY');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-7-24','ZGGSZICZ','XRFYRGVO');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-7-24','GUHUUYVL','RCAHJZQA');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2019-7-24','DNEBNTGV','VWXOPHZC');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-1-24','CDCEMTYD','FWHIUZAK');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-1-24','CDCEMTYD','RSDDKLHL');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-1-24','YFBUTMHJ','QDSVDDRB');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-1-24','YFBUTMHJ','LKKZNYBB');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-7-24','GUHUUYVL','NSFKVYRM');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-7-24','GUHUUYVL','HIICQTKS');
	insert into comitato(data_valutazione, dipendente_valutazione, dipendente) values('2020-7-24','ZGGSZICZ','UAVHGZEC');

	-- CORSO
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('RWRFBOTKY1JM','2017-6-19','elettrotecnica2018','nozioni di elettronica','online','2018-1-17','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('ZWLMPQG3MAVA','2018-1-17','analisi matematica2018','nozioni di matematica','online','2018-9-26','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('ZINAALA1WGAT','2020-1-21','sistemi operativi2020','sistemi operativi','in presenza','2020-9-27','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('OPYXV5ZJLVOL','2017-1-2','database2017','database','online','2017-6-7','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('OPYXV5ZJLVOL','2019-2-16','database2019','database','online','2019-6-7','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('NPDIVSQL6ODW','2015-12-10','IOT2016','tecnologie IOT','in presenza','2016-7-2','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('NPDIVSQL6ODW','2018-1-7','IOT2018','tecnologie IOT','in presenza','2018-7-2','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('5LFKBYYPAVZR','2019-5-21','strutture dati2019','strutture dati','in presenza','2019-9-19','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('Q6BDTRRSZKNE','2018-7-3','algoritmi2019','strutture dati','online','2019-1-29','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('KQ3AFCOYXNTI','2018-1-4','programmazione ad oggetti2018','linguaggio java','online','2018-5-7','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('KQ3AFCOYXNTI','2018-10-6','programmazione ad oggetti2019','linguaggio java','online','2019-3-6','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('DWWM4GOCPUAP','2021-1-16','programmazione2020','linguaggio C#','in presenza',null,'attuale');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('OHIFY7KPHKKX','2018-1-13','sistemi digitali2018','sistemi digitali','in presenza','2018-6-6','passato');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('OHIFY7KPHKKX','2021-2-23','sistemi digitali2020','sistemi digitali','in presenza',null,'attuale');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('WTUWU1VJUDSI','2021-3-17','sistemi di controllo2020','controlli automatici','online',null,'attuale');
	insert into corso(codice,data_inizio,titolo,obiettivo_formativo,modalita, data_fine, tipo) values('SAMQP1NBCXCP','2021-2-5','telecomunicazioni','principi di telecomunicazione','online',null,'attuale');
	

	-- DOCENTE
	insert into docente values('CCTCORZAYANT', 'Mattia', 'Gnani');
	insert into docente values('AOVIAZPAMZEE', 'Martina', 'La Rocca');
	insert into docente values('RYPHXUIBLKGF', 'Marianna', 'Alam');
	insert into docente values('BQGDAJLBODEE', 'Vittoria', 'Costantini');
	insert into docente values('GYFQMXDGIFWF', 'Michela', 'Di Lena');
	insert into docente values('ODHULSMVKTCR', 'Salvatore', 'Di Ruzza');
	insert into docente values('JXTBGVCEGJSN', 'Lisa', 'Harroud');
	insert into docente values('GLXLOLQKYZSB', 'Ilaria', 'Botnariu');
	insert into docente values('QDQRCERNBLFK', 'Olga', 'Giura');
	insert into docente values('FMVSJOQFQHLB', 'Romano', 'Paul');
	insert into docente values('WMRZLQAGBXTR', 'Mario', 'Angelicchio');
	insert into docente values('VTANEIJBFPDJ', 'Teresa', 'Bruno');
	insert into docente values('PNIXJJTRSEFM', 'Stefania', 'Farazi');
	insert into docente values('XITIDSVOIACV', 'Gabriel', 'Rebeccato');
	insert into docente values('LSDBMPDNALRY', 'Teresa', 'Bruni');
	insert into docente values('OPYVCYWFVBFV', 'Deanna', 'Minelli');
	insert into docente values('KQLZFWUUOBZY', 'Matteo', 'Bellino');
	insert into docente values('ITBIRXMQIWCW', 'Roberto', 'Lippi');
	insert into docente values('LCROUONDZDTL', 'Margherita', 'Sanna');
	insert into docente values('UPZWOLXYBYQT', 'Patrizia', 'Severi');

-- DOCENZA
	insert into docenza values('RWRFBOTKY1JM','2017-6-19', 'CCTCORZAYANT');
	insert into docenza values('ZWLMPQG3MAVA','2018-1-17', 'AOVIAZPAMZEE');
	insert into docenza values('ZWLMPQG3MAVA','2018-1-17', 'RYPHXUIBLKGF');
	insert into docenza values('ZINAALA1WGAT','2020-1-21', 'BQGDAJLBODEE');
	insert into docenza values('OPYXV5ZJLVOL','2019-2-16', 'GYFQMXDGIFWF');
	insert into docenza values('NPDIVSQL6ODW','2015-12-10', 'ODHULSMVKTCR');
	insert into docenza values('NPDIVSQL6ODW','2018-1-7', 'JXTBGVCEGJSN');
	insert into docenza values('NPDIVSQL6ODW','2015-12-10', 'GLXLOLQKYZSB');
	insert into docenza values('5LFKBYYPAVZR','2019-5-21', 'QDQRCERNBLFK');
	insert into docenza values('Q6BDTRRSZKNE','2018-7-3', 'FMVSJOQFQHLB');
	insert into docenza values('KQ3AFCOYXNTI','2018-10-6', 'WMRZLQAGBXTR');
	insert into docenza values('DWWM4GOCPUAP','2021-1-16', 'VTANEIJBFPDJ');
	insert into docenza values('DWWM4GOCPUAP','2021-1-16', 'PNIXJJTRSEFM');
	insert into docenza values('OHIFY7KPHKKX','2018-1-13', 'XITIDSVOIACV');
	insert into docenza values('OHIFY7KPHKKX','2018-1-13', 'LSDBMPDNALRY');
	insert into docenza values('OHIFY7KPHKKX','2021-2-23', 'OPYVCYWFVBFV');
	insert into docenza values('WTUWU1VJUDSI','2021-3-17', 'KQLZFWUUOBZY');
	insert into docenza values('WTUWU1VJUDSI','2021-3-17', 'ITBIRXMQIWCW');
	insert into docenza values('SAMQP1NBCXCP','2021-2-5', 'LCROUONDZDTL');
	insert into docenza values('SAMQP1NBCXCP','2021-2-5', 'UPZWOLXYBYQT');


	-- PROMOZIONE
	insert into promozione values('2019-7-26', 'responsabile di sede','attuale', null, 'NXDXNVCX');
	insert into promozione values('2020-1-26', 'responsabile di sede','attuale', null, 'MDTCYVML');
	insert into promozione values('2019-7-26', 'responsabile di sede','attuale', null, 'RCFQFBYY');
	insert into promozione values('2020-1-26', 'responsabile di sede','attuale', null, 'RCAHJZQA');
	insert into promozione values('2020-1-26', 'responsabile di sede','attuale', null, 'XRFYRGVO');

	insert into promozione values('2019-1-29', 'responsabile','attuale', null, 'NUYWQFQI');
	insert into promozione values('2020-1-26', 'responsabile','attuale', null, 'VWXOPHZC');
	insert into promozione values('2019-2-2', 'responsabile','attuale', null, 'FWHIUZAK');
	insert into promozione values('2020-7-26', 'responsabile','attuale', null, 'RSDDKLHL');
	insert into promozione values('2020-7-28', 'responsabile','attuale', null, 'QDSVDDRB');
	insert into promozione values('2018-2-1', 'responsabile','attuale', null, 'LKKZNYBB');
	insert into promozione values('2018-7-29', 'responsabile','attuale', null, 'NSFKVYRM');
	insert into promozione values('2020-1-26', 'responsabile','attuale', null, 'HIICQTKS');
	insert into promozione values('2019-7-30', 'responsabile','attuale', null, 'UAVHGZEC');

	-- PROMOZIONE PASSATA
	insert into promozione values('2018-1-29', 'responsabile', 'passata', '2019-7-26', 'NXDXNVCX');
	insert into promozione values('2017-1-28', 'responsabile', 'passata', '2020-1-26', 'MDTCYVML');
	insert into promozione values('2017-7-30', 'responsabile', 'passata', '2019-7-26', 'RCFQFBYY');
	insert into promozione values('2018-1-29', 'responsabile', 'passata', '2020-1-26', 'XRFYRGVO');
	insert into promozione values('2019-1-27', 'responsabile', 'passata', '2020-1-26', 'RCAHJZQA');


	

	-- ABILITAZIONE
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('JXHTJZZT','project manager');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('JXHTJZZT','elearning manager');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('JXHTJZZT','datawarehouse developer');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('NXDXNVCX','system integrator');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('NXDXNVCX','system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('MDTCYVML','cyber security');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('MDTCYVML','system embedded');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('RCFQFBYY','system embedded');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('RCFQFBYY','system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('XRFYRGVO','sviluppatore web');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('XRFYRGVO','tecnico informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('RCAHJZQA','system integrator');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('RCAHJZQA','programmatore informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('RCAHJZQA','sviluppatore web');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('NUYWQFQI','cyber security');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('VWXOPHZC','sviluppatore web');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('FWHIUZAK','system embedded');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('RSDDKLHL','tecnico informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('QDSVDDRB', 'programmatore informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('LKKZNYBB','system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('NSFKVYRM', 'system integrator');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('HIICQTKS', 'datawarehouse developer');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('UAVHGZEC', 'system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('SJABFEKT','cyber security');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('JEISWHRV','cyber security');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('MQUEHWBT','cyber security');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('SVDTESXI','cyber security');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('CCVVEVIO','sviluppatore web');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('DNEBNTGV','sviluppatore web');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('HUVIXZBD','sviluppatore web');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('LIWGJCAQ','sviluppatore web');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('IEELGLZS','sviluppatore web');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('SKKHQJWL', 'system integrator');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('XLLEUZIK', 'system integrator');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('GUHUUYVL', 'system integrator');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('FTTFFMMP', 'system integrator');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('OWAZJRFZ', 'datawarehouse developer');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('WHAWRTCU', 'datawarehouse developer');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('OURKWSGB', 'datawarehouse developer');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('YDQIXXBD', 'datawarehouse developer');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('CDCEMTYD','system embedded');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('YSAUKPMN','system embedded');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('ETVIOIMX','system embedded');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('KHTMGKON','tecnico informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('FAHCFZCJ','tecnico informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('HPHJPRSQ','tecnico informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('YFBUTMHJ', 'programmatore informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('ZLEHOYIT', 'programmatore informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('YFIBCXJG', 'programmatore informatico');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('RBBGXWPB','system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('ACPMWVTU','system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('STAAUVPQ','system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('BFAIWBGF','system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('SKLBIRVF', 'system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('ZGGSZICZ', 'system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('IFHQXXNE', 'system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('YWYXCXIE', 'system analist');
	insert into abilitazione (dipendente_matricola,qualifica_professionale) values('REUOCRPE', 'system analist');

	-- ISTRUZIONE
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('JXHTJZZT','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('NXDXNVCX','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('MDTCYVML','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('RCFQFBYY','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('XRFYRGVO','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('RCAHJZQA','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('NUYWQFQI','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('VWXOPHZC','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('FWHIUZAK','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('RSDDKLHL','Diploma tecnico informatico');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('QDSVDDRB', 'Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('LKKZNYBB','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('NSFKVYRM', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('HIICQTKS', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('UAVHGZEC', 'Laurea ingegneria meccanica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('SJABFEKT','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('JEISWHRV','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('MQUEHWBT','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('SVDTESXI','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('CCVVEVIO','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('DNEBNTGV','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('HUVIXZBD','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('LIWGJCAQ','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('IEELGLZS','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('SKKHQJWL', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('XLLEUZIK', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('GUHUUYVL', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('FTTFFMMP', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('OWAZJRFZ', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('WHAWRTCU', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('OURKWSGB', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('YDQIXXBD', 'Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('CDCEMTYD','Laurea ingegneria meccanica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('YSAUKPMN','Laurea ingegneria elettronica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('ETVIOIMX','Laurea ingegneria elettronica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('KHTMGKON','Diploma tecnico informatico');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('FAHCFZCJ','Diploma tecnico informatico');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('HPHJPRSQ','Diploma tecnico informatico');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('YFBUTMHJ', 'Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('ZLEHOYIT', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('YFIBCXJG', 'Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('RBBGXWPB','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('ACPMWVTU','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('STAAUVPQ','Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('BFAIWBGF','Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('SKLBIRVF', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('ZGGSZICZ', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('IFHQXXNE', 'Laurea ingegneria informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('YWYXCXIE', 'Laurea informatica');
	insert into istruzione (dipendente_matricola,titolo_di_studio) values('REUOCRPE', 'Laurea ingegneria informatica');
	
	-- PARTECIPAZIONE
	insert into partecipazione values('NXDXNVCX','RWRFBOTKY1JM','2017-6-19');
	insert into partecipazione values('YFBUTMHJ','ZWLMPQG3MAVA','2018-1-17');
	insert into partecipazione values('ZGGSZICZ','ZINAALA1WGAT','2020-1-21');
	insert into partecipazione values('XRFYRGVO','OPYXV5ZJLVOL','2017-1-2');
	insert into partecipazione values('DNEBNTGV','NPDIVSQL6ODW','2015-12-10');
	insert into partecipazione values('NUYWQFQI','5LFKBYYPAVZR','2019-5-21');
	insert into partecipazione values('VWXOPHZC','Q6BDTRRSZKNE','2018-7-3');
	insert into partecipazione values('RSDDKLHL','KQ3AFCOYXNTI','2018-1-4');
	insert into partecipazione values('LKKZNYBB','DWWM4GOCPUAP','2021-1-16');
	insert into partecipazione values('NSFKVYRM','OHIFY7KPHKKX','2018-1-13');
	insert into partecipazione values('HIICQTKS','WTUWU1VJUDSI','2021-3-17');
	insert into partecipazione values('JEISWHRV','SAMQP1NBCXCP','2021-2-5');
	insert into partecipazione values('SVDTESXI','RWRFBOTKY1JM','2017-6-19');
	insert into partecipazione values('YFIBCXJG','ZWLMPQG3MAVA','2018-1-17');
	insert into partecipazione values('QDSVDDRB','ZINAALA1WGAT','2020-1-21');
	insert into partecipazione values('RCAHJZQA','OPYXV5ZJLVOL','2017-1-2');
	insert into partecipazione values('REUOCRPE','NPDIVSQL6ODW','2018-1-7');
	insert into partecipazione values('DNEBNTGV','5LFKBYYPAVZR','2019-5-21');
	insert into partecipazione values('GUHUUYVL','Q6BDTRRSZKNE','2018-7-3');
	insert into partecipazione values('OURKWSGB','KQ3AFCOYXNTI','2018-10-6');
	insert into partecipazione values('ZGGSZICZ','DWWM4GOCPUAP','2021-1-16');
	insert into partecipazione values('CDCEMTYD','OHIFY7KPHKKX','2021-2-23');
	insert into partecipazione values('FAHCFZCJ','WTUWU1VJUDSI','2021-3-17');
	insert into partecipazione values('RBBGXWPB','SAMQP1NBCXCP','2021-2-5');
	insert into partecipazione values('BFAIWBGF','RWRFBOTKY1JM','2017-6-19');
	insert into partecipazione values('WHAWRTCU','ZWLMPQG3MAVA','2018-1-17');
	insert into partecipazione values('CCVVEVIO','ZINAALA1WGAT','2020-1-21');
	insert into partecipazione values('SVDTESXI','OPYXV5ZJLVOL','2019-2-16');
	insert into partecipazione values('GUHUUYVL','NPDIVSQL6ODW','2015-12-10');
	insert into partecipazione values('MQUEHWBT','5LFKBYYPAVZR','2019-5-21');
	insert into partecipazione values('STAAUVPQ','Q6BDTRRSZKNE','2018-7-3');

	-- ESPERIENZA
	insert into esperienza values('8', '2021-2-3', 'NXDXNVCX', 'programmatore');
	insert into esperienza values('8', '2021-2-3', 'NXDXNVCX', 'database administration');
	insert into esperienza values('2', '2019-2-10', 'NUYWQFQI', 'programmatore');
	insert into esperienza values('2', '2019-2-10', 'NUYWQFQI', 'elettronica');
	insert into esperienza values('8', '2018-5-24', 'SJABFEKT', 'programmatore');
	insert into esperienza values('8', '2018-5-24', 'SJABFEKT', 'web designer');
	insert into esperienza values('3', '2019-3-30', 'MDTCYVML', 'programmatore');
	insert into esperienza values('3', '2019-3-30', 'MDTCYVML', 'web application');
	insert into esperienza values('7', '2021-5-19', 'FWHIUZAK', 'programmatore');
	insert into esperienza values('5', '2019-5-19', 'VWXOPHZC', 'principi di progettazione');
	insert into esperienza values('5', '2019-5-19', 'VWXOPHZC', 'web designer');
	insert into esperienza values('9', '2019-6-16', 'JEISWHRV', 'principi di progettazione');
	insert into esperienza values('7', '2019-5-18', 'QDSVDDRB', 'principi di progettazione');
	insert into esperienza values('2', '2021-1-11', 'RCFQFBYY', 'principi di progettazione');
	insert into esperienza values('2', '2021-1-11', 'RCFQFBYY', 'web application');
	insert into esperienza values('6', '2019-7-15', 'XRFYRGVO', 'principi di progettazione');
	insert into esperienza values('8', '2020-1-21', 'NSFKVYRM', 'principi di progettazione');
	insert into esperienza values('5', '2019-5-19', 'RCAHJZQA', 'elettronica');
	insert into esperienza values('9', '2019-6-16', 'REUOCRPE', 'elettronica');
	insert into esperienza values('9', '2019-6-16', 'REUOCRPE', 'web designer');
	insert into esperienza values('7', '2019-5-18', 'CCVVEVIO', 'elettronica');
	insert into esperienza values('2', '2021-1-11', 'HIICQTKS', 'elettronica');
	insert into esperienza values('6', '2019-7-15', 'RSDDKLHL', 'elettronica');
	insert into esperienza values('8', '2020-1-21', 'YDQIXXBD', 'elettronica');
	insert into esperienza values('9', '2019-3-11', 'SKKHQJWL', 'database administration');
	insert into esperienza values('8', '2020-6-7', 'MQUEHWBT', 'database administration');
	insert into esperienza values('1', '2019-10-25', 'LKKZNYBB', 'database administration');
	insert into esperienza values('9', '2018-6-15', 'UAVHGZEC', 'database administration');
	insert into esperienza values('9', '2018-6-15', 'UAVHGZEC', 'programmatore');
	insert into esperienza values('2', '2021-4-16', 'YWYXCXIE', 'database administration');
	insert into esperienza values('2', '2019-12-10', 'CDCEMTYD', 'database administration');
	insert into esperienza values('6', '2020-5-8', 'YSAUKPMN', 'database administration');
	insert into esperienza values('7', '2020-11-15', 'SVDTESXI', 'web designer');
	insert into esperienza values('4', '2020-12-9', 'XLLEUZIK', 'web designer');
	insert into esperienza values('3', '2019-10-12', 'GUHUUYVL', 'web designer');
	insert into esperienza values('3', '2019-10-12', 'GUHUUYVL', 'elettronica');
	insert into esperienza values('5', '2019-12-14', 'BFAIWBGF', 'web designer');
	insert into esperienza values('7', '2020-8-26', 'ACPMWVTU', 'web designer');
	insert into esperienza values('5', '2019-2-4', 'STAAUVPQ', 'web designer');
	insert into esperienza values('6', '2020-4-15', 'SKLBIRVF', 'web designer');
	insert into esperienza values('7', '2020-4-4', 'ZGGSZICZ', 'web application');
	insert into esperienza values('6', '2019-8-9', 'FTTFFMMP', 'web application');
	insert into esperienza values('1', '2020-5-9', 'OWAZJRFZ', 'web application');
	insert into esperienza values('1', '2020-5-9', 'OWAZJRFZ', 'programmatore');
	insert into esperienza values('6', '2019-7-24', 'DNEBNTGV', 'web application');
	insert into esperienza values('1', '2019-4-22', 'HUVIXZBD', 'web application');
	insert into esperienza values('6', '2018-10-27', 'YFBUTMHJ', 'web application');
	insert into esperienza values('1', '2019-10-25', 'ZLEHOYIT', 'database administration');
	insert into esperienza values('8', '2020-1-21', 'WHAWRTCU', 'elettronica');
	insert into esperienza values('7', '2020-11-15', 'YFIBCXJG', 'web designer');
	insert into esperienza values('7', '2020-11-15', 'LIWGJCAQ', 'web designer');
	insert into esperienza values('7', '2020-10-18', 'IEELGLZS', 'principi di progettazione');
	insert into esperienza values('7', '2019-5-18', 'ETVIOIMX', 'principi di progettazione');
	insert into esperienza values('7', '2019-5-18', 'KHTMGKON', 'programmatore');
	insert into esperienza values('7', '2019-5-18', 'FAHCFZCJ', 'programmatore');
	insert into esperienza values('6', '2019-9-24', 'OURKWSGB', 'web application');
	insert into esperienza values('6', '2019-7-24', 'RBBGXWPB', 'web application');
	insert into esperienza values('6', '2019-7-24', 'IFHQXXNE', 'web application');
	insert into esperienza values('8', '2020-1-21', 'HPHJPRSQ', 'elettronica');

	-- SVILUPPO
	insert into sviluppo values('elettronica','RWRFBOTKY1JM','2017-6-19');
	insert into sviluppo values('matematico','ZWLMPQG3MAVA','2018-1-17');
	insert into sviluppo values('principi di progettazione','ZINAALA1WGAT','2020-1-21');
	insert into sviluppo values('database administration','OPYXV5ZJLVOL','2017-1-2');
	insert into sviluppo values('programmatore','NPDIVSQL6ODW','2015-12-10');
	insert into sviluppo values('programmatore','5LFKBYYPAVZR','2019-5-21');
	insert into sviluppo values('principi di progettazione','Q6BDTRRSZKNE','2018-7-3');
	insert into sviluppo values('web designer','KQ3AFCOYXNTI','2018-10-6');
	insert into sviluppo values('programmatore','DWWM4GOCPUAP','2021-1-16');
	insert into sviluppo values('principi di progettazione','OHIFY7KPHKKX','2018-1-13');
	insert into sviluppo values('principi di progettazione','WTUWU1VJUDSI','2021-3-17');
	insert into sviluppo values('principi di progettazione','SAMQP1NBCXCP','2021-2-5');
	insert into sviluppo values('elettronica','NPDIVSQL6ODW','2015-12-10');
	insert into sviluppo values('programmatore','KQ3AFCOYXNTI','2018-10-6');
	insert into sviluppo values('web application','KQ3AFCOYXNTI','2018-1-4');
	insert into sviluppo values('web application','Q6BDTRRSZKNE','2018-7-3');
	insert into sviluppo values('web designer','DWWM4GOCPUAP','2021-1-16');
	insert into sviluppo values('web application','DWWM4GOCPUAP','2021-1-16');


	-- PROPOSTA
	insert into proposta values('2019-7-24', 'LKKZNYBB', 'linguaggio C#');
	insert into proposta values('2019-7-24', 'DNEBNTGV', 'linguaggio python');
	insert into proposta values('2020-1-24', 'CDCEMTYD', 'strutture dati');
	insert into proposta values('2020-1-24', 'YFBUTMHJ', 'nozioni di matematica');
	insert into proposta values('2020-7-24', 'ZGGSZICZ','principi di telecomunicazione');
	insert into proposta values('2020-7-24', 'GUHUUYVL', 'tecnologie IOT');

	-- GERARCHIA PASSATA
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('NXDXNVCX', 'JXHTJZZT', '2014-10-6', '2018-10-24');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('MDTCYVML', 'JXHTJZZT', '2015-12-3', '2019-8-6');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('RCFQFBYY', 'NXDXNVCX', '2017-9-19', '2019-8-18');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('XRFYRGVO', 'NXDXNVCX', '2016-11-7', '2020-3-23');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('RCAHJZQA', 'MDTCYVML', '2017-1-17', '2018-1-29');
	--
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('NUYWQFQI', 'MDTCYVML', '2016-1-13', '2018-11-24');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('VWXOPHZC', 'RCAHJZQA', '2014-1-30', '2019-2-11');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('FWHIUZAK', 'RCAHJZQA', '2017-1-29', '2019-9-4');
	---
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('RSDDKLHL', 'RCFQFBYY', '2015-1-28', '2018-1-22');
	--
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('QDSVDDRB', 'RCFQFBYY', '2015-10-25', '2018-4-28');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('YWYXCXIE', 'XRFYRGVO', '2015-1-7', '2020-9-15');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('LKKZNYBB', 'NUYWQFQI', '2016-10-2', '2017-11-21');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('NSFKVYRM', 'NUYWQFQI', '2017-1-4', '2019-8-30');
	---
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('HIICQTKS', 'VWXOPHZC', '2015-1-3', '2019-12-28');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('UAVHGZEC', 'VWXOPHZC', '2018-5-3', '2020-6-1');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('SJABFEKT', 'NSFKVYRM', '2015-1-22', '2019-7-22');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('JEISWHRV', 'HIICQTKS', '2015-10-2', '2017-2-11');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('MQUEHWBT', 'FWHIUZAK', '2016-10-22', '2019-11-25');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('SVDTESXI', 'FWHIUZAK', '2015-9-22', '2018-12-5');
	----
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('CCVVEVIO', 'RSDDKLHL', '2018-1-4', '2018-10-28');
	-----------------------------------------------------------------------------------------------
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values('JEISWHRV', 'QDSVDDRB', '2017-2-10', '2018-12-11');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('SVDTESXI', 'LKKZNYBB', '2018-12-6', '2019-2-5');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine)values ('CCVVEVIO', 'UAVHGZEC', '2018-10-29', '2019-11-28');

	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine) values('LKKZNYBB', 'RSDDKLHL', '2017-1-22', '2018-3-17');
	insert into gerarchia_passata (dipendente_matricola,responsabile,inizio,fine) values('RSDDKLHL', 'QDSVDDRB', '2018-1-23', '2019-11-22');


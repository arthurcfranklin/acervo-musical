-- Realizou a consulta que mostra o ano das músicas versão “Acústico”:
select anoGravacao as "Ano" from interpretacao
	where nomeVersao = 'Acústico';

-- Realizou a consulta que mostra a versão das músicas cadastradas com data superior a 2010:
select nomeVersao as "Versão" from interpretacao
	where anoGravacao > 2010;

-- Realizou a consulta que mostra os anos das músicas dos Paralamas do Sucesso:
select anoGravacao as "Ano de Lançamento" from interpretacao
	where id_cant = 16;
    
-- Realizou a consulta que mostra o nome das músicas que tenham versão “Ao Vivo”:
select musica.titulo from musica, interpretacao
	where musica.idMusica = interpretacao.id_msc 
    and interpretacao.nomeVersao = 'Ao Vivo';

-- Realizou a consulta que mostra a quantidade de músicas com versão “Extended Mix”:
select count(*) as quantidade_musicas
from interpretacao
where nomeVersao = 'Extended Mix';

-- Realizou a consulta que mostra o total de músicas por versões:
select
nomeVersao as "Versão", 
count(*) as "Número de Músicas"
from interpretacao
group by nomeVersao;

-- Realizou a consulta que mostra a quantidade das músicas com versão 'Ao Vivo' e 'Acústico' somadas:
select
count(*) as "Quantidade"
from interpretacao
where nomeVersao in ('Ao Vivo', 'Acústico');

-- Realizou a consulta que mostra os cantores com músicas gravadas antes de 1999 ordenadas por ano:
select cantor.nomeCantor as "Nome do Cantor"
from cantor, interpretacao
where cantor.idCantor = interpretacao.id_cant
and interpretacao.anoGravacao < 1999
group by cantor.nomeCantor
order by MIN(interpretacao.anoGravacao);

-- Realizou a consulta que mostre os cantores com músicas gravadas (Obrigatório uso do Join)
select distinct cantor.nomeCantor
from cantor
join interpretacao on cantor.idCantor = interpretacao.id_cant
order by cantor.nomeCantor;

-- Realizou a consulta que mostra todas as músicas do Jota Quest do ano de 2014 (obrigatório uso de Join)
select musica.titulo
from musica
join interpretacao on musica.idMusica = interpretacao.id_msc
join cantor on interpretacao.id_cant = cantor.idCantor
where cantor.nomeCantor = 'Jota Quest'
and interpretacao.anoGravacao = 2014;
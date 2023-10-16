
--QUERY 1
SELECT 
	Nome, Ano
FROM Filmes;

--QUERY 2
SELECT 
	Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;

--QUERY 3
SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';

--QUERY 4
SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

--QUERY 5
SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

--QUERY 6
SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Duracao between 101 and 149
--WHERE Duracao > 100 and Duracao < 150
ORDER BY Duracao;

--QUERY 7
SELECT Ano,
	COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--QUERY 8
SELECT 
	A.PrimeiroNome, A.UltimoNome
FROM Atores A WHERE A.Genero = 'M';


--QUERY 9
SELECT 
	A.PrimeiroNome, A.UltimoNome
FROM Atores A 
WHERE A.Genero = 'F'
ORDER BY A.PrimeiroNome;


--QUERY 10
SELECT 
	F.Nome, G.Genero
FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
;

--QUERY 11
SELECT 
	F.Nome, G.Genero
FROM Filmes F 
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério';


--QUERY 12
SELECT 
	F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F 
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON A.Id = EF.IdAtor;

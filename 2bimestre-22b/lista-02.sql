use avaliacao_22b;

select *
from livros
where disponivel = true;

select *
from livros
where editora = "HarperCollins";

select *
from livros
where ano_publicacao >=2000 and ano_publicacao <=2010;

select  count(id), autor
from livros
group by autor
having count(id) >= 3;

select *
from livros
where titulo like '%Senhor%';

select *
from livros 
where categoria in ('Fantasia', 'Ficção Científica', 'Fábula'); 

select distinct idioma
from livros;

select *
from livros
where quantidade_paginas between 200 and 400;

select livros.titulo, livros.ano_publicacao
from livros
order by ano_publicacao;
use avaliacao_22a;

insert into livros
values(null, 'As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');

insert into livros
values(null, 'Os Grandes Contos Populares Do Mundo', 'Flávio Moreira Da Costa', 2005, TRUE, 'História', '978-8500014734', 'Ediouro', 432, 'Português');

update Livros
set disponivel = false
where ano_publicacao <= 2000;

update Livros
set editora = 'Plume Books'
where titulo = '1984';

update Livros
set idioma = 'Inglês'
where editora = 'Penguin Books';

update Livros
set titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
where isbn = '978-0439708180';

delete from Livros
where categoria = 'Terror';

delete from Livros 
where idioma = 'Francês' and ano_publicacao < 1970;

delete from Livros 
where titulo = 'As Crônicas de Nárnia';

delete from Livros 
where editora = 'Penguin Books';

select * 
from Livros
where quantidade_paginas >= 500;

select count(categoria) as LivrosPorCategoria, categoria as Categorias
from Livros
group by categoria;

select * 
from livros
limit 0, 5;

select sum(quantidade_paginas) as TotalPaginas, avg(quantidade_paginas) as MediaPaginas
from livros
where categoria = 'Drama';

select avg(ano_publicacao) as MediaAnoPublicacao
from Livros;

select *
from Livros
where ano_publicacao = 2022 or ano_publicacao = 1818;

select titulo
from livros
where idioma = 'Português'

union

select titulo
from livros
where idioma = 'Inglês';

select *
from Livros
where autor = 'George Orwell';
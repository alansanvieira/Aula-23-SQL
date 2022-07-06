create database Catalogo;

create table Filme(
id int primary key identity,
nome varchar(60) not null,
data_de_lancamento date not null,
duracao int not null
);

create table Ator(
id int primary key identity,
nome varchar(60) not null,
sobrenome varchar(60) not null
);

create table Filme_Ator(
id int primary key identity,
id_filme int,
id_ator int,

constraint Fk_filme_id foreign key(id_filme) references Filme(id),

constraint Fk_ator_id foreign key(id_ator) references Ator(id)
);

insert into Filme (nome, data_de_lancamento, duracao) 
values 
('Thor: Amor e Trovão', '07/08/22', 120),
('O Homem do Norte', '05/12/22', 137),
('O Homem nas Trevas', '09/08/16', 88);

insert into Ator (nome, sobrenome) 
values

('Stephen', 'Lang'),
('Jane ', 'Levy'),
('Dylan', 'Minnette'),
('Daniel', 'Zavatto'),
('Natalie ', 'Portman'),
('Christian ', 'Bale'),
('Chris', 'Hemsworth'),
('Matt', 'Damon'),('Russel', 'Crowe'),('Anya', 'Taylor-Joy'),('Alexander', 'Skarsgard'),('Willian', 'Defoe')
;

select * from Filme order by nome asc;

select * from Filme order by data_de_lancamento desc;

select nome, sobrenome from Ator order by nome asc;

insert into Ator(nome, sobrenome) values 
('Nicole', 'Kidman'),
('Ethan', 'Hawke');

select * from Ator;




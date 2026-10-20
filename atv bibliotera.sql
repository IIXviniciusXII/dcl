CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE livros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL);
    
create user 'leitor'@'localhost'
identified by '123';

create user 'bibliotecario'@'localhost'
identified by '1234';

grant select
on biblioteca.livros
to 'leitor'@'localhost';

grant select, update, insert
on biblioteca.livros
to 'bibliotecario'@'localhost';
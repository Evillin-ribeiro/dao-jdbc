CREATE DATABASE IF NOT EXISTS jdbc_java;
USE jdbc_java;

DROP TABLE IF EXISTS seller;
DROP TABLE IF EXISTS department;

CREATE TABLE department (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(60) NOT NULL,
    PRIMARY KEY (Id)
);

CREATE TABLE seller (
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(60) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    BirthDate DATE NOT NULL,
    BaseSalary DOUBLE NOT NULL,
    DepartmentId INT NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (DepartmentId) REFERENCES department(Id)
);

INSERT INTO department (Id, Name) VALUES
(1, 'CEO'),
(2, 'Diretoria'),
(3, 'Gerencia'),
(4, 'Vendas'),
(5, 'TI');

INSERT INTO seller (Id, Name, Email, BirthDate, BaseSalary, DepartmentId) VALUES
(1, 'Carlos Mendes', 'carlos.mendes@email.com', '1975-02-10', 35000.00, 1),
(2, 'Fernanda Lima', 'fernanda.lima@email.com', '1980-07-22', 28000.00, 2),
(3, 'Luan Santana', 'luan.santana@email.com', '1989-03-13', 25000.00, 1),
(4, 'Juliana Alves', 'juliana.alves@email.com', '1983-11-05', 22000.00, 2),
(5, 'Rodrigo Pereira', 'rodrigo.pereira@email.com', '1979-01-30', 21000.00, 3),
(6, 'Patricia Souza', 'patricia.souza@email.com', '1988-09-17', 18000.00, 3),
(7, 'Marcos Vinicius', 'marcos.vinicius@email.com', '1991-04-25', 9000.00, 4),
(8, 'Camila Rocha', 'camila.rocha@email.com', '1993-06-12', 8800.00, 4),
(9, 'Bruno Carvalho', 'bruno.carvalho@email.com', '1986-12-01', 11000.00, 5),
(10, 'Larissa Costa', 'larissa.costa@email.com', '1990-08-19', 10500.00, 5),
(11, 'Thiago Martins', 'thiago.martins@email.com', '1984-03-09', 9500.00, 4),
(12, 'Gabriela Ferreira', 'gabriela.ferreira@email.com', '1992-10-28', 8700.00, 4),
(13, 'Eduardo Ramos', 'eduardo.ramos@email.com', '1978-05-14', 23000.00, 3),
(14, 'Aline Barbosa', 'aline.barbosa@email.com', '1987-02-21', 17500.00, 3),
(15, 'Felipe Araujo', 'felipe.araujo@email.com', '1995-07-03', 7900.00, 4),
(16, 'Beatriz Cardoso', 'beatriz.cardoso@email.com', '1994-11-16', 8200.00, 4),
(17, 'Diego Nascimento', 'diego.nascimento@email.com', '1982-01-27', 12500.00, 5),
(18, 'Vanessa Teixeira', 'vanessa.teixeira@email.com', '1989-09-09', 11800.00, 5),
(19, 'Rafael Gomes', 'rafael.gomes@email.com', '1976-06-06', 29500.00, 2),
(20, 'Isabela Correia', 'isabela.correia@email.com', '1985-04-18', 19500.00, 3),
(21, 'Gustavo Dias', 'gustavo.dias@email.com', '1990-12-23', 9200.00, 4),
(22, 'Natalia Pinto', 'natalia.pinto@email.com', '1996-03-31', 7600.00, 4),
(23, 'Lucas Moreira', 'lucas.moreira@email.com', '1981-08-08', 13500.00, 5),
(24, 'Renata Castro', 'renata.castro@email.com', '1988-10-10', 10900.00, 5),
(25, 'Andre Siqueira', 'andre.siqueira@email.com', '1977-01-15', 31000.00, 2),
(26, 'Priscila Monteiro', 'priscila.monteiro@email.com', '1992-05-20', 8000.00, 4),
(27, 'Vinicius Cunha', 'vinicius.cunha@email.com', '1983-07-07', 20500.00, 3),
(28, 'Carolina Azevedo', 'carolina.azevedo@email.com', '1994-02-02', 7800.00, 4),
(29, 'Henrique Lopes', 'henrique.lopes@email.com', '1986-06-29', 12900.00, 5),
(30, 'Mariana Ribeiro', 'mariana.ribeiro@email.com', '1991-09-26', 9100.00, 4);

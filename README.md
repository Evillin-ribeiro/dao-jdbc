# DAO JDBC - MySQL

Projeto de estudo em Java que implementa o padrão **DAO (Data Access Object)** para persistência de dados usando **JDBC** puro e **MySQL**, sem uso de frameworks ORM.

O domínio simula um sistema simples de departamentos e vendedores (`Department` e `Seller`), com operações de CRUD (criar, buscar, atualizar e remover).

Para rodar o projeto é necessário ter uma instância MySQL disponível, com o banco criado a partir do script [create-database.sql](create-database.sql), além de um arquivo `db.properties` na raiz com as credenciais de acesso a esse banco.

## Tecnologias

- Java 17
- JDBC (MySQL Connector/J 9.7.0)
- MySQL

## Estrutura do projeto

```
src/
├── application/        # Classe principal (Program) com exemplos de uso dos DAOs
├── db/                  # Infraestrutura de conexão e exceções (DB, DbException, DbIntegrityException)
└── model/

    ├── entities/        # Entidades de domínio (Department, Seller)
    └── dao/             # Interfaces DAO e fábrica (DaoFactory)
        └── impl/        # Implementações JDBC das interfaces DAO
```

## Modelo de dados

O banco possui duas tabelas, relacionadas por `DepartmentId`:

**department**
- `Id` — identificador do departamento
- `Name` — nome do departamento

**seller**
- `Id` — identificador do vendedor
- `Name` — nome do vendedor
- `Email` — e-mail do vendedor
- `BirthDate` — data de nascimento
- `BaseSalary` — salário base
- `DepartmentId` — referência ao departamento (FK)

## Pré-requisitos

- JDK 17+
- MySQL Server em execução
- Driver MySQL Connector/J


## O que o `Program.java` demonstra

- Busca de departamento por id (`findById`)
- Listagem de todos os departamentos (`findall`)
- Inserção de um novo departamento (`insert`)
- Atualização de um departamento existente (`update`)
- Remoção de um departamento por id (`deleteById`)

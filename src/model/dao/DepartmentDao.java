package model.dao;

import java.util.List;

import model.entities.Department;

public interface DepartmentDao {

    void insert(Department obj); // Inserir no banco de dados
    void update(Department obj); // Atualiza
    void deleteById(Integer id); // Deleta
    Department findById(Integer id); // Busca por id
    List<Department> findall(); // Busca por todos
    
}
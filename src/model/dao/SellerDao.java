package model.dao;

import java.util.List;

import model.entities.Department;
import model.entities.Seller;

public interface SellerDao {
    void insert(Seller obj); // Inserir no banco de dados
    void update(Seller obj); // Atualiza
    void deleteById(Integer id); // Deleta
    Seller findById(Integer id); // Busca por id
    List<Seller> findall(); // Busca por todos
    List<Seller> findByDepartment(Department department); // Busca por departamento
    
}

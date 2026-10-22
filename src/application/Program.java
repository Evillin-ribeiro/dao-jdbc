package application;

import java.util.List;
import java.util.Locale;
import java.util.Scanner;

import db.DB;
import db.DbException;
import model.dao.DepartmentDao;
import model.dao.impl.DepartmentDaoJDBC;
import model.entities.Department;

public class Program {
    public static void main(String[] args) {
        
        Locale.setDefault(Locale.US);
        Scanner sc = new Scanner(System.in);

		DepartmentDao departmentDao = new DepartmentDaoJDBC(DB.getConnection());

		System.out.println("========== FIND BY ID ==========");
		Department dep = departmentDao.findById(1);
		System.out.println(dep);
		
		System.out.println("\n========== FIND ALL ==========");
		List<Department> list = departmentDao.findall();
		for (Department d : list) {
			System.out.println(d);
		}

		System.out.println("\n========== INSERT ==========");
		Department newDepartment = new Department(null, "Desenvolvedor de Software");
		departmentDao.insert(newDepartment);
		System.out.println("Inserted! New id: " + newDepartment.getId());

		System.out.println("\n========== UPDATE ==========");
		Department dep2 = departmentDao.findById(1);
		dep2.setName("Ana Luiza Ferreira de Souza");
		departmentDao.update(dep2);
		System.out.println("Update completed");
		
		System.out.println("\n========== DELETE ==========");
		System.out.print("Enter id for delete: ");
		int id = sc.nextInt();
		try {
            departmentDao.deleteById(id);
            System.out.println("Delete completed!");
        } catch (DbException e) {
            System.out.println("Error deleting: " + e.getMessage());
        }
		sc.close();
    }
    
}

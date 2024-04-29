package employeemanagement.dao;

import employeemanagement.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;


public interface EmpDao {
    public void saveEmp(Employee e);
    public Employee getEmpById(int id);
    public List<Employee> getAllEmp();
    public void deleteEmp(int id);

}

package employeemanagement.dao;

import employeemanagement.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;

@Component
public class EmpDaoImp implements EmpDao{
    @Autowired
    HibernateTemplate hibernateTemplate;
    @Transactional
    @Override
    public void saveEmp(Employee e) {
        hibernateTemplate.saveOrUpdate(e);

    }

    @Override
    public Employee getEmpById(int id) {

        Employee employee = hibernateTemplate.get(Employee.class, id);
        return employee;
    }

    @Override
    public List<Employee> getAllEmp() {
        List<Employee> employees = hibernateTemplate.loadAll(Employee.class);
        return employees;
    }
    @Transactional
    @Override
    public void deleteEmp(int id) {
        hibernateTemplate.delete(hibernateTemplate.load(Employee.class,id));
    }
}

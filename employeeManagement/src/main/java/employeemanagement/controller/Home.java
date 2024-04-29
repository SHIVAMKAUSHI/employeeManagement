package employeemanagement.controller;

import employeemanagement.dao.EmpDao;
import employeemanagement.model.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class Home {
    @Autowired
    EmpDao empDao;
    @RequestMapping("/")
    public String home(Model m){
        m.addAttribute("title","Home");
        m.addAttribute("employees",empDao.getAllEmp());

        return "index";
    }
    @RequestMapping("/addEmp")
    public String addEmployee(Model m){
        m.addAttribute("title","Add Employee");
        return "add_emp";
    }

    @RequestMapping(value = "createEmp",method = RequestMethod.POST)
    public RedirectView createEmplyee(@ModelAttribute Employee e, HttpSession m, HttpServletRequest request){
        empDao.saveEmp(e);
        m.setAttribute("msg","Registered Successfully");
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath()+"/");
        return redirectView;
    }
    @RequestMapping(value="/editemp/{id}")
    public String updateEmp(@PathVariable int id, Model m){
        m.addAttribute("title","Edit Employee");
        Employee emp = empDao.getEmpById(id);
        System.out.println(emp.getDesignation());
        m.addAttribute("employee",emp);
        return "update_emp";

    }
    @RequestMapping(value="/deleteemp/{id}")
    public RedirectView deleteEmp(@PathVariable int id, HttpServletRequest request){
        RedirectView redirectView=new RedirectView();
        empDao.deleteEmp(id);

        redirectView.setUrl(request.getContextPath()+"/");
        return redirectView;

    }
}

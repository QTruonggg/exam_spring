package com.example.exam_spring.controller;

import com.example.exam_spring.entity.Employee;
import com.example.exam_spring.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/form")
    public String showEmployeeForm(Model model) {
        model.addAttribute("employee", new Employee());
        return "createOrUpdateForm";
    }

    @PostMapping("/save")
    public String saveEmployee(Employee employee) {

        employeeService.createEmployee(employee);
        return "redirect:/employee/list";
    }

    @GetMapping("/list")
    public String listEmployees(Model model) {
        model.addAttribute("employees", employeeService.findAllEmployees());
        return "listEmployee";
    }
}

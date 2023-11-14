package com.example.exam_spring.service;

import com.example.exam_spring.entity.Employee;

import java.util.List;

public interface EmployeeService {
    void createEmployee(Employee employee);

    List<Employee> findAllEmployees();
}

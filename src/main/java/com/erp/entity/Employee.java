package com.erp.entity;

public class Employee {
    private String name;
    private int employeeId;
    private String designation;
    private String address;
    private String email;
    private String phoneNumber;
    private int age;
    private String dateOfBirth;
    private String cnic;
    private String gender;
    private String dateOfJoining;

    int salary;
    public Employee(String name, int employeeId, String designation, String address, String email, String phoneNumber, int age, String dateOfBirth, String cnic, String gender, String dateOfJoining,int salary) {
        this.name = name;
        this.employeeId = employeeId;
        this.designation = designation;
        this.address = address;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.age = age;
        this.dateOfBirth = dateOfBirth;
        this.cnic = cnic;
        this.gender = gender;
        this.dateOfJoining = dateOfJoining;
        this.salary = salary;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public void setCnic(String cnic) {
        this.cnic = cnic;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setDateOfJoining(String dateOfJoining) {
        this.dateOfJoining = dateOfJoining;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getName() {
        return name;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public String getDesignation() {
        return designation;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public int getAge() {
        return age;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public String getCnic() {
        return cnic;
    }

    public String getGender() {
        return gender;
    }

    public String getDateOfJoining() {
        return dateOfJoining;
    }

    public int getSalary() {
        return salary;
    }
}

class Employee{
  String id;
  String employeeName;
  String employeeSalary;
  String employeeAge;
  String profileImage;

  Employee(this.id, this.employeeName, this.employeeSalary, this.employeeAge,
      this.profileImage);

  factory Employee.fromJson(var json){
    return Employee(json["id"],json["employee_name"],
        json["employee_salary"],json["employee_age"],json["profile_image"]);
  }
}
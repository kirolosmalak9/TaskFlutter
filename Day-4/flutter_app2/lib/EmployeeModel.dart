import 'package:scoped_model/scoped_model.dart';
import 'package:dio/dio.dart';

import 'Employee.dart';

class EmployeeModel extends Model{

  static EmployeeModel shared = new EmployeeModel();

  List<Employee> employees;

  EmployeeModel(){
    employees = new List();
  }

  void addEmployee(Employee employee){
    employees.add(employee);
    notifyListeners();
  }

  Future<List<Employee>> fetch() async{
    List<Employee> employees = new List<Employee>();

    Dio dio = new Dio();

    Response response = await dio.get("http://dummy.restapiexample.com/api/v1/employees");

    var res = response.data;

    var employeesData = res["data"];

    employees = (employeesData as List).map((employee) => new Employee.fromJson(employee)).toList();

    this.employees = employees;

    notifyListeners();

    return employees;
  }

}
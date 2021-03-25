import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'AddEmployee.dart';
import 'Employee.dart';

Future<List<Employee>> fetch() async{
  List<Employee> employees = new List<Employee>();

  Dio dio = new Dio();

  Response response = await dio.get("http://dummy.restapiexample.com/api/v1/employees");

  var res = response.data;

  var employeesData = res["data"];

  employees = (employeesData as List).map((employee) => new Employee.fromJson(employee)).toList();

  return employees;
}


class EmployeeList extends StatefulWidget {
  @override
  _MyList createState() => _MyList();
}

class _MyList extends State<EmployeeList> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Employees',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: FutureBuilder<List<Employee>>(
          future: fetch(),
          builder: (context,snapShot){
            if(snapShot.hasError){
              return ErrorWidget(snapShot.error);
            }
            List<Employee> employees = snapShot.data ?? [];
            return ListView.builder(
                itemCount: employees.length,
                itemBuilder: (context,index){
                  Employee employee = employees[index];
                  return new Padding(
                    padding:EdgeInsets.all(35),
                    child: Column(
                      children: [
                        Align(
                          child: Text(
                            '${employee.employeeName}',
                            style: TextStyle(
                                fontSize: 24
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        ),
                        Align(
                          child: Text(
                            'age : ${employee.employeeAge}',
                            style: TextStyle(
                                fontSize: 20,
                                color:Colors.grey
                            ),
                          ),
                          alignment: Alignment.centerLeft,
                        )
                      ],
                    ),
                  );
                }
            );

          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (_)=>AddEmployee()));
          },
          child: Icon(Icons.add)
      ),
    );
  }
}
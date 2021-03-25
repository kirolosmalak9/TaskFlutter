import 'package:flutter/material.dart';
import 'AddEmployee.dart';
import 'Employee.dart';
import 'EmployeeModel.dart';
import 'package:scoped_model/scoped_model.dart';



class EmployeeList extends StatefulWidget {
  @override
  _MyList createState() => _MyList();
}

class _MyList extends State<EmployeeList> {

  void initState() {
    // TODO: implement initState
    super.initState();
    EmployeeModel.shared.fetch();
  }

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
      body:
      Center(
        //   child: FutureBuilder<List<Employee>>(
        //     future: fetch(),
        //     builder: (context,snapShot){
        //       if(snapShot.hasError){
        //         return ErrorWidget(snapShot.error);
        //       }
        //       List<Employee> employees = snapShot.data ?? [];
        //       return ListView.builder(
        //           itemCount: employees.length,
        //           itemBuilder: (context,index){
        //             Employee employee = employees[index];
        //             return new Padding(
        //               padding:EdgeInsets.all(35),
        //               child: Column(
        //                 children: [
        //                   Align(
        //                     child: Text(
        //                       '${employee.employeeName}',
        //                       style: TextStyle(
        //                           fontSize: 24
        //                       ),
        //                     ),
        //                     alignment: Alignment.centerLeft,
        //                   ),
        //                   Align(
        //                     child: Text(
        //                       'age : ${employee.employeeAge}',
        //                       style: TextStyle(
        //                           fontSize: 20,
        //                           color:Colors.grey
        //                       ),
        //                     ),
        //                     alignment: Alignment.centerLeft,
        //                   )
        //                 ],
        //               ),
        //             );
        //           }
        //       );
        //
        //     },
        //   ),
        // ),

          child: ScopedModel<EmployeeModel>(
              model: EmployeeModel.shared,
              child: new Container(
                  child: new ScopedModelDescendant<EmployeeModel>(
                      builder: (context, child, model) {
                        return ListView.builder(
                            itemCount: model.employees.length,
                            itemBuilder: (context,index){
                              Employee employee = EmployeeModel.shared.employees[index];
                              return new Padding(
                                padding:EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Align(
                                      child: Text(
                                        'name : ${employee.employeeName}',
                                        style: TextStyle(
                                            fontSize: 20
                                        ),
                                      ),
                                      alignment: Alignment.centerLeft,
                                    ),
                                    Align(
                                      child: Text(
                                        'age : ${employee.employeeAge}',
                                        style: TextStyle(
                                            fontSize: 18,
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
                      }
                  )
              )
          )
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
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AddEmployee extends StatefulWidget{
  @override
  _AddEmpView createState() =>_AddEmpView();

}

class _AddEmpView extends State<AddEmployee>{

  final name = TextEditingController();
  final age = TextEditingController();

  void request() async{
    Dio dio = new Dio();
    Response response = await dio.post("http://dummy.restapiexample.com/api/v1/create",
        data: {
          "name":"${name.text}",
          "age":"${age.text}" });
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Add Employee',
          style: TextStyle(
              fontSize: 30,
              color: Colors.white
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                TextField(
                    controller: name,
                    decoration: InputDecoration(hintText: 'Employee Name')
                ),
                TextField(
                    controller: age,
                    decoration: InputDecoration(hintText: 'Employee Age')
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          RaisedButton(
            color: Colors.blue,
            child: Text('ADD' ,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            onPressed: () {
              request();
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}
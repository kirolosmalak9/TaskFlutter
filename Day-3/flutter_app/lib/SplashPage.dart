import 'dart:async';

import 'package:flutter/material.dart';

import 'LogInPage.dart';



class SplashPage extends StatefulWidget {

  final String title;

  SplashPage({Key key, this.title}) : super(key: key);


  @override
  _SplashPage createState() => _SplashPage();
}

class _SplashPage extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LogInPage()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill
            (child: Container(
            color: Colors.blue,
          ),
          ),
          Positioned.fill(
            child: Container(
              child: Column(
                children: [
                  Spacer(flex: 30),
                  ClipRRect(
                    borderRadius: new BorderRadius.circular(50.0),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/pic_1.jpg'),
                      width: 70.0,
                      height: 70.0,
                    ),
                  ),
                  Text(
                    "Go Kart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(flex: 50),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.brown,
                      size: 30,
                    ),
                  ),
                  Text(
                    "Flutter E-commerce",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "UI Template",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(flex: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
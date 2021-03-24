import 'package:flutter/material.dart';
import 'package:flutter_app/LogInPage.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SignUpPage createState() => _SignUpPage();
}


class _SignUpPage extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: buildBody(),
        ),
      ),
    );
  }

  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    var _textStyle2 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    );


    return Center (
        child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Row(children: [
                  FlatButton(
                    child: Text('Log In' ,
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LogInPage()),
                      );
                    },
                      ),

                  Padding(padding: EdgeInsets.fromLTRB(165, 0, 0, 0),
                    child:Text('sign Up' ,style:  _textStyle2,),
                  ),
                ],
                ),
                SizedBox(height: 25),
                Image.asset("assets/images/pic_1.jpg",
                  height: 100,
                  width: 100,),

                Text(
                  "Go Kart",
                  style: TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 50),

                TextField(
                  decoration: InputDecoration(
                      hintText: 'Email Address'
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'UserName'
                  ),
                ),

                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password'
                  ),
                ),

                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Repeat Password'
                  ),
                ),


                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.assignment_turned_in_outlined,
                            color: Colors.blue,
                          ),
                          Text(
                            "ٍSign Up",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0))),
                    ),
                  ),
                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an Account ',
                      style: TextStyle(color: Colors.grey , fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(text:'LogIn', style: TextStyle(fontWeight: FontWeight.bold ,
                            color: Colors.black)),
                      ],
                    ),
                  ),
                ),
              ],
            )
        )


    );
  }
}

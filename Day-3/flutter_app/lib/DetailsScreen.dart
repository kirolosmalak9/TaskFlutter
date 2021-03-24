import 'package:flutter/material.dart';
import 'package:badges/badges.dart';


class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(5,0,10,0),
                          child: Icon(Icons.arrow_back,)
                      ),
                      Container(child: Text("Saara Poly Silk ..."),),
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(child: Icon(Icons.favorite,)),
                      SizedBox(width: 20,),
                      Align(
                        child: Badge(
                          badgeColor: Colors.yellow,
                          badgeContent: Text('3', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold ),),
                          child: Icon(Icons.shopping_cart),
                        ),
                      ),
                    ],)
                ],
              ),
            ],
          )
      ),
      body: SafeArea(
        child: Container(
          child: Container(
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[200],

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 10,),
                  Text("Saara Poly Silk Embellished, Woven Salwar Suit Material(Unstiched)"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5)
                      ,border: Border.all(
                        color: Colors.white,
                        width: 1
                    ),
                      color: Colors.grey[200],
                    ),

                    child: Text("Special Price", style: TextStyle(fontSize: 13, color: Colors.red,), textAlign: TextAlign.left,),
                  ),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text(" ₹549  ", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                    Text(" ₹1893  ", style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey),),
                    Text(" ₹70% off  ", style: TextStyle(color: Colors.red),)
                  ],),
                  SizedBox(height: 20,),
                  Container(
                    width: 140,
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 52,
                          height: 33,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.red,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("4.3", style: TextStyle(color: Colors.white),),
                              Icon(Icons.star, color: Colors.white, size: 16,),
                            ],),
                        ),
                        Text(" 2814 ratings"),
                      ],),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 10,),
                  Text("Size"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    textAlign: TextAlign.left,),

                  Text("Tip: For the best fit, buy one size larger han your usual size."
                    , style: TextStyle(
                      fontSize: 12, color: Colors.black,
                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          child: Text("XS", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          child: Text("S", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          child: Text("M", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                      Container(
                          width: 40,
                          height: 20,
                          alignment: Alignment.center,
                          child: Text("L", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),

                    ],),
                  SizedBox(height: 20,),
                  Text("Color"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                      Container(
                        child: SizedBox(height: 50, width: 50,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.black
                        ),
                      ),
                      Container(
                        child: SizedBox(height: 50, width: 50,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.red
                        ),
                      ),
                      Container(
                        child: SizedBox(height: 50, width: 50,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                        ),
                            color: Colors.blue
                        ),
                      ),
                    ],),
                  SizedBox(height: 10,),

                ],
              ),
            ),

            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 10,),
                  Text("Product Details"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(

                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Color" , style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 7,),
                            Text("Length",  style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 7,),
                            Text("Type",  style: TextStyle(color: Colors.grey),),
                            SizedBox(height: 7,),
                            Text("Sleeve",  style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                        width: 170,
                        alignment: Alignment.centerLeft,
                      )
                      ,
                      Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Yellow", style: TextStyle(fontSize: 16),),
                            SizedBox(height: 7,),
                            Text("Knee Length"),
                            SizedBox(height: 7,),
                            Text("Bandage"),
                            SizedBox(height: 7,),
                            Text("Cap Sleeve"),
                          ],
                        ),
                        width: 150,
                        alignment: Alignment.centerLeft,
                      ),

                    ],
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              // alignment: Alignment.
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  SizedBox(height: 10,),
                  Text("Product Descripction"
                    , style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,

                    ),
                    textAlign: TextAlign.left,),
                  SizedBox(height: 10,),
                  Text("Slip into this trendy and attractive dress from Rudraaksha and look stylish effortlessly. Made to accentuate any body type, it will give you that extra oomph and make you stand out wherever you are. Keep the accessories minimal for that added elegant look, just you favourite heels and dangling ..."
                    , style: TextStyle(
                      fontSize: 13.5,

                    ),
                    textAlign: TextAlign.left,),

                  SizedBox(height: 20,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
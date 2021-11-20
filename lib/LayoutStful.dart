import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LayoutStful extends StatefulWidget {
  const LayoutStful({Key? key}) : super(key: key);

  @override
  _LayoutStfulState createState() => _LayoutStfulState();
}

const primeColor = Color.fromARGB(200, 255, 178, 102);

var _dinamicImage = AssetImage("imgs/base2.png");

var _textDinamic = "Resultado final";

class _LayoutStfulState extends State<LayoutStful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E L E M E N T A R",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Color.fromARGB(200, 204, 102, 0)
        ),),
        backgroundColor: primeColor,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 16, bottom: 16),
        decoration: BoxDecoration(border: Border.all(width: 3, color: Colors.green)),
        child: Column(
          children: <Widget>[
            Text(
              "p o r t a l",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(200, 204, 102, 0),
              ),),
            Padding(padding: EdgeInsets.only( top:15 ),
            ),
            Image(image: _dinamicImage,
              height: 150,),
            Padding(padding: EdgeInsets.only( top:60 ),
            ),
           Text(
             "$_textDinamic",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w500,
               color: Color.fromARGB(200, 204, 102, 0),
             ),
           ),
            Padding(padding: EdgeInsets.only( top:70 ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               Image.asset("imgs/fogo.png",
               height: 70,),
               Image.asset("imgs/agua.png",
                 height: 70,),
               Image.asset("imgs/vento.png",
                 height: 70,),
               Image.asset("imgs/terra.png",
                 height: 70,)
             ],
           ),
          ],
        ),
      ),
    );
  }
}

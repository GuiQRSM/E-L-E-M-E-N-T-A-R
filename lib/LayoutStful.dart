import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:math';

class LayoutStful extends StatefulWidget {
  const LayoutStful({Key? key}) : super(key: key);

  @override
  _LayoutStfulState createState() => _LayoutStfulState();
}

const primeColor = Color.fromARGB(200, 89, 8, 105);

var _dinamicImage = AssetImage("imgs/base2.png");

var _textDinamic = "Resultado final";



void _callImage(String ComandUser) {

  var choiseUser = ComandUser;

  var arrayElements = ["fogo", "agua", "vento", "terra"];
  var randomElements = Random().nextInt(4);
  var choiseConfronter = arrayElements[randomElements];

  print("Comando do usuario: " + choiseUser);
  print("Comando da CPU: " + choiseConfronter);

}

class _LayoutStfulState extends State<LayoutStful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E L E M E N T A R",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Color.fromARGB(250, 171, 9, 128)
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
              "c o n f r o t e r",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(250, 171, 9, 128),
              ),),
            Padding(padding: EdgeInsets.only( top:15 ),
            ),
            Image(image: _dinamicImage,
              height: 170,),
            Padding(padding: EdgeInsets.only( top:60 ),
            ),
           Text(
             "$_textDinamic",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w500,
               color: Color.fromARGB(250, 171, 9, 128),
             ),
           ),
            Padding(padding: EdgeInsets.only( top:70 ),
            ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               GestureDetector(
                 onTap: ()=> _callImage("fogo"),
                 child:Image.asset("imgs/fogo.png",
                   height: 70,),
               ),
               GestureDetector(
                 onTap: () => _callImage("agua"),
                 child:  Image.asset("imgs/agua.png",
                   height: 70,),
               ),
              GestureDetector(
                onTap: () => _callImage("vento"),
                child:  Image.asset("imgs/vento.png",
                  height: 70,),
              ),
              GestureDetector(
                onTap: () => _callImage("terra"),
                child:  Image.asset("imgs/terra.png",
                  height: 70,),
              ),
             ],
           ),
          ],
        ),
      ),
    );
  }
}

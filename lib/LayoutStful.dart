import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:math';

class LayoutStful extends StatefulWidget {
  const LayoutStful({Key? key}) : super(key: key);

  @override
  _LayoutStfulState createState() => _LayoutStfulState();
}

class _LayoutStfulState extends State<LayoutStful> {

  var primeColor = Color.fromARGB(200, 89, 8, 105);

  var _dinamicImage = AssetImage("imgs/base2.png");

  var _textDinamic = "v e r e d i t o";

  void _callImage(String ComandUser) {
    var choiseUser = ComandUser;

    var arrayElements = ["fogo", "agua", "vento", "terra"];
    var randomElements = Random().nextInt(4);
    var choiseConfronter = arrayElements[randomElements];

    print("Comando do usuario: " + choiseUser);
    print("Comando da CPU: " + choiseConfronter);

    switch (choiseConfronter) {
      case "fogo" :
        setState(() {
          this._dinamicImage = AssetImage("imgs/fogo.png");
        });
        break;

      case "agua" :
        setState(() {
          this._dinamicImage = AssetImage("imgs/agua.png");
        });
        break;

      case "vento" :
        this._dinamicImage = AssetImage("imgs/vento.png");
        break;

      case "terra" :
        setState(() {
          this._dinamicImage = AssetImage("imgs/terra.png");
        });
        break;
    }

    if (
        (choiseUser == "fogo" && choiseConfronter == "vento") ||
        (choiseUser == "agua" && choiseConfronter == "fogo") ||
        (choiseUser == "agua" && choiseConfronter == "terra") ||
        (choiseUser == "vento" && choiseConfronter == "agua") ||
        (choiseUser == "vento" && choiseConfronter == "terra") ||
        (choiseUser == "terra" && choiseConfronter == "fogo")
    ) {
      setState(() {
        this._textDinamic = "Seu elemento triunfou, você VENCEU!";
      });
    }
    else if (
        (choiseConfronter == "fogo" && choiseUser == "vento") ||
        (choiseConfronter == "agua" && choiseUser == "fogo") ||
        (choiseConfronter == "agua" && choiseUser == "terra") ||
        (choiseConfronter == "vento" && choiseUser == "agua") ||
        (choiseConfronter == "vento" && choiseUser == "terra") ||
        (choiseConfronter == "terra" && choiseUser == "fogo")
    ) {
      setState(() {
        this._textDinamic = "Seu elemento não prevaleceu, você foi DERROTADO!";
      });
    } else {
      setState(() {
        this._textDinamic = "Houve choque de elementos portanto EMPATE!";
      });
    }

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E L E M E N T A R",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Color.fromARGB(250, 209, 152, 207)
        ),),
        backgroundColor: primeColor,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 16, bottom: 16),
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
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w600,
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

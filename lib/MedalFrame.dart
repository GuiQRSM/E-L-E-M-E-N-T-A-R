import 'package:flutter/material.dart';

class MedalFrame extends StatefulWidget {

  String getInfo;
  MedalFrame(this.getInfo);

  @override
  _MedalFrameState createState() => _MedalFrameState();
}

var primeColor = Color.fromARGB(200, 89, 8, 105);
var supportingColor = Color.fromRGBO(252, 192, 228, 1);

class _MedalFrameState extends State<MedalFrame> {
  @override
  Widget build(BuildContext context) {

    var _dinamicImage;
    switch(widget.getInfo){

      case "gold" :
        _dinamicImage = "Type_Meday/gold.png";
        break;

      case "plate" :
        _dinamicImage = "Type_Meday/plate.png";
        break;

      case "bronze" :
        _dinamicImage = "Type_Meday/bronze.png";
        break;

      case "diamond" :
        _dinamicImage = "Type_Meday/bronze.png";
        break;

    }


    return Scaffold(
      backgroundColor: supportingColor,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                    "-Sua classe-",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: primeColor,
                  letterSpacing: 5,
                ),),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: Image.asset(
                    _dinamicImage,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                child: Text(
                    "GOLD class",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                    letterSpacing: 5,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "Type_Meday/backbutton.png",
                        height: 90,
                      ),
                    ),
                    Text(
                        "VOLTAR",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: primeColor,
                        letterSpacing: 5,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

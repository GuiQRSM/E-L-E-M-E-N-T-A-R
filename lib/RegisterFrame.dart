import 'package:elementar_game/ConfigFrame.dart';
import 'package:elementar_game/LayoutStful.dart';
import 'package:elementar_game/MedalFrame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class RegisterFrame extends StatefulWidget {
  const RegisterFrame({Key? key}) : super(key: key);

  @override
  _RegisterFrameState createState() => _RegisterFrameState();
}

var primeColor = Color.fromARGB(200, 89, 8, 105);

class _RegisterFrameState extends State<RegisterFrame> {

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPhoneNumber = TextEditingController();

  var _choiseCkeck = false;

  var _textMutant = "";

  var supportingColor = Color.fromRGBO(252, 192, 228, 1);

  void _cleanFeld() {
    _controllerEmail.text = "";
    _controllerPhoneNumber.text = "";
  }

  void _bringFrame (){

    var listMedal = ["gold", "plate", "bronze", "diamond"];
    var medalRandom = Random().nextInt(listMedal.length);
    var setInfo = listMedal[medalRandom];

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MedalFrame(setInfo),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      appBar: AppBar(
        title: Text("E L E M E N T A R",
          style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Color.fromARGB(250, 209, 152, 207),
          ),),
        backgroundColor: primeColor,
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 15),
                child: Text(
                  "-s i n g  i n-",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(250, 171, 9, 128),
                  ),),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                  ),
                ),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: primeColor,
                ),
                controller: _controllerEmail,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  labelStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                  ),
                ),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: primeColor,
                ),
                controller: _controllerPhoneNumber,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      _textMutant = "Email: " + _controllerEmail.text +
                      "\nPhoneNumber: " + _controllerPhoneNumber.text;
                      _cleanFeld();
                    });
                  },
                  padding: EdgeInsets.all(18),
                  color: primeColor,
                  child: Text("Register",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: supportingColor,
                    ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 13),
                child: CheckboxListTile(
                    title: Text("Receber notifica????es via e-mail",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: primeColor,
                      ),),
                    activeColor: primeColor,
                    secondary: Icon(Icons.email,
                      color: primeColor,),
                    value: _choiseCkeck,
                    onChanged: (bool? vlr){
                      setState(() {
                        _choiseCkeck = vlr!;
                      });
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "$_textMutant",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                  ),),
              ),
              Padding(
                  padding: EdgeInsets.only(top:62),
                child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LayoutStful(),
                          ),
                      );
                    },
                  color: primeColor,
                child: Text(
                    "Start",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: supportingColor,
                ),),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5),
                child:  RaisedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfigFrame("$_choiseCkeck"),
                        ),
                    );
                  },
                  color: primeColor,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: supportingColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: RaisedButton(
                    onPressed: _bringFrame,
                  color: primeColor,
                  child: Text(
                    "Hall  of Medal",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: supportingColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

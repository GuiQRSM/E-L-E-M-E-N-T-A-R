import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  void _cleanFeld() {
    _controllerEmail.text = "";
    _controllerPhoneNumber.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 15),
                child: Text(
                  "-s i n g  o u t-",
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
                      color: Colors.white,
                    ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 13),
                child: CheckboxListTile(
                    title: Text("Receber notificações via e-mail",
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
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RegisterFrame extends StatefulWidget {
  const RegisterFrame({Key? key}) : super(key: key);

  @override
  _RegisterFrameState createState() => _RegisterFrameState();
}

var primeColor = Color.fromARGB(200, 89, 8, 105);

class _RegisterFrameState extends State<RegisterFrame> {

  TextEditingController _controllerEmail = TextEditingController();

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
        padding: EdgeInsets.all(28),
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 10, bottom: 15),
            child: Text(
              "-s i n g  o u t-",
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
                  fontWeight: FontWeight.w500,
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
          ],
        ),
      ),
    );
  }
}

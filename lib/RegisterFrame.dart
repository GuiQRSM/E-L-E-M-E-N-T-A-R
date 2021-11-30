import 'package:flutter/material.dart';

class RegisterFrame extends StatefulWidget {
  const RegisterFrame({Key? key}) : super(key: key);

  @override
  _RegisterFrameState createState() => _RegisterFrameState();
}

var primeColor = Color.fromARGB(200, 89, 8, 105);

class _RegisterFrameState extends State<RegisterFrame> {
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
        child: Column(
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}

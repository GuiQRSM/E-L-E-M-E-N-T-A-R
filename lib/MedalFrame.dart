import 'package:flutter/material.dart';

class MedalFrame extends StatefulWidget {
  const MedalFrame({Key? key}) : super(key: key);

  @override
  _MedalFrameState createState() => _MedalFrameState();
}

var primeColor = Color.fromARGB(200, 89, 8, 105);
var supportingColor = Color.fromRGBO(252, 192, 228, 1);

class _MedalFrameState extends State<MedalFrame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: supportingColor,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                    "Sua classe",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: primeColor,
                  letterSpacing: 5,
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}

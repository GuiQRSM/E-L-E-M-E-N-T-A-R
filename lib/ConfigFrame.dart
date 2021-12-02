import 'package:flutter/material.dart';

class ConfigFrame extends StatefulWidget {
  const ConfigFrame({Key? key}) : super(key: key);

  @override
  _ConfigFrameState createState() => _ConfigFrameState();
}

var primeColor = Color.fromARGB(200, 89, 8, 105);

class _ConfigFrameState extends State<ConfigFrame> {
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
        child:  SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                    "Configurações Gerais",
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

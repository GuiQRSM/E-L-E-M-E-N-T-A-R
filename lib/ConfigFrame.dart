import 'package:flutter/material.dart';

class ConfigFrame extends StatefulWidget {
  const ConfigFrame({Key? key}) : super(key: key);

  @override
  _ConfigFrameState createState() => _ConfigFrameState();
}

var primeColor = Color.fromARGB(200, 89, 8, 105);

var _switchCongig = false;
var _switchCongig2 = false;

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
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 4, bottom: 8),
                child: Text(
                    "Configurações Gerais",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: primeColor,
                ),),
              ),
              SwitchListTile(
                  title: Text("Conectar seu perfil ao ranking",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                  ),),
                  activeColor: primeColor,
                  secondary: Icon(Icons.table_rows,
                  color: primeColor,),
                  value: _switchCongig,
                  onChanged: (bool? vlr1){
                    setState(() {
                      _switchCongig = vlr1!;
                    });
                  },
              ),
              SwitchListTile(
                  title: Text("Ocultar placares",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: primeColor,
                    ),),
                  activeColor: primeColor,
                  secondary: Icon(Icons.score,
                  color: primeColor,),
                  value: _switchCongig2,
                  onChanged: (bool? vlr2){
                    setState(() {
                      _switchCongig2 = vlr2!;
                    });
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

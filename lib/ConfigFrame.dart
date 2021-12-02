import 'package:flutter/material.dart';

class ConfigFrame extends StatefulWidget {
  const ConfigFrame({Key? key}) : super(key: key);

  @override
  _ConfigFrameState createState() => _ConfigFrameState();
}

var primeColor = Color.fromARGB(200, 89, 8, 105);
var supportingColor = Color.fromRGBO(252, 192, 228, 1);

var _switchCongig = false;
var _switchCongig2 = false;

var _checkConfig = false;
var _checkConfig2 = false;

var _evoValue = 0.0;
var _evoLabel = "";

var _textMutant = "";

class _ConfigFrameState extends State<ConfigFrame> {
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
        child:  SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 4, bottom: 8),
                child: Text(
                    "Configurações Gerais",
                textAlign: TextAlign.center,
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
              CheckboxListTile(
                  title: Text("Exibir que está Online",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: primeColor,
                    ),),
                  activeColor: primeColor,
                  secondary: Icon(Icons.videogame_asset,
                  color: primeColor,),
                  value: _checkConfig,
                  onChanged: (bool? vlrc1){
                    setState(() {
                      _checkConfig = vlrc1!;
                    });
                  },
              ),
              CheckboxListTile(
                  title: Text("Sincronizar com a conta Google",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: primeColor,
                    ),),
                  value: _checkConfig2,
                  activeColor: primeColor,
                  secondary: Icon(Icons.perm_identity_rounded,
                  color: primeColor,),
                  onChanged: (bool? vlrc2){
                    setState(() {
                      _checkConfig2 = vlrc2!;
                    });
                  },
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Nível de Dificulade",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: primeColor,
                  ),
                ),
              ),
              Slider(
                  value: _evoValue,
                  label: _evoLabel,
                  divisions: 9,
                  min: 0,
                  max: 9,
                  activeColor: primeColor,
                  inactiveColor: Colors.deepPurpleAccent,
                  onChanged: (double evovlr){
                    setState(() {
                      _evoValue = evovlr;
                      _evoLabel = "Nível de Dificulade: $evovlr";
                    });
                  },
              ),
              Padding(
                  padding: EdgeInsets.only(top: 14, bottom: 7),
                child: RaisedButton(
                  onPressed: (){
                    setState(() {
                      _textMutant = "Switch 1: $_switchCongig\n"
                                    "Switch 2: $_switchCongig2\n"
                                    "Checkbox 1: $_checkConfig\n"
                                    "Checkbox 2: $_checkConfig2\n"
                                    "Slider: $_evoLabel";
                    });
                  },
                  color: primeColor,
                  child: Text(
                    "Salvar",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: supportingColor,
                    ),),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18),
                child: Text(
                    "$_textMutant",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: primeColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

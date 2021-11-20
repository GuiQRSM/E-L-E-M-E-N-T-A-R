import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class LayoutStful extends StatefulWidget {
  const LayoutStful({Key? key}) : super(key: key);

  @override
  _LayoutStfulState createState() => _LayoutStfulState();
}

const primeColor = Color.fromARGB(200, 255, 178, 102);

//var _dinamicImage = AssetImage("");

class _LayoutStfulState extends State<LayoutStful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E L E M E N T A R",
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: Color.fromARGB(200, 204, 102, 0)
        ),),
        backgroundColor: primeColor,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 5),),
            Text(
                "p o r t a l",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(200, 204, 102, 0),
            ),),
            /*Image(image: _dinamicImage,
            height: 170,),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(

                ),
                GestureDetector(

                  ),
                GestureDetector(

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

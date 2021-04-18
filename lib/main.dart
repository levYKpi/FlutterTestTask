import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Task",
      home: Container(
        child: Center(
          child: Text(
            "Hello App!",
            style: TextStyle(
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  color: Colors.black,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 2.0,
                ),
              ],
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        color: Color(0xffff00ff),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{

}

class MyHomePageState extends State<MyHomePage>{

}

class MyRandomColor{
    Color _color;

    MyRandomColor(Color c){
        this._color = Color(c.hashCode()*0x0ffffff + 0xff000000);
    }

    Color getColor(){
        return this._color;
    }

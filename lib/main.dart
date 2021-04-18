import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Task",
      // home: Container(
      //   child: Center(
      //     child: Text(
      //       "Hello App!",
      //       style: TextStyle(
      //         color: Colors.white,
      //         shadows: <Shadow>[
      //           Shadow(
      //             color: Colors.black,
      //             offset: Offset(4.0, 4.0),
      //             blurRadius: 2.0,
      //           ),
      //         ],
      //         fontStyle: FontStyle.normal,
      //       ),
      //     ),
      //   ),
      //   color: Color(0xffff00ff),
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
    MyHomePage({Key key}) : super(key: key);

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
    MyRandomColor _myRandomColor = MyRandomColor();

    void _getRandomColor(){
        setState((){
            this._myRandomColor.genColor();
        });
    }

    @override
    Widget build(BuildContext context){
        return GestureDetector(
            onTap: (){
                this._getRandomColor();
            } ,
        child: Container(
          child: Center(
            child: Text(
              "Hello App!",
              style: TextStyle(
                color: Colors.white,
                shadows: <Shadow>[
                  Shadow(
                    color: Colors.black,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 10.0,
                  ),
                ],
                fontStyle: FontStyle.normal,
                decoration: TextDecoration.none,
              ),
            ),
          ),
          color: _myRandomColor.getColor(),
      ),
  );
    }
}

class MyRandomColor{
    Color _color;
    Random _random;

    MyRandomColor(){
        this._color = Colors.white;
        this._random = Random();
    }

    Color getColor(){
        return this._color;
    }

    void genColor(){
        this._color = Color.fromARGB(
            0xff,
            this._random.nextInt(0x100),
            this._random.nextInt(0x100),
            this._random.nextInt(0x100),
        );
    }
}

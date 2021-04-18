import 'package:flutter/material.dart';

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
    Color _myColor = Colors.white;

    void _getRandomColor(){
        setState((){
            this._myColor = MyRandomColor(this._myColor).getColor();
        });
    }

    @override
    Widget build(BuildContext context){
        return Container(
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
              ),
            ),
          ),
          color: _myColor,
      );
    }
}

class MyRandomColor{
    Color _color;

    MyRandomColor(Color c){
        this._color = Color(c.hashCode * 0x0ffffff + 0xff000000);
    }

    Color getColor(){
        return this._color;
    }
}

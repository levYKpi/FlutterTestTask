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

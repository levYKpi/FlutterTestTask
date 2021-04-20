import 'package:flutter/material.dart';
import 'myTextContainer.dart';
import 'myRandomColor.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test Task",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyRandomColor _myRandomColor = MyRandomColor();

  void _getRandomColor() {
    setState(() {
      this._myRandomColor.genColor();
    });
  }

  void _setPreviousColor() {
    setState(() {
      this._myRandomColor.setPreviousColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        this._getRandomColor();
      },
      onLongPress: () {
        this._setPreviousColor();
      },
      child: Container(
        color: this._myRandomColor.getColor(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyTextContainer(
              "your color is: ${this._myRandomColor.getColorVaue()}",
              FontStyle.normal,
              18.0,
            ),
            MyTextContainer(
              "Hey there",
              FontStyle.normal,
              32.0,
            ),
            MyTextContainer(
              "color in the list: ${this._myRandomColor.getColorsListLength()}",
              FontStyle.normal,
              18.0,
            ),
          ],
        ),
      ),
    );
  }
}

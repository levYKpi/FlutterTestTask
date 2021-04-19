import 'package:flutter/material.dart';
import 'dart:math';

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyTextContainer(
              "your color is: ${_myRandomColor.getColorVaue()}",
              FontStyle.normal,
              18.0,
              // Colors.white,
              // Colors.black,
              // 10.0,
            ),
            MyTextContainer(
              "Hey there",
              FontStyle.normal,
              32.0,
              // Colors.white,
              // Colors.black,
              // 10.0,
            ),
            MyTextContainer(
              "color in the list: ${_myRandomColor.getColorsListLength()}",
              FontStyle.normal,
              18.0,
              // Colors.white,
              // Colors.black,
              // 10.0,
            ),
          ],
        ),
        color: _myRandomColor.getColor(),
      ),
    );
  }
}

class MyTextContainer extends StatelessWidget {
  String _message;
  FontStyle _fontStyle;
  double _fontSize;
  Color _fontColor;
  Color _shadowColor;
  double _shadow;
  MyTextContainer(String message, FontStyle fontStyle, double fontSize,
      {Color fontColor: Colors.white,
      Color shadowColor: Colors.black,
      double shadow: 10.0}) {
    _message = message;
    _fontStyle = fontStyle;
    _fontSize = fontSize;
    _fontColor = fontColor;
    _shadowColor = shadowColor;
    _shadow = shadow;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _fontSize * 2,
      child: Text(
        _message,
        style: TextStyle(
          color: _fontColor,
          shadows: <Shadow>[
            Shadow(
              color: _shadowColor,
              offset: Offset(0, 0),
              blurRadius: _shadow,
            ),
          ],
          fontStyle: _fontStyle,
          fontSize: _fontSize,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}

class MyRandomColor {
  Color _color;
  Random _random;
  List<Color> _colors;
  int _colorListLength;

  MyRandomColor() {
    this._color = Colors.white;
    this._random = Random();
    this._colors = List<Color>();
    this._colors.add(this._color);
    this._colorListLength = 1;
  }

  Color getColor() {
    return this._color;
  }

  void genColor() {
    this._color = Color.fromARGB(
      0xff,
      this._random.nextInt(0x100),
      this._random.nextInt(0x100),
      this._random.nextInt(0x100),
    );

    this._colors.add(this._color);
    if (this._colorListLength >= 10) {
      this._colors.removeAt(0);
    } else {
      this._colorListLength++;
    }
  }

  void setPreviousColor() {
    if (this._colorListLength > 1) {
      this._colors.removeLast();
      this._colorListLength--;
    }
    this._color = this._colors.last;
  }

  int getColorsListLength() {
    return this._colorListLength;
  }

  List<int> getColorVaue() {
    List<int> list = [
      _color.red,
      _color.green,
      _color.blue,
    ];
    return list;
  }
}

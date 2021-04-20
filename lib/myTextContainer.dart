import 'package:flutter/material.dart';

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
      double shadow: 5.0}) {
    this._message = message;
    this._fontStyle = fontStyle;
    this._fontSize = fontSize;
    this._fontColor = fontColor;
    this._shadowColor = shadowColor;
    this._shadow = shadow;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this._fontSize * 2,
      child: Text(
        this._message,
        style: TextStyle(
          color: this._fontColor,
          fontStyle: this._fontStyle,
          fontSize: this._fontSize,
          decoration: TextDecoration.none,
          shadows: <Shadow>[
            Shadow(
              color: this._shadowColor,
              offset: Offset(0, 0),
              blurRadius: this._shadow,
            ),
          ],
        ),
      ),
    );
  }
}

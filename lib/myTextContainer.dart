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

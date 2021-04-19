import 'package:flutter/material.dart';
import 'dart:math';

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

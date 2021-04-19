// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_task/main.dart';
import 'package:test_task/myRandomColor.dart';

// providing unit test for myRandomColor class
void myRandomColorTest() {
  group("myRandomColor", () {
    var myRandomColor = MyRandomColor();
    Color color;

    //100 times new color
    test("100 times new color", () {
      color = myRandomColor.getColor();
      for (var i = 0; i < 100; i++) {
        myRandomColor.genColor();
        assert(color != myRandomColor.getColor());
        color = myRandomColor.getColor();
      }
    });
    //save previous color
    //save previous 10 colors
    //add 1:10 colors and revert
    // i = 1:10 because we have initial color in the list
    test("add 1:10 colors and revert", () {
      color = myRandomColor.getColor();
      for (var i = 1; i < 10; i++) {
        myRandomColor.genColor();
      }
      for (var i = 1; i < 10; i++) {
        myRandomColor.setPreviousColor();
      }
      assert(color == myRandomColor.getColor());
    });
    //add 11 colors and revert
    test("add 11 colors and revert", () {
      color = myRandomColor.getColor();
      for (var i = 1; i < 11; i++) {
        myRandomColor.genColor();
      }
      for (var i = 1; i < 11; i++) {
        myRandomColor.setPreviousColor();
      }
      assert(color != myRandomColor.getColor());
    });
    //add 1 color and revert
    test("add 1 color and revert", () {
      color = myRandomColor.getColor();
      myRandomColor.genColor();
      myRandomColor.setPreviousColor();
      assert(color == myRandomColor.getColor());
    });
    //add 1 color and revert 10 times
    test("add 1 color and revert", () {
      color = myRandomColor.getColor();
      myRandomColor.genColor();
      for (var i = 0; i < 10; i++) {
        myRandomColor.setPreviousColor();
      }
      assert(color == myRandomColor.getColor());
    });
  });
}

// void myAppTest(){
//     testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//
//     });
// }

void main() {
  myRandomColorTest();
}

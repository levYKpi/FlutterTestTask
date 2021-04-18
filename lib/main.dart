import 'package:flutter/material.dart';

void main() {

}

class MyApp extends StatelessWidget{

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
}

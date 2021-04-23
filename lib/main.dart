import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('CHANGE COLOR')),
          backgroundColor: Colors.indigo,
        ),
        body: Page(),
      ),
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  var colors = [
    Colors.yellowAccent,
    Colors.tealAccent,
    Colors.purple,
    Colors.indigo,
    Colors.red,
    Colors.brown,
    Colors.pink,
    Colors.orange,
    Colors.green,
    Colors.redAccent,
    Colors.grey,
    Colors.blueGrey,
    Colors.greenAccent,
    Colors.amberAccent,
    Colors.lightBlue,
    Colors.deepOrange,
    Colors.deepOrangeAccent,
    Colors.pinkAccent,
    Colors.indigoAccent,
    Colors.lightGreenAccent,
    Colors.teal,
    Colors.lightBlueAccent,
  ];
  var currentColor = Colors.white;
  int noOfTimes = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: currentColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              'Number of Times clicked:$noOfTimes',
              style: TextStyle(fontSize: 30.0, color: Colors.red.shade900),
            ),
          ),
          SizedBox(
            height: 20.0,
            width: double.infinity,
          ),
          TextButton(
            onPressed: () {
              setState(
                () {
                  int a = Random().nextInt(colors.length);
                  currentColor = colors[a];
                  noOfTimes++;
                },
              );
            },
            child: Text(
              'CLICK ME',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30.0),
            ),
          ),
        ],
      ),
    );
  }
}

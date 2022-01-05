import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dicee'),
        backgroundColor: Colors.deepPurple,
      ),
      body: DicePage(),
    ),
  ),);
}

class DicePage extends StatefulWidget {

  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNum = 1;
  int rightDiceNum = 1;
  //const DicePage({Key? key}) : super(key: key);

  void changeDiceFace(){
    setState(() {
      leftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                print('Left button got pressed');
              },
              child: Image.asset('assets/images/dice$leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                print('Right button got pressed');
              },
              child: Image.asset('assets/images/dice$rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}

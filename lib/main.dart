import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 2;
  var rightDiceNumber = 1;

  void rollDice() {
    setState(() => {
          leftDiceNumber = Random().nextInt(6) + 1,
          rightDiceNumber = Random().nextInt(6) + 1
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () => {rollDice()},
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
              child: TextButton(
            onPressed: () => {rollDice()},
            child: Image.asset('images/dice$rightDiceNumber.png'),
          )),
        ],
      ),
    );
  }
}

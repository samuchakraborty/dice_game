import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DiceGame(),
  ));
}

class DiceGame extends StatefulWidget {
  @override
  _DiceGameState createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  // var leftDiceNumber = 3;
  var rightDiceNumber = 1;
  var leftDiceNumber = 1;

  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dice Game'),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          color: Colors.blueGrey,
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                    onPressed: () {
                      changeDiceNumber();
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                    onPressed: () {
                      changeDiceNumber();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

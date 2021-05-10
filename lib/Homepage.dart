import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceimage1;
  AssetImage diceimage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimage1 = one;
      diceimage2 = one;
    });
  }

  dicebutton() {
    int random = (1 + Random().nextInt(6));
    int rand = (1 + Random().nextInt(6));

    AssetImage newimage1;
    AssetImage newimage2;
    switch (random) {
      case 1:
        newimage1 = one;
        break;
      case 2:
        newimage1 = two;
        break;
      case 3:
        newimage1 = three;
        break;
      case 4:
        newimage1 = four;
        break;
      case 5:
        newimage1 = five;
        break;
      case 6:
        newimage1 = six;
        break;
    }
    switch (rand) {
      case 1:
        newimage2 = one;
        break;
      case 2:
        newimage2 = two;
        break;
      case 3:
        newimage2 = three;
        break;
      case 4:
        newimage2 = four;
        break;
      case 5:
        newimage2 = five;
        break;
      case 6:
        newimage2 = six;
        break;
    }
    setState(() {
      diceimage1 = newimage1;
      diceimage2 = newimage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DICE ROLLER'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image(
                    image: diceimage1,
                    width: 100.0,
                    height: 100.0,
                  ),
                  margin: EdgeInsets.only(bottom: 30.0),
                ),
                Image(
                  image: diceimage2,
                  width: 100.0,
                  height: 100.0,
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  child: RaisedButton(
                    color: Colors.yellow,
                    child: Text(
                      'Roll The Dice',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(500.0)),
                    onPressed: dicebutton,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
